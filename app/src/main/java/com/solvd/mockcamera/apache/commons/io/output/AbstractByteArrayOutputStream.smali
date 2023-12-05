.class public abstract Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "AbstractByteArrayOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;
    }
.end annotation


# static fields
.field static final DEFAULT_SIZE:I = 0x400

.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private final buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field protected count:I

.field private currentBuffer:[B

.field private currentBufferIndex:I

.field private filledBufferSum:I

.field private reuseBuffers:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->reuseBuffers:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    return-void
.end method

.method protected needNewBuffer(I)V
    .locals 3
    .param p1, "newcount"    # I

    .line 86
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBufferIndex:I

    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 88
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    .line 90
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBufferIndex:I

    .line 91
    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    goto :goto_1

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    if-nez v0, :cond_1

    .line 96
    move v0, p1

    .line 97
    .local v0, "newBufferSize":I
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    goto :goto_0

    .line 99
    .end local v0    # "newBufferSize":I
    :cond_1
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 102
    .restart local v0    # "newBufferSize":I
    iget v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    iget-object v2, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    .line 105
    :goto_0
    iget v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBufferIndex:I

    .line 106
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    .line 107
    iget-object v2, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v0    # "newBufferSize":I
    :goto_1
    return-void
.end method

.method public abstract reset()V
.end method

.method protected resetImpl()V
    .locals 2

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    .line 235
    iput v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    .line 236
    iput v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBufferIndex:I

    .line 237
    iget-boolean v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->reuseBuffers:Z

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    goto :goto_0

    .line 241
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    .line 242
    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    .line 243
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 244
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    .line 245
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->reuseBuffers:Z

    .line 247
    .end local v0    # "size":I
    :goto_0
    return-void
.end method

.method public abstract size()I
.end method

.method public abstract toByteArray()[B
.end method

.method protected toByteArrayImpl()[B
    .locals 7

    .line 362
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    .line 363
    .local v0, "remaining":I
    if-nez v0, :cond_0

    .line 364
    sget-object v1, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B

    return-object v1

    .line 366
    :cond_0
    new-array v1, v0, [B

    .line 367
    .local v1, "newbuf":[B
    const/4 v2, 0x0

    .line 368
    .local v2, "pos":I
    iget-object v3, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 369
    .local v4, "buf":[B
    array-length v5, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 370
    .local v5, "c":I
    const/4 v6, 0x0

    invoke-static {v4, v6, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    add-int/2addr v2, v5

    .line 372
    sub-int/2addr v0, v5

    .line 373
    if-nez v0, :cond_1

    .line 374
    goto :goto_1

    .line 376
    .end local v4    # "buf":[B
    .end local v5    # "c":I
    :cond_1
    goto :goto_0

    .line 377
    :cond_2
    :goto_1
    return-object v1
.end method

.method public abstract toInputStream()Ljava/io/InputStream;
.end method

.method protected toInputStream(Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/io/InputStream;",
            ">(",
            "Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor<",
            "TT;>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 308
    .local p1, "isConstructor":Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;, "Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor<TT;>;"
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    .line 309
    .local v0, "remaining":I
    if-nez v0, :cond_0

    .line 310
    sget-object v1, Lorg/apache/commons/io/input/ClosedInputStream;->CLOSED_INPUT_STREAM:Lorg/apache/commons/io/input/ClosedInputStream;

    return-object v1

    .line 312
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 314
    .local v3, "buf":[B
    array-length v5, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 315
    .local v5, "c":I
    invoke-interface {p1, v3, v4, v5}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;->construct([BII)Ljava/io/InputStream;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    sub-int/2addr v0, v5

    .line 317
    if-nez v0, :cond_1

    .line 318
    goto :goto_1

    .line 320
    .end local v3    # "buf":[B
    .end local v5    # "c":I
    :cond_1
    goto :goto_0

    .line 321
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->reuseBuffers:Z

    .line 322
    new-instance v2, Ljava/io/SequenceInputStream;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 391
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 417
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public abstract write(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(I)V
.end method

.method public abstract write([BII)V
.end method

.method protected writeImpl(Ljava/io/InputStream;)I
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "readCount":I
    iget v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    iget v2, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v1, v2

    .line 191
    .local v1, "inBufferPos":I
    iget-object v2, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 192
    .local v2, "n":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 193
    add-int/2addr v0, v2

    .line 194
    add-int/2addr v1, v2

    .line 195
    iget v3, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    .line 196
    iget-object v3, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v3

    if-ne v1, v4, :cond_0

    .line 197
    array-length v3, v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    .line 198
    const/4 v1, 0x0

    .line 200
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_0

    .line 202
    :cond_1
    return v0
.end method

.method protected writeImpl(I)V
    .locals 3
    .param p1, "b"    # I

    .line 154
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    iget v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    sub-int v1, v0, v1

    .line 155
    .local v1, "inBufferPos":I
    iget-object v2, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 156
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    .line 157
    const/4 v1, 0x0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 160
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    .line 161
    return-void
.end method

.method protected writeImpl([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 127
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    add-int v1, v0, p3

    .line 128
    .local v1, "newcount":I
    move v2, p3

    .line 129
    .local v2, "remaining":I
    iget v3, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v0, v3

    .line 130
    .local v0, "inBufferPos":I
    :goto_0
    if-lez v2, :cond_1

    .line 131
    iget-object v3, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 132
    .local v3, "part":I
    add-int v4, p2, p3

    sub-int/2addr v4, v2

    iget-object v5, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->currentBuffer:[B

    invoke-static {p1, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    sub-int/2addr v2, v3

    .line 134
    if-lez v2, :cond_0

    .line 135
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    .line 136
    const/4 v0, 0x0

    .line 138
    .end local v3    # "part":I
    :cond_0
    goto :goto_0

    .line 139
    :cond_1
    iput v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    .line 140
    return-void
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected writeToImpl(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget v0, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    .line 269
    .local v0, "remaining":I
    iget-object v1, p0, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 270
    .local v2, "buf":[B
    array-length v3, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 271
    .local v3, "c":I
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 272
    sub-int/2addr v0, v3

    .line 273
    if-nez v0, :cond_0

    .line 274
    goto :goto_1

    .line 276
    .end local v2    # "buf":[B
    .end local v3    # "c":I
    :cond_0
    goto :goto_0

    .line 277
    :cond_1
    :goto_1
    return-void
.end method
