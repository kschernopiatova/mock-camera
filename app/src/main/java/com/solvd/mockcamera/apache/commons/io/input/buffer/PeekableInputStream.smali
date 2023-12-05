.class public Lorg/apache/commons/io/input/buffer/PeekableInputStream;
.super Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;
.source "PeekableInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public peek([B)Z
    .locals 3
    .param p1, "sourceBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const-string v0, "Buffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/io/input/buffer/PeekableInputStream;->bufferSize:I

    if-gt v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/PeekableInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->getCurrentNumberOfBytes()I

    move-result v0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/io/input/buffer/PeekableInputStream;->fillBuffer()V

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/PeekableInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->peek([BII)Z

    move-result v0

    return v0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Peek request size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes exceeds buffer size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/io/input/buffer/PeekableInputStream;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek([BII)Z
    .locals 3
    .param p1, "sourceBuffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const-string v0, "Buffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/io/input/buffer/PeekableInputStream;->bufferSize:I

    if-gt v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/PeekableInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->getCurrentNumberOfBytes()I

    move-result v0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/io/input/buffer/PeekableInputStream;->fillBuffer()V

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/PeekableInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->peek([BII)Z

    move-result v0

    return v0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Peek request size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes exceeds buffer size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/io/input/buffer/PeekableInputStream;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
