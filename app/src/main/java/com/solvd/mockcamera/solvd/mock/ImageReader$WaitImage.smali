.class Lcom/solvd/mock/ImageReader$WaitImage;
.super Ljava/lang/Thread;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solvd/mock/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitImage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solvd/mock/ImageReader;


# direct methods
.method private constructor <init>(Lcom/solvd/mock/ImageReader;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/solvd/mock/ImageReader$WaitImage;->this$0:Lcom/solvd/mock/ImageReader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/solvd/mock/ImageReader;Lcom/solvd/mock/ImageReader$WaitImage-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/solvd/mock/ImageReader$WaitImage;-><init>(Lcom/solvd/mock/ImageReader;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/solvd/mock/ImageReader$WaitImage;->this$0:Lcom/solvd/mock/ImageReader;

    .line 106
    .local v0, "myImageReader":Lcom/solvd/mock/ImageReader;
    :goto_0
    invoke-static {}, Lcom/solvd/mock/ImageReader;->-$$Nest$sfgetimageReader()Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1

    if-nez v1, :cond_0

    .line 108
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_1
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 113
    :cond_0
    iget-object v1, v0, Lcom/solvd/mock/ImageReader;->mListener:Lcom/solvd/mock/ImageReader$OnImageAvailableListener;

    invoke-interface {v1, v0}, Lcom/solvd/mock/ImageReader$OnImageAvailableListener;->onImageAvailable(Lcom/solvd/mock/ImageReader;)V

    .line 114
    return-void
.end method
