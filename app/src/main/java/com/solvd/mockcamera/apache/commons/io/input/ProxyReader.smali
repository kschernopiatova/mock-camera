.class public abstract Lorg/apache/commons/io/input/ProxyReader;
.super Ljava/io/FilterReader;
.source "ProxyReader.java"


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "proxy"    # Ljava/io/Reader;

    .line 46
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 48
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

    .line 249
    return-void
.end method

.method protected beforeRead(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
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

    .line 261
    throw p1
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    goto :goto_0

    .line 179
    .end local p0    # "this":Lorg/apache/commons/io/input/ProxyReader;
    .end local p1    # "idx":I
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 181
    .restart local p1    # "idx":I
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    .end local p1    # "idx":I
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

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

    .line 58
    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 59
    iget-object v2, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v2

    .line 60
    .local v2, "c":I
    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return v2

    .line 62
    .end local v2    # "c":I
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 64
    return v1
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 2
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 119
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    move-result v0

    .line 120
    .local v0, "n":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return v0

    .line 122
    .end local v0    # "n":I
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 124
    const/4 v1, -0x1

    return v1
.end method

.method public read([C)I
    .locals 2
    .param p1, "chr"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->length([C)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 78
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->read([C)I

    move-result v0

    .line 79
    .local v0, "n":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return v0

    .line 81
    .end local v0    # "n":I
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 83
    const/4 v1, -0x1

    return v1
.end method

.method public read([CII)I
    .locals 2
    .param p1, "chr"    # [C
    .param p2, "st"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 99
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 100
    .local v0, "n":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return v0

    .line 102
    .end local v0    # "n":I
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 104
    const/4 v1, -0x1

    return v1
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 155
    const/4 v1, 0x0

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

    .line 193
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    goto :goto_0

    .line 192
    .end local p0    # "this":Lorg/apache/commons/io/input/ProxyReader;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit p0

    return-void

    .line 192
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

    .line 137
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 140
    const-wide/16 v1, 0x0

    return-wide v1
.end method
