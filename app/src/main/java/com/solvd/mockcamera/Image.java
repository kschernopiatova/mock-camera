package com.solvd.mockcamera;

import android.graphics.Rect;
import android.hardware.DataSpace;
import android.hardware.HardwareBuffer;
import android.hardware.SyncFence;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;

public class Image implements AutoCloseable {

    protected boolean mIsImageValid = false;
    private Plane[] planes;
    private int mDataSpace = DataSpace.DATASPACE_UNKNOWN;
    private Rect mCropRect;

    protected Image() {

    }

    private Image(byte[] bytes) {
        planes = new Plane[1];
        planes[0] = new Plane(new ByteBuffer(bytes));
    }

     static Image getImage(String path) {
        File file = new File(path);
        byte[] bytes;
        try {
            bytes = FileUtils.readFileToByteArray(file);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return new Image(bytes);
    }

    public int getFormat() {
        return 0;
    }

    public int getWidth() {
        return 0;
    }

    public int getHeight() {
        return 0;
    }

    public long getTimestamp() {
        return 0L;
    }

    public Plane[] getPlanes() {
        return planes;
    }

    public int getTransform() {
        return 0;
    }

    public int getScalingMode() {
        return 0;
    }

    public int getPlaneCount() {
        return 0;
    }

    public HardwareBuffer getHardwareBuffer() {
        throwISEIfImageIsInvalid();
        return null;
    }

    public SyncFence getFence() throws IOException {
        return null;
    }

    public void setTimestamp(long timestamp) {
        throwISEIfImageIsInvalid();
        return;
    }

    public void setFence(SyncFence fence) {
        throwISEIfImageIsInvalid();
        return;
    }

    public int getDataSpace() {
        throwISEIfImageIsInvalid();
        return mDataSpace;
    }

    public void setDataSpace(int dataSpace) {
        throwISEIfImageIsInvalid();
        mDataSpace = dataSpace;
    }

    public Rect getCropRect() {
        throwISEIfImageIsInvalid();

        if (mCropRect == null) {
            return new Rect(0, 0, getWidth(), getHeight());
        } else {
            return new Rect(mCropRect); // return a copy
        }
    }

    public void setCropRect(Rect cropRect) {
        throwISEIfImageIsInvalid();

        if (cropRect != null) {
            cropRect = new Rect(cropRect);  // make a copy
            if (!cropRect.intersect(0, 0, getWidth(), getHeight())) {
                cropRect.setEmpty();
            }
        }
        mCropRect = cropRect;
    }

    public boolean isAttachable() {
        throwISEIfImageIsInvalid();

        return false;
    }

    Object getOwner() {
        throwISEIfImageIsInvalid();

        return null;
    }

    long getNativeContext() {
        throwISEIfImageIsInvalid();

        return 0;
    }

    @Override
    public void close() {
    }

    public static class Plane {

        private ByteBuffer byteBuffer;

        protected Plane() {
        }

        public Plane(ByteBuffer byteBuffer) {
            this.byteBuffer = byteBuffer;
        }

        public int getRowStride() {
            return 0;
        }

        public int getPixelStride() {
            return 0;
        }

        public ByteBuffer getBuffer() {
            return byteBuffer;
        }
    }

    protected void throwISEIfImageIsInvalid() {
        if (!mIsImageValid) {
            throw new IllegalStateException("Image is already closed");
        }
    }
}
