.class public Lorg/apache/commons/io/output/DeferredFileOutputStream;
.super Lorg/apache/commons/io/output/ThresholdingOutputStream;
.source "DeferredFileOutputStream.java"


# instance fields
.field private closed:Z

.field private currentOutputStream:Ljava/io/OutputStream;

.field private final directory:Ljava/io/File;

.field private memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

.field private outputFile:Ljava/io/File;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/io/File;)V
    .locals 7
    .param p1, "threshold"    # I
    .param p2, "initialBufferSize"    # I
    .param p3, "outputFile"    # Ljava/io/File;

    .line 115
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    .line 116
    if-ltz p2, :cond_0

    .line 119
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial buffer size must be atleast 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 7
    .param p1, "threshold"    # I
    .param p2, "initialBufferSize"    # I
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "suffix"    # Ljava/lang/String;
    .param p5, "directory"    # Ljava/io/File;

    .line 156
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    .line 157
    if-eqz p3, :cond_1

    .line 160
    if-ltz p2, :cond_0

    .line 163
    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial buffer size must be atleast 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Temporary file prefix is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILjava/io/File;)V
    .locals 7
    .param p1, "threshold"    # I
    .param p2, "outputFile"    # Ljava/io/File;

    .line 100
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x400

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    .line 101
    return-void
.end method

.method private constructor <init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V
    .locals 1
    .param p1, "threshold"    # I
    .param p2, "outputFile"    # Ljava/io/File;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "suffix"    # Ljava/lang/String;
    .param p5, "directory"    # Ljava/io/File;
    .param p6, "initialBufferSize"    # I

    .line 178
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ThresholdingOutputStream;-><init>(I)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    .line 179
    iput-object p2, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    .line 180
    iput-object p3, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    .line 181
    iput-object p4, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;

    .line 182
    iput-object p5, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->directory:Ljava/io/File;

    .line 184
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0, p6}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 185
    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    .line 186
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 7
    .param p1, "threshold"    # I
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "directory"    # Ljava/io/File;

    .line 135
    const/4 v2, 0x0

    const/16 v6, 0x400

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    .line 136
    if-eqz p2, :cond_0

    .line 139
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Temporary file prefix is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-super {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->close()V

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    .line 298
    return-void
.end method

.method public getData()[B
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 264
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    return-object v0
.end method

.method protected getStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public isInMemory()Z
    .locals 1

    .line 246
    invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->isThresholdExceeded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected thresholdReached()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->directory:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->forceMkdirParent(Ljava/io/File;)V

    .line 222
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 224
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    nop

    .line 229
    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 231
    return-void

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 227
    throw v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->isInMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 320
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 321
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 324
    .end local v0    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 320
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lorg/apache/commons/io/output/DeferredFileOutputStream;
    .end local p1    # "out":Ljava/io/OutputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 322
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lorg/apache/commons/io/output/DeferredFileOutputStream;
    .restart local p1    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    .line 314
    .end local v0    # "fis":Ljava/io/FileInputStream;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream not closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
