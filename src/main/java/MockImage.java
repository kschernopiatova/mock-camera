import org.apache.commons.io.FileUtils;
import java.io.File;
import java.io.IOException;

public class MockImage {

    private final Plane[] planes;

    public MockImage(byte[] bytes) {
        planes = new Plane[1];
        planes[0] = new Plane(new MockByteBuffer(bytes));
    }

    public static MockImage getImage(String path) {
        File file = new File(path);
        byte[] bytes;
        try {
            bytes = FileUtils.readFileToByteArray(file);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return new MockImage(bytes);
    }

    public Plane[] getPlanes() {
        return planes;
    }

    public static class Plane {

        private final MockByteBuffer byteBuffer;

        public Plane(MockByteBuffer byteBuffer) {
            this.byteBuffer = byteBuffer;
        }

        public MockByteBuffer getBuffer() {
            return byteBuffer;
        }
    }
}
