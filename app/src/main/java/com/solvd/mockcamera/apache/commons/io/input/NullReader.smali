.class public Lorg/apache/commons/io/input/NullReader;
.super Ljava/io/Reader;
.source "NullReader.java"


# instance fields
.field private eof:Z

.field private mark:J

.field private final markSupported:Z

.field private position:J

.field private readlimit:J

.field private final size:J

.field private final throwEofException:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 84
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/io/input/NullReader;-><init>(JZZ)V

    .line 85
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "size"    # J

    .line 94
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/NullReader;-><init>(JZZ)V

    .line 95
    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 2
    .param p1, "size"    # J
    .param p3, "markSupported"    # Z
    .param p4, "throwEofException"    # Z

    .line 108
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 109
    iput-wide p1, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    .line 110
    iput-boolean p3, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    .line 111
    iput-boolean p4, p0, Lorg/apache/commons/io/input/NullReader;->throwEofException:Z

    .line 112
    return-void
.end method

.method private doEndOfFile()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    .line 331
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->throwEofException:Z

    if-nez v0, :cond_0

    .line 334
    const/4 v0, -0x1

    return v0

    .line 332
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 142
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 143
    return-void
.end method

.method public getPosition()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 154
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    if-eqz v0, :cond_0

    .line 157
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 158
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 155
    .end local p0    # "this":Lorg/apache/commons/io/input/NullReader;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    return v0
.end method

.method protected processChar()I
    .locals 1

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method protected processChars([CII)V
    .locals 0
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 319
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-nez v0, :cond_1

    .line 186
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 187
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result v0

    return v0

    .line 189
    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 190
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullReader;->processChar()I

    move-result v0

    return v0

    .line 184
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([C)I
    .locals 2
    .param p1, "chars"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/NullReader;->read([CII)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 6
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-nez v0, :cond_2

    .line 227
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 228
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result v0

    return v0

    .line 230
    :cond_0
    int-to-long v4, p3

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 231
    move v4, p3

    .line 232
    .local v4, "returnLength":I
    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    .line 233
    sub-long/2addr v0, v2

    long-to-int v0, v0

    sub-int v4, p3, v0

    .line 234
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 236
    :cond_1
    invoke-virtual {p0, p1, p2, v4}, Lorg/apache/commons/io/input/NullReader;->processChars([CII)V

    .line 237
    return v4

    .line 225
    .end local v4    # "returnLength":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 250
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    if-eqz v0, :cond_2

    .line 253
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 256
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 261
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 257
    .end local p0    # "this":Lorg/apache/commons/io/input/NullReader;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked position ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "numberOfChars"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-nez v0, :cond_2

    .line 281
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 282
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 284
    :cond_0
    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 285
    move-wide v4, p1

    .line 286
    .local v4, "returnLength":J
    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    .line 287
    sub-long/2addr v0, v2

    sub-long v4, p1, v0

    .line 288
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 290
    :cond_1
    return-wide v4

    .line 279
    .end local v4    # "returnLength":J
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Skip after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
