.class public Lorg/apache/commons/io/input/BoundedInputStream;
.super Ljava/io/InputStream;
.source "BoundedInputStream.java"


# instance fields
.field private final in:Ljava/io/InputStream;

.field private mark:J

.field private final max:J

.field private pos:J

.field private propagateClose:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 75
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # J

    .line 61
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    .line 64
    iput-wide p2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    .line 65
    iput-object p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    .line 66
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 176
    :cond_0
    return-void
.end method

.method public isPropagateClose()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 195
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 193
    .end local p0    # "this":Lorg/apache/commons/io/input/BoundedInputStream;
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 88
    const/4 v0, -0x1

    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 91
    .local v0, "result":I
    iget-wide v1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    .line 92
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/BoundedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-ltz v4, :cond_0

    iget-wide v6, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    cmp-long v4, v6, v0

    if-ltz v4, :cond_0

    .line 119
    return v5

    .line 121
    :cond_0
    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    int-to-long v2, p3

    iget-wide v6, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    int-to-long v0, p3

    .line 122
    .local v0, "maxRead":J
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    long-to-int v3, v0

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 124
    .local v2, "bytesRead":I
    if-ne v2, v5, :cond_2

    .line 125
    return v5

    .line 128
    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    .line 129
    return v2
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 185
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 183
    .end local p0    # "this":Lorg/apache/commons/io/input/BoundedInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPropagateClose(Z)V
    .locals 0
    .param p1, "propagateClose"    # Z

    .line 229
    iput-boolean p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    .line 230
    return-void
.end method

.method public skip(J)J
    .locals 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    .line 141
    .local v0, "toSkip":J
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 142
    .local v2, "skippedBytes":J
    iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J

    .line 143
    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
