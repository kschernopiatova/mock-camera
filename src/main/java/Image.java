import org.apache.commons.io.FileUtils;
import java.io.File;
import java.io.IOException;

public class Image {

    private final Plane[] planes;

    public Image(byte[] bytes) {
        planes = new Plane[1];
        planes[0] = new Plane(new ByteBuffer(bytes));
    }

    public static Image getImage(String path) {
        File file = new File(path);
        byte[] bytes;
        try {
            bytes = FileUtils.readFileToByteArray(file);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return new Image(bytes);
    }

    public Plane[] getPlanes() {
        return planes;
    }

    public static class Plane {

        private final ByteBuffer byteBuffer;

        public Plane(ByteBuffer byteBuffer) {
            this.byteBuffer = byteBuffer;
        }

        public ByteBuffer getBuffer() {
            return byteBuffer;
        }
    }
}
