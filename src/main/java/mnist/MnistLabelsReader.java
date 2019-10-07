package mnist;



import java.io.*;

public class MnistLabelsReader implements AutoCloseable{
    public static final int FILE_MAGIC_NUMBER = 0x00000801;
    private final DataInputStream data;
    public  final int labelsCount;
    private int readCount;

    public static MnistLabelsReader open(String filePath) throws IOException{
        DataInputStream data = openDataStream(filePath);
        if (FILE_MAGIC_NUMBER != data.readInt()){
            throw new RuntimeException("Incorrect magic number");
        }
        int imageCount = data.readInt();
        return new MnistLabelsReader(data, imageCount);
    }

    public static DataInputStream openDataStream(String filePath) throws FileNotFoundException{
        return new DataInputStream(new BufferedInputStream(new FileInputStream(filePath)));
    }

    public MnistLabelsReader(DataInputStream data, int lablesCount) {
        this.data = data;
        this.labelsCount = lablesCount;
        this.readCount = 0;
    }

    public boolean hasNext(){
        return readCount < labelsCount;
    }

    public byte next() throws IOException{
        readCount++;
        return data.readByte();
    }

    public void  close() throws IOException{
        data.close();
    }
}
