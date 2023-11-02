public class ImageReader {

    private static final String imgPath = "/storage/emulated/0/Download/phonepicutres-TA.jpg";

    public Image acquireLatestImage() {
        return Image.getImage(imgPath);
    }
}
