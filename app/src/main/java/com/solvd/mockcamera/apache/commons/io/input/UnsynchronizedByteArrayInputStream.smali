.class public Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
.super Ljava/io/InputStream;
.source "UnsynchronizedByteArrayInputStream.java"


# static fields
.field public static final END_OF_STREAM:I = -0x1


# instance fields
.field private final data:[B

.field private final eod:I

.field private markedOffset:I

.field private offset:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 67
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->data:[B

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    .line 71
    array-length v1, p1

    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    .line 72
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->markedOffset:I

    .line 73
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 83
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    if-ltz p2, :cond_1

    .line 88
    iput-object p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->data:[B

    .line 89
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    .line 90
    array-length v1, p1

    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    .line 91
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->markedOffset:I

    .line 92
    return-void

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 104
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    if-ltz p2, :cond_2

    .line 109
    if-ltz p3, :cond_1

    .line 112
    iput-object p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->data:[B

    .line 113
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    .line 114
    add-int/2addr v0, p3

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    .line 115
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->markedOffset:I

    .line 116
    return-void

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 120
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .line 180
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->markedOffset:I

    .line 181
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    .line 125
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->data:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B

    .line 130
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 136
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 141
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    if-lt v0, v1, :cond_0

    .line 142
    const/4 v0, -0x1

    return v0

    .line 145
    :cond_0
    sub-int/2addr v1, v0

    .line 146
    .local v1, "actualLen":I
    if-ge p3, v1, :cond_1

    .line 147
    move v1, p3

    .line 149
    :cond_1
    if-gtz v1, :cond_2

    .line 150
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->data:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    .line 154
    return v1

    .line 138
    .end local v1    # "actualLen":I
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 186
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->markedOffset:I

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    .line 187
    return-void
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J

    .line 159
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 163
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->eod:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    sub-int/2addr v0, v1

    int-to-long v2, v0

    .line 164
    .local v2, "actualSkip":J
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 165
    move-wide v2, p1

    .line 168
    :cond_0
    int-to-long v0, v1

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->offset:I

    .line 169
    return-wide v2

    .line 160
    .end local v2    # "actualSkip":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Skipping backward is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
