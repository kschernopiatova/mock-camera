package com.solvd.mockcamera;

import java.nio.ByteOrder;

public class ByteBuffer {

    private final byte[] imgSource;
    boolean bigEndian = true;
    boolean nativeByteOrder = false;

    public ByteBuffer(byte[] bytes) {
        this.imgSource = bytes;
    }

    public ByteBuffer get(byte[] bytes) {
        System.arraycopy(imgSource, 0, bytes, 0, bytes.length);
        return this;
    }

    public final ByteBuffer order(ByteOrder bo) {
        bigEndian = (bo == ByteOrder.BIG_ENDIAN);
        nativeByteOrder = false;
        return this;
    }

    public int capacity() {
        return imgSource.length;
    }

    public final int remaining() {
        return imgSource.length;
    }
}
