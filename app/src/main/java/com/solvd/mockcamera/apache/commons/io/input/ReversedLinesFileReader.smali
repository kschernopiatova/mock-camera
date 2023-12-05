.class public Lorg/apache/commons/io/input/ReversedLinesFileReader;
.super Ljava/lang/Object;
.source "ReversedLinesFileReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLOCK_SIZE:I = 0x2000

.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private final avoidNewlineSplitBufferSize:I

.field private final blockSize:I

.field private final byteDecrement:I

.field private final channel:Ljava/nio/channels/SeekableByteChannel;

.field private currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

.field private final encoding:Ljava/nio/charset/Charset;

.field private final newLineSequences:[[B

.field private final totalBlockCount:J

.field private final totalByteLength:J

.field private trailingNewlineOfFileSkipped:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 231
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILjava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "blockSize"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/nio/file/Path;ILjava/lang/String;)V

    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILjava/nio/charset/Charset;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "blockSize"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/nio/file/Path;ILjava/nio/charset/Charset;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V

    .line 244
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;ILjava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "blockSize"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-static {p3}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/nio/file/Path;ILjava/nio/charset/Charset;)V

    .line 380
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;ILjava/nio/charset/Charset;)V
    .locals 11
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "blockSize"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput p2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->blockSize:I

    .line 306
    invoke-static {p3}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->encoding:Ljava/nio/charset/Charset;

    .line 309
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 310
    .local v1, "charsetEncoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v2

    .line 311
    .local v2, "maxBytesPerChar":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 313
    iput v5, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    goto :goto_2

    .line 314
    :cond_0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne v0, v3, :cond_1

    .line 318
    iput v5, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    goto :goto_2

    .line 319
    :cond_1
    const-string v3, "Shift_JIS"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    if-eq v0, v3, :cond_6

    .line 321
    const-string v3, "windows-31j"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    if-eq v0, v3, :cond_6

    .line 322
    const-string v3, "x-windows-949"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    if-eq v0, v3, :cond_6

    .line 323
    const-string v3, "gbk"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    if-eq v0, v3, :cond_6

    .line 324
    const-string v3, "x-windows-950"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 326
    :cond_2
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    if-eq v0, v3, :cond_5

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 331
    :cond_3
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-ne v0, v3, :cond_4

    .line 332
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    const-string v3, "For UTF-16, you need to specify the byte order (use UTF-16BE or UTF-16LE)"

    invoke-direct {v0, v3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_4
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported yet (feel free to submit a patch)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_5
    :goto_0
    iput v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    goto :goto_2

    .line 325
    :cond_6
    :goto_1
    iput v5, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    .line 341
    :goto_2
    const/4 v3, 0x3

    new-array v3, v3, [[B

    const-string v6, "\r\n"

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    const-string v6, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    aput-object v6, v3, v5

    .line 342
    const-string v6, "\r"

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    aput-object v0, v3, v4

    iput-object v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->newLineSequences:[[B

    .line 344
    aget-object v0, v3, v7

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->avoidNewlineSplitBufferSize:I

    .line 347
    new-array v0, v5, [Ljava/nio/file/OpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v0, v7

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 348
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalByteLength:J

    .line 349
    int-to-long v5, p2

    rem-long v5, v3, v5

    long-to-int v0, v5

    .line 350
    .local v0, "lastBlockLength":I
    if-lez v0, :cond_7

    .line 351
    int-to-long v5, p2

    div-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalBlockCount:J

    goto :goto_3

    .line 353
    :cond_7
    int-to-long v5, p2

    div-long v5, v3, v5

    iput-wide v5, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalBlockCount:J

    .line 354
    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_8

    .line 355
    move v0, p2

    .line 358
    :cond_8
    :goto_3
    new-instance v10, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    iget-wide v5, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalBlockCount:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p0

    move v7, v0

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;-><init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[BLorg/apache/commons/io/input/ReversedLinesFileReader$1;)V

    iput-object v10, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    .line 360
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/nio/file/Path;ILjava/nio/charset/Charset;)V

    .line 291
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/io/input/ReversedLinesFileReader;

    .line 44
    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->blockSize:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/io/input/ReversedLinesFileReader;

    .line 44
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->channel:Ljava/nio/channels/SeekableByteChannel;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/io/input/ReversedLinesFileReader;)[[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/io/input/ReversedLinesFileReader;

    .line 44
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->newLineSequences:[[B

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/io/input/ReversedLinesFileReader;

    .line 44
    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->avoidNewlineSplitBufferSize:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/io/input/ReversedLinesFileReader;

    .line 44
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->encoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/io/input/ReversedLinesFileReader;

    .line 44
    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 390
    return-void
.end method

.method public readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    invoke-static {v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->access$700(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 402
    iget-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    invoke-static {v1}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->access$800(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    .line 403
    if-eqz v1, :cond_0

    .line 404
    invoke-static {v1}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->access$700(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_0
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->trailingNewlineOfFileSkipped:Z

    if-nez v1, :cond_1

    .line 413
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->trailingNewlineOfFileSkipped:Z

    .line 414
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 417
    :cond_1
    return-object v0
.end method

.method public readLines(I)Ljava/util/List;
    .locals 3
    .param p1, "lineCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    if-ltz p1, :cond_2

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 440
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 441
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 443
    return-object v0

    .line 445
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v2    # "line":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 437
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lineCount < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3
    .param p1, "lineCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->readLines(I)Ljava/util/List;

    move-result-object v0

    .line 464
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 465
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
