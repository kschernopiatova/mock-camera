public class MockImageReader {

    private static final String imgPath = "/storage/emulated/0/Download/phonepicutres-TA.jpg";

    public MockImage acquireLatestImage() {
        return MockImage.getImage(imgPath);
    }
}
