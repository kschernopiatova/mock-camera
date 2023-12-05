.class public abstract Lorg/apache/commons/io/input/ProxyInputStream;
.super Ljava/io/FilterInputStream;
.source "ProxyInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "proxy"    # Ljava/io/InputStream;

    .line 49
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected afterRead(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    return-void
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    .line 138
    const/4 v1, 0x0

    return v1
.end method

.method protected beforeRead(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    new-instance v1, Lorg/apache/commons/io/input/ProxyInputStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/commons/io/input/ProxyInputStream$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/input/ProxyInputStream;)V

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;Lorg/apache/commons/io/function/IOConsumer;)V

    .line 149
    return-void
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    throw p1
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 156
    .end local p0    # "this":Lorg/apache/commons/io/input/ProxyInputStream;
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->beforeRead(I)V

    .line 62
    iget-object v2, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 63
    .local v2, "b":I
    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return v2

    .line 65
    .end local v2    # "b":I
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    .line 67
    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "bts"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->length([B)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->beforeRead(I)V

    .line 81
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 82
    .local v0, "n":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return v0

    .line 84
    .end local v0    # "n":I
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    .line 86
    const/4 v1, -0x1

    return v1
.end method

.method public read([BII)I
    .locals 2
    .param p1, "bts"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->beforeRead(I)V

    .line 102
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 103
    .local v0, "n":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return v0

    .line 105
    .end local v0    # "n":I
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    .line 107
    const/4 v1, -0x1

    return v1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    goto :goto_0

    .line 166
    .end local p0    # "this":Lorg/apache/commons/io/input/ProxyInputStream;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit p0

    return-void

    .line 166
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "ln"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    .line 123
    const-wide/16 v1, 0x0

    return-wide v1
.end method
