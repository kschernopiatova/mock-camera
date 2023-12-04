package com.solvd.mockcamera;

import android.graphics.ImageFormat;
import android.hardware.camera2.MultiResolutionImageReader;
import android.os.Handler;
import android.view.Surface;

import java.util.concurrent.Executor;

public class ImageReader {

    private static final String imgPath = "/storage/emulated/0/Download/phonepicutres-TA.jpeg";
    private static android.media.ImageReader imageReader = android.media.ImageReader.newInstance(640, 480, ImageFormat.JPEG, 1);

    protected OnImageAvailableListener mListener;
    private Surface mSurface;

    public ImageReader() {
        WaitImage waitImage = new WaitImage();
        waitImage.setDaemon(true);
        waitImage.start();
    }

    public static ImageReader newInstance(int width, int height, int format, int maxImages, MultiResolutionImageReader parent) {
        imageReader = android.media.ImageReader.newInstance(width, height, format, maxImages);
        return new ImageReader();
    }

    public static ImageReader newInstance(int width, int height, int format, int maxImages, long usage) {
        imageReader = android.media.ImageReader.newInstance(width, height, format, maxImages, usage);
        return new ImageReader();

    }

    public static ImageReader newInstance(int width, int height, int format, int maxImages) {
        imageReader = android.media.ImageReader.newInstance(width, height, format, maxImages);
        return new ImageReader();
    }

    public int getWidth() {
        return imageReader.getWidth();
    }

    public int getHeight() {
        return imageReader.getHeight();
    }

    public int getImageFormat() {
        return imageReader.getImageFormat();
    }

    public int getMaxImages() {
        return imageReader.getMaxImages();
    }

    public Surface getSurface() {
        mSurface = imageReader.getSurface();
        return mSurface;
    }

    public Image acquireLatestImage() {
        return acquireNextImage();
    }

    public Image acquireNextImage() {
        return Image.getImage(imgPath);
    }

    public void close() {
        imageReader.close();
    }

    public void discardFreeBuffers() {
        imageReader.discardFreeBuffers();
    }

    public interface OnImageAvailableListener {
        void onImageAvailable(ImageReader reader);
    }

    public void setOnImageAvailableListener(OnImageAvailableListener listener, Handler handler) {
        mListener = listener;
    }

    public void setOnImageAvailableListenerWithExecutor(OnImageAvailableListener listener, Executor executor) {
        mListener = listener;
    }

    private class WaitImage extends Thread {

        @Override
        public void run() {
            ImageReader myImageReader = ImageReader.this;
            while (imageReader.acquireLatestImage() == null) {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            myImageReader.mListener.onImageAvailable(myImageReader);
        }

    }
}
