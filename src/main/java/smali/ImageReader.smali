.class public LImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"


# static fields
.field private static final imgPath:Ljava/lang/String; = "/storage/emulated/0/Download/phonepicutres-TA.jpg"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireLatestImage()LImage;
    .registers 2

    .prologue
    .line 6
    const-string v0, "/storage/emulated/0/Download/phonepicutres-TA.jpg"

    invoke-static {v0}, LImage;->getImage(Ljava/lang/String;)LImage;

    move-result-object v0

    return-object v0
.end method
