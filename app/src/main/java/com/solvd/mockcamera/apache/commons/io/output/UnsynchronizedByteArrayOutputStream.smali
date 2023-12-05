.class public final Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;
.super Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;
.source "UnsynchronizedByteArrayOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .line 47
    invoke-direct {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;-><init>()V

    .line 48
    if-ltz p1, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->needNewBuffer(I)V

    .line 52
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/16 v0, 0x400

    invoke-static {p0, v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V

    .line 134
    .local v0, "output":Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->write(Ljava/io/InputStream;)I

    .line 135
    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->close()V

    .line 135
    return-object v1

    .line 133
    :catchall_0
    move-exception v1

    .end local v0    # "output":Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "size":I
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    .restart local v0    # "output":Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "size":I
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method


# virtual methods
.method public reset()V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->resetImpl()V

    .line 85
    return-void
.end method

.method public size()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArrayImpl()[B

    move-result-object v0

    return-object v0
.end method

.method public toInputStream()Ljava/io/InputStream;
    .locals 1

    .line 141
    sget-object v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toInputStream(Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/InputStream;)I
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->writeImpl(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I

    .line 66
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->writeImpl(I)V

    .line 67
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 56
    if-ltz p2, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    .line 58
    if-nez p3, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->writeImpl([BII)V

    .line 62
    return-void

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "offset=%,d, length=%,d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->writeToImpl(Ljava/io/OutputStream;)V

    .line 90
    return-void
.end method
