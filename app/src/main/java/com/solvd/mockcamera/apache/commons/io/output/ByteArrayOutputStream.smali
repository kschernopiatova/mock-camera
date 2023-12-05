.class public Lorg/apache/commons/io/output/ByteArrayOutputStream;
.super Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;
.source "ByteArrayOutputStream.java"


# direct methods
.method public static synthetic $r8$lambda$b_x95vDRJTYVaIxBKUURRGxO_HQ([BII)Ljava/io/ByteArrayInputStream;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .line 44
    invoke-direct {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;-><init>()V

    .line 45
    if-ltz p1, :cond_0

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 46
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

    .line 122
    const/16 v0, 0x400

    invoke-static {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

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

    .line 150
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    .line 151
    .local v0, "output":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->write(Ljava/io/InputStream;)I

    .line 152
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->close()V

    .line 152
    return-object v1

    .line 150
    :catchall_0
    move-exception v1

    .end local v0    # "output":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "size":I
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    .restart local v0    # "output":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "size":I
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->close()V
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
.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->resetImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 89
    .end local p0    # "this":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 82
    .end local p0    # "this":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteArray()[B
    .locals 1

    monitor-enter p0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArrayImpl()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 163
    .end local p0    # "this":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toInputStream()Ljava/io/InputStream;
    .locals 1

    monitor-enter p0

    .line 158
    :try_start_0
    sget-object v0, Lorg/apache/commons/io/output/ByteArrayOutputStream$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/commons/io/output/ByteArrayOutputStream$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toInputStream(Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 158
    .end local p0    # "this":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(Ljava/io/InputStream;)I
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->writeImpl(Ljava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 77
    .end local p0    # "this":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    .end local p1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write(I)V
    .locals 0
    .param p1, "b"    # I

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->writeImpl(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 71
    .end local p0    # "this":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    .end local p1    # "b":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([BII)V
    .locals 2
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

    .line 62
    if-nez p3, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    monitor-enter p0

    .line 66
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->writeImpl([BII)V

    .line 67
    monitor-exit p0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->writeToImpl(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 94
    .end local p0    # "this":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    .end local p1    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
