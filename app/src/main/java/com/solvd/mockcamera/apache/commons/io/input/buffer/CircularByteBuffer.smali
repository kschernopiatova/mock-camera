.class public Lorg/apache/commons/io/input/buffer/CircularByteBuffer;
.super Ljava/lang/Object;
.source "CircularByteBuffer.java"


# instance fields
.field private final buffer:[B

.field private currentNumberOfBytes:I

.field private endOffset:I

.field private startOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;-><init>(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "pSize"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 44
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    .line 45
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 46
    return-void
.end method


# virtual methods
.method public add(B)V
    .locals 3
    .param p1, "value"    # B

    .line 125
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 128
    iget v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    aput-byte p1, v1, v2

    .line 129
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 130
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    array-length v0, v1

    if-ne v2, v0, :cond_0

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    .line 133
    :cond_0
    return-void

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No space available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add([BII)V
    .locals 4
    .param p1, "targetBuffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 187
    const-string v0, "Buffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    if-ltz p2, :cond_4

    array-length v0, p1

    if-ge p2, v0, :cond_4

    .line 191
    if-ltz p3, :cond_3

    .line 194
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_2

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 198
    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 199
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    array-length v1, v1

    if-ne v2, v1, :cond_0

    .line 200
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 204
    return-void

    .line 195
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No space available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 262
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    .line 263
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 264
    return-void
.end method

.method public getCurrentNumberOfBytes()I
    .locals 1

    .line 254
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    return v0
.end method

.method public getSpace()I
    .locals 2

    .line 245
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hasBytes()Z
    .locals 1

    .line 236
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpace()Z
    .locals 2

    .line 215
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpace(I)Z
    .locals 2
    .param p1, "count"    # I

    .line 227
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peek([BII)Z
    .locals 6
    .param p1, "sourceBuffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 151
    const-string v0, "Buffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    if-ltz p2, :cond_5

    array-length v0, p1

    if-ge p2, v0, :cond_5

    .line 155
    if-ltz p3, :cond_4

    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v0, v0

    if-gt p3, v0, :cond_4

    .line 158
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    const/4 v1, 0x0

    if-ge p3, v0, :cond_0

    .line 159
    return v1

    .line 161
    :cond_0
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 162
    .local v0, "localOffset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_3

    .line 163
    iget-object v3, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    aget-byte v4, v3, v0

    add-int v5, v2, p2

    aget-byte v5, p1, v5

    if-eq v4, v5, :cond_1

    .line 164
    return v1

    .line 166
    :cond_1
    add-int/lit8 v0, v0, 0x1

    array-length v3, v3

    if-ne v0, v3, :cond_2

    .line 167
    const/4 v0, 0x0

    .line 162
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v2    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 156
    .end local v0    # "localOffset":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()B
    .locals 4

    .line 64
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    if-lez v0, :cond_1

    .line 67
    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    aget-byte v3, v1, v2

    .line 68
    .local v3, "b":B
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 69
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    array-length v0, v1

    if-ne v2, v0, :cond_0

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 72
    :cond_0
    return v3

    .line 65
    .end local v3    # "b":B
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No bytes available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)V
    .locals 6
    .param p1, "targetBuffer"    # [B
    .param p2, "targetOffset"    # I
    .param p3, "length"    # I

    .line 90
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    if-ltz p2, :cond_5

    array-length v0, p1

    if-ge p2, v0, :cond_5

    .line 94
    if-ltz p3, :cond_4

    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v0, v0

    if-gt p3, v0, :cond_4

    .line 97
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 102
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    if-lt v0, p3, :cond_2

    .line 106
    move v0, p2

    .line 107
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 108
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "offset":I
    .local v2, "offset":I
    iget-object v3, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    iget v4, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    aget-byte v5, v3, v4

    aput-byte v5, p1, v0

    .line 109
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 110
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    array-length v0, v3

    if-ne v4, v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    .end local v2    # "offset":I
    .restart local v0    # "offset":I
    :cond_1
    return-void

    .line 103
    .end local v0    # "offset":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently, there are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in the buffer, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The supplied byte array contains only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but offset, and length would require "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
