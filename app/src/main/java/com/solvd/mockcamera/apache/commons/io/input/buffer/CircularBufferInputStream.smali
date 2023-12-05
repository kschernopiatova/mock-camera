.class public Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;
.super Ljava/io/InputStream;
.source "CircularBufferInputStream.java"


# instance fields
.field protected final buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

.field protected final bufferSize:I

.field private eofSeen:Z

.field protected final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 62
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    if-lez p2, :cond_0

    .line 49
    const-string v0, "inputStream"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->in:Ljava/io/InputStream;

    .line 50
    new-instance v0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-direct {v0, p2}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    .line 51
    iput p2, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->bufferSize:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->eofSeen:Z

    .line 53
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    .line 136
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->eofSeen:Z

    .line 138
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->clear()V

    .line 139
    return-void
.end method

.method protected fillBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-boolean v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->eofSeen:Z

    if-eqz v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->getSpace()I

    move-result v0

    .line 75
    .local v0, "space":I
    new-array v1, v0, [B

    .line 76
    .local v1, "buf":[B
    :goto_0
    if-lez v0, :cond_3

    .line 77
    iget-object v2, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->in:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 78
    .local v2, "res":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 79
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->eofSeen:Z

    .line 80
    return-void

    .line 81
    :cond_1
    if-lez v2, :cond_2

    .line 82
    iget-object v4, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v4, v1, v3, v2}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->add([BII)V

    .line 83
    sub-int/2addr v0, v2

    .line 85
    .end local v2    # "res":I
    :cond_2
    goto :goto_0

    .line 86
    :cond_3
    return-void
.end method

.method protected haveBytes(I)Z
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->getCurrentNumberOfBytes()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->fillBuffer()V

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->hasBytes()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->haveBytes(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, -0x1

    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->read()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "targetBuffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    const-string v0, "Buffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    if-ltz p2, :cond_3

    .line 121
    if-ltz p3, :cond_2

    .line 124
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->haveBytes(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, -0x1

    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->getCurrentNumberOfBytes()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 128
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 129
    add-int v2, p2, v1

    iget-object v3, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v3}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->read()B

    move-result v3

    aput-byte v3, p1, v2

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 122
    .end local v0    # "result":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
