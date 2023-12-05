package com.solvd.mockcamera;

import java.nio.ByteOrder;

public class ByteBuffer {

    private final byte[] imgSource;
    boolean bigEndian = true;
    boolean nativeByteOrder = false;
    int counter = 0;

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

    public static ByteBuffer wrap(byte[] array) {
        return new ByteBuffer(array);
    }

    public static ByteBuffer wrap(byte[] array, int offset, int length) {
        return new ByteBuffer(array);
    }

    public int capacity() {
        return imgSource.length;
    }

    public final int remaining() {
        return imgSource.length;
    }

    public ByteBuffer slice() {
        return this;
    }

    public ByteBuffer duplicate() {
        return this;
    }

    public ByteBuffer asReadOnlyBuffer() {
        return this;
    }

    public byte get() {
        return imgSource[counter++];
    }

    public ByteBuffer put(byte b) {
        imgSource[counter++] = b;
        return this;
    }

    public byte get(int index) {
        return imgSource[index];
    }

    public ByteBuffer put(int index, byte b) {
        imgSource[index] = b;
        return this;
    }

    public ByteBuffer get(byte[] dst, int offset, int length) {
        return get(dst);
    }

    public ByteBuffer put(ByteBuffer src) {
        src = this;
        return src;
    }

    public ByteBuffer put(byte[] src, int offset, int length) {
        return this;
    }

    public final ByteBuffer put(byte[] src) {
        return put(src, 0, src.length);
    }

    public final boolean hasArray() {
        return imgSource.length != 0;
    }

    public final byte[] array() {
        return imgSource;
    }

    public ByteBuffer putInt(int value) {
        return this;
    }

}
