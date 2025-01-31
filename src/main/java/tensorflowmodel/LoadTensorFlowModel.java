package tensorflowmodel;

import mnist.MnistNumber;
import mnist.MnistReader;
import org.tensorflow.SavedModelBundle;
import org.tensorflow.Session;
import org.tensorflow.Tensor;
import org.tensorflow.TensorFlow;
import sun.util.logging.resources.logging;

import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.Arrays;
import java.util.List;

public class LoadTensorFlowModel {
    public static void main(String[] args) throws IOException{
        new LoadTensorFlowModel().run();
    }

    private void run() throws IOException{
        List<MnistNumber> testSet = MnistReader.readTestSet("MNIST_data");
        System.out.println(TensorFlow.version());
        try(SavedModelBundle b = SavedModelBundle.load("model","server")){
            Session s = b.session();
            int cp = 0;
            for(int i = 0; i < testSet.size(); i++){
                FloatBuffer fb = FloatBuffer.allocate(784);
                for (byte bt:testSet.get(i).image.data){
                    fb.put((bt & 0xFF)/255.0f);
                }
                fb.rewind();

                float[] keep_prob_array = new float[1024];
                Arrays.fill(keep_prob_array, 1f);

                Tensor x = Tensor.create(new long[]{784}, fb);
                Tensor keep_prob = Tensor.create(new long[]{1,1024},FloatBuffer.wrap(keep_prob_array));

                float [][] matrix = s.runner()
                        .feed("X",x)
                        .feed("keep_prob", keep_prob)
                        .fetch("y_conv")
                        .run()
                        .get(0)
                        .copyTo(new float[1][10]);

                float maxVal = matrix[0][0];
                int predict = 0;
                for (int p=1; p < matrix[0].length; p++){
                    float val = matrix[0][p];
                    if (val > maxVal){
                        predict = p;
                        maxVal = val;
                    }
                }
                if (predict == testSet.get(i).label){
                    cp ++;
                }
            }
            System.out.println("XXX");
            System.out.println(cp);
            System.out.println(((float)cp)/((float)testSet.size()));
        }
    }
}
