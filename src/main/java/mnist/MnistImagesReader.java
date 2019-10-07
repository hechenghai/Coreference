package mnist;

import java.io.*;

public class MnistImagesReader implements AutoCloseable{
    public static final int FILE_MAGIC_NUMBER = 0x00000803;
    private final DataInputStream data;
    public  final int imageCount;
    private final Size size;
    private int readCount;

    public static MnistImagesReader open(String filePath) throws IOException{
        DataInputStream data = openDataStream(filePath);
        if (FILE_MAGIC_NUMBER != data.readInt()){
            throw new RuntimeException("Incorrect magic number");
        }
        int imageCount = data.readInt();
        int width = data.readInt();
        int height = data.readInt();
        return new MnistImagesReader(data, imageCount, new Size(width,height));
    }

    public static DataInputStream openDataStream(String filePath) throws FileNotFoundException{
        return new DataInputStream(new BufferedInputStream(new FileInputStream(filePath)));
    }

    public MnistImagesReader(DataInputStream data, int imageCount, Size size) {
        this.data = data;
        this.imageCount = imageCount;
        this.size = size;
        this.readCount = 0;
    }

    public boolean hasNext(){
        return readCount < imageCount;
    }

    public Image next() throws IOException{
        byte[] array = new byte[size.count()];
        if (size.count() != data.read(array)){
            throw new IOException("Unexpected end of file.");
        }
        readCount++;
        return new Image(size,array);
    }

    public void  close() throws IOException{
        data.close();
    }
}
