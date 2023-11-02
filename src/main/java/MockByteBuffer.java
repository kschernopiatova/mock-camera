public class MockByteBuffer {

    private byte[] imgSource;

    public MockByteBuffer(byte[] bytes) {
        this.imgSource = bytes;
    }

    public MockByteBuffer get(byte[] bytes) {
        System.arraycopy(imgSource, 0, bytes, 0, bytes.length);
        return this;
    }

    public int capacity() {
        return imgSource.length;
    }
}
