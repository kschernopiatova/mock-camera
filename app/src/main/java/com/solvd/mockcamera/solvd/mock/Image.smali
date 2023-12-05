.class public Lcom/solvd/mock/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/solvd/mock/Image$Plane;
    }
.end annotation


# instance fields
.field private mCropRect:Landroid/graphics/Rect;

.field private mDataSpace:I

.field protected mIsImageValid:Z

.field private planes:[Lcom/solvd/mock/Image$Plane;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/solvd/mock/Image;->mIsImageValid:Z

    .line 17
    iput v0, p0, Lcom/solvd/mock/Image;->mDataSpace:I

    .line 22
    return-void
.end method

.method private constructor <init>([B)V
    .locals 4
    .param p1, "bytes"    # [B

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/solvd/mock/Image;->mIsImageValid:Z

    .line 17
    iput v0, p0, Lcom/solvd/mock/Image;->mDataSpace:I

    .line 25
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/solvd/mock/Image$Plane;

    iput-object v1, p0, Lcom/solvd/mock/Image;->planes:[Lcom/solvd/mock/Image$Plane;

    .line 26
    new-instance v2, Lcom/solvd/mock/Image$Plane;

    new-instance v3, Lcom/solvd/mock/ByteBuffer;

    invoke-direct {v3, p1}, Lcom/solvd/mock/ByteBuffer;-><init>([B)V

    invoke-direct {v2, v3}, Lcom/solvd/mock/Image$Plane;-><init>(Lcom/solvd/mock/ByteBuffer;)V

    aput-object v2, v1, v0

    .line 27
    return-void
.end method

.method static getImage(Ljava/lang/String;)Lcom/solvd/mock/Image;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .local v1, "bytes":[B
    nop

    .line 37
    new-instance v2, Lcom/solvd/mock/Image;

    invoke-direct {v2, v1}, Lcom/solvd/mock/Image;-><init>([B)V

    return-object v2

    .line 34
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 143
    return-void
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 4

    .line 102
    invoke-virtual {p0}, Lcom/solvd/mock/Image;->throwISEIfImageIsInvalid()V

    .line 104
    iget-object v0, p0, Lcom/solvd/mock/Image;->mCropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/solvd/mock/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/solvd/mock/Image;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/solvd/mock/Image;->mCropRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getDataSpace()I
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/solvd/mock/Image;->throwISEIfImageIsInvalid()V

    .line 93
    iget v0, p0, Lcom/solvd/mock/Image;->mDataSpace:I

    return v0
.end method

.method public getFence()Landroid/hardware/SyncFence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/solvd/mock/Image;->throwISEIfImageIsInvalid()V

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method getNativeContext()J
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/solvd/mock/Image;->throwISEIfImageIsInvalid()V

    .line 138
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getOwner()Ljava/lang/Object;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/solvd/mock/Image;->throwISEIfImageIsInvalid()V

    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaneCount()I
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getPlanes()[Lcom/solvd/mock/Image$Plane;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/solvd/mock/Image;->planes:[Lcom/solvd/mock/Image$Plane;

    return-object v0
.end method

.method public getScalingMode()I
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransform()I
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public isAttachable()Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/solvd/mock/Image;->throwISEIfImageIsInvalid()V

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .line 112
    invoke-virtual {p0}, Lcom/solvd/mock/Image;->throwISEIfImageIsInvalid()V

    .line 114
    if-eqz p1, :cond_0

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 116
    invoke-virtual {p0}, Lcom/solvd/mock/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/solvd/mock/Image;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/solvd/mock/Image;->mCropRect:Landroid/graphics/Rect;

    .line 121
    return-void
.end method

.method public setDataSpace(I)V
    .locals 0
    .param p1, "dataSpace"    # I

    .line 97
    invoke-virtual {p0}, Lcom/solvd/mock/Image;->throwISEIfImageIsInvalid()V

    .line 98
    iput p1, p0, Lcom/solvd/mock/Image;->mDataSpace:I

    .line 99
    return-void
.end method

.method public setFence(Landroid/hardware/SyncFence;)V
    .locals 0
    .param p1, "fence"    # Landroid/hardware/SyncFence;

    .line 87
    invoke-virtual {p0}, Lcom/solvd/mock/Image;->throwISEIfImageIsInvalid()V

    .line 88
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 82
    invoke-virtual {p0}, Lcom/solvd/mock/Image;->throwISEIfImageIsInvalid()V

    .line 83
    return-void
.end method

.method protected throwISEIfImageIsInvalid()V
    .locals 2

    .line 170
    iget-boolean v0, p0, Lcom/solvd/mock/Image;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 173
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
