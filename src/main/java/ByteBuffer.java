public class ByteBuffer {

    private byte[] imgSource;

    public ByteBuffer(byte[] bytes) {
        this.imgSource = bytes;
    }

    public ByteBuffer get(byte[] bytes) {
        System.arraycopy(imgSource, 0, bytes, 0, bytes.length);
        return this;
    }

    public int capacity() {
        return imgSource.length;
    }
}
