.class public Lcom/solvd/mock/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/solvd/mock/ImageReader$WaitImage;,
        Lcom/solvd/mock/ImageReader$OnImageAvailableListener;
    }
.end annotation


# static fields
.field private static imageReader:Landroid/media/ImageReader; = null

.field private static final imgPath:Ljava/lang/String; = "/storage/emulated/0/Download/phonepicutres-TA.jpeg"


# instance fields
.field protected mListener:Lcom/solvd/mock/ImageReader$OnImageAvailableListener;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static bridge synthetic -$$Nest$sfgetimageReader()Landroid/media/ImageReader;
    .locals 1

    sget-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    const/16 v0, 0x280

    const/16 v1, 0x1e0

    const/16 v2, 0x100

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    sput-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/solvd/mock/ImageReader$WaitImage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/solvd/mock/ImageReader$WaitImage;-><init>(Lcom/solvd/mock/ImageReader;Lcom/solvd/mock/ImageReader$WaitImage-IA;)V

    .line 20
    .local v0, "waitImage":Lcom/solvd/mock/ImageReader$WaitImage;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/solvd/mock/ImageReader$WaitImage;->setDaemon(Z)V

    .line 21
    invoke-virtual {v0}, Lcom/solvd/mock/ImageReader$WaitImage;->start()V

    .line 22
    return-void
.end method

.method public static newInstance(IIII)Lcom/solvd/mock/ImageReader;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I

    .line 36
    invoke-static {p0, p1, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    sput-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    .line 37
    new-instance v0, Lcom/solvd/mock/ImageReader;

    invoke-direct {v0}, Lcom/solvd/mock/ImageReader;-><init>()V

    return-object v0
.end method

.method public static newInstance(IIIIJ)Lcom/solvd/mock/ImageReader;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I
    .param p4, "usage"    # J

    .line 30
    invoke-static/range {p0 .. p5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v0

    sput-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    .line 31
    new-instance v0, Lcom/solvd/mock/ImageReader;

    invoke-direct {v0}, Lcom/solvd/mock/ImageReader;-><init>()V

    return-object v0
.end method

.method public static newInstance(IIIILandroid/hardware/camera2/MultiResolutionImageReader;)Lcom/solvd/mock/ImageReader;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I
    .param p4, "parent"    # Landroid/hardware/camera2/MultiResolutionImageReader;

    .line 25
    invoke-static {p0, p1, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    sput-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    .line 26
    new-instance v0, Lcom/solvd/mock/ImageReader;

    invoke-direct {v0}, Lcom/solvd/mock/ImageReader;-><init>()V

    return-object v0
.end method


# virtual methods
.method public acquireLatestImage()Lcom/solvd/mock/Image;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/solvd/mock/ImageReader;->acquireNextImage()Lcom/solvd/mock/Image;

    move-result-object v0

    return-object v0
.end method

.method public acquireNextImage()Lcom/solvd/mock/Image;
    .locals 1

    .line 78
    const-string v0, "/storage/emulated/0/Download/phonepicutres-TA.jpeg"

    invoke-static {v0}, Lcom/solvd/mock/Image;->getImage(Ljava/lang/String;)Lcom/solvd/mock/Image;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 82
    sget-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 83
    return-void
.end method

.method public discardFreeBuffers()V
    .locals 1

    .line 86
    sget-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->discardFreeBuffers()V

    .line 87
    return-void
.end method

.method public getDataSpace()I
    .locals 1

    .line 57
    sget-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getDataSpace()I

    move-result v0

    return v0
.end method

.method public getHardwareBufferFormat()I
    .locals 1

    .line 53
    sget-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHardwareBufferFormat()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 45
    sget-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .line 49
    sget-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v0

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    .line 61
    sget-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v0

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 69
    sget-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/solvd/mock/ImageReader;->mSurface:Landroid/view/Surface;

    .line 70
    return-object v0
.end method

.method public getUsage()J
    .locals 2

    .line 65
    sget-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getUsage()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 41
    sget-object v0, Lcom/solvd/mock/ImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    return v0
.end method

.method public setOnImageAvailableListener(Lcom/solvd/mock/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Lcom/solvd/mock/ImageReader$OnImageAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/solvd/mock/ImageReader;->mListener:Lcom/solvd/mock/ImageReader$OnImageAvailableListener;

    .line 95
    return-void
.end method

.method public setOnImageAvailableListenerWithExecutor(Lcom/solvd/mock/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "listener"    # Lcom/solvd/mock/ImageReader$OnImageAvailableListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 98
    iput-object p1, p0, Lcom/solvd/mock/ImageReader;->mListener:Lcom/solvd/mock/ImageReader$OnImageAvailableListener;

    .line 99
    return-void
.end method
