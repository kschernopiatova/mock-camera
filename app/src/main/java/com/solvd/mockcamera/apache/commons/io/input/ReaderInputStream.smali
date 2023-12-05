.class public Lorg/apache/commons/io/input/ReaderInputStream;
.super Ljava/io/InputStream;
.source "ReaderInputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400


# instance fields
.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private final encoderIn:Ljava/nio/CharBuffer;

.field private final encoderOut:Ljava/nio/ByteBuffer;

.field private endOfInput:Z

.field private lastCoderResult:Ljava/nio/charset/CoderResult;

.field private final reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "charsetName"    # Ljava/lang/String;

    .line 177
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/lang/String;I)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;I)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "charsetName"    # Ljava/lang/String;
    .param p3, "bufferSize"    # I

    .line 166
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 155
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "bufferSize"    # I

    .line 140
    nop

    .line 141
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 142
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 143
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 140
    invoke-direct {p0, p1, v0, p3}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "encoder"    # Ljava/nio/charset/CharsetEncoder;

    .line 112
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p3, "bufferSize"    # I

    .line 123
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 124
    iput-object p1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->reader:Ljava/io/Reader;

    .line 125
    iput-object p2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 126
    invoke-static {p3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    .line 127
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 128
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    .line 129
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 130
    return-void
.end method

.method private fillBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->lastCoderResult:Ljava/nio/charset/CoderResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 201
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 205
    .local v0, "position":I
    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 206
    .local v1, "c":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 207
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    goto :goto_0

    .line 209
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 213
    .end local v0    # "position":I
    .end local v1    # "c":I
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 214
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    iget-boolean v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->lastCoderResult:Ljava/nio/charset/CoderResult;

    .line 215
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 216
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 297
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 282
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReaderInputStream;->fillBuffer()V

    .line 283
    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    const/4 v0, -0x1

    return v0

    .line 283
    :cond_1
    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/ReaderInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "array"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    const-string v0, "array"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    if-ltz p3, :cond_4

    if-ltz p2, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "read":I
    if-nez p3, :cond_0

    .line 237
    const/4 v1, 0x0

    return v1

    .line 239
    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 240
    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 242
    .local v1, "c":I
    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 243
    add-int/2addr p2, v1

    .line 244
    sub-int/2addr p3, v1

    .line 245
    add-int/2addr v0, v1

    .line 246
    .end local v1    # "c":I
    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReaderInputStream;->fillBuffer()V

    .line 248
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    :cond_2
    if-nez v0, :cond_3

    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    return v1

    .line 232
    .end local v0    # "read":I
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array Size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
