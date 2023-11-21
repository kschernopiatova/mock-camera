.class public LImage;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LImage$Plane;
    }
.end annotation


# instance fields
.field private final planes:[LImage$Plane;


# direct methods
.method public constructor <init>([B)V
    .registers 6
    .param p1, "bytes"    # [B

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [LImage$Plane;

    iput-object v0, p0, LImage;->planes:[LImage$Plane;

    .line 11
    iget-object v0, p0, LImage;->planes:[LImage$Plane;

    const/4 v1, 0x0

    new-instance v2, LImage$Plane;

    new-instance v3, LByteBuffer;

    invoke-direct {v3, p1}, LByteBuffer;-><init>([B)V

    invoke-direct {v2, v3}, LImage$Plane;-><init>(LByteBuffer;)V

    aput-object v2, v0, v1

    .line 12
    return-void
.end method

.method public static getImage(Ljava/lang/String;)LImage;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .local v2, "file":Ljava/io/File;
    :try_start_5
    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_f

    move-result-object v0

    .line 22
    .local v0, "bytes":[B
    new-instance v3, LImage;

    invoke-direct {v3, v0}, LImage;-><init>([B)V

    return-object v3

    .line 19
    .end local v0    # "bytes":[B
    :catch_f
    move-exception v1

    .line 20
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public getPlanes()[LImage$Plane;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, LImage;->planes:[LImage$Plane;

    return-object v0
.end method
