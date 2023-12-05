.class public Lorg/apache/commons/io/input/XmlStreamReader;
.super Ljava/io/Reader;
.source "XmlStreamReader.java"


# static fields
.field private static final BOMS:[Lorg/apache/commons/io/ByteOrderMark;

.field private static final BUFFER_SIZE:I = 0x2000

.field private static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field private static final EBCDIC:Ljava/lang/String; = "CP1047"

.field public static final ENCODING_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_EX_1:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"

.field private static final HTTP_EX_2:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"

.field private static final HTTP_EX_3:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME"

.field private static final RAW_EX_1:Ljava/lang/String; = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

.field private static final RAW_EX_2:Ljava/lang/String; = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM"

.field private static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field private static final UTF_16:Ljava/lang/String; = "UTF-16"

.field private static final UTF_16BE:Ljava/lang/String; = "UTF-16BE"

.field private static final UTF_16LE:Ljava/lang/String; = "UTF-16LE"

.field private static final UTF_32:Ljava/lang/String; = "UTF-32"

.field private static final UTF_32BE:Ljava/lang/String; = "UTF-32BE"

.field private static final UTF_32LE:Ljava/lang/String; = "UTF-32LE"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;


# instance fields
.field private final defaultEncoding:Ljava/lang/String;

.field private final encoding:Ljava/lang/String;

.field private final reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 93
    const/4 v0, 0x5

    new-array v1, v0, [Lorg/apache/commons/io/ByteOrderMark;

    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_32BE:Lorg/apache/commons/io/ByteOrderMark;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_32LE:Lorg/apache/commons/io/ByteOrderMark;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;

    .line 102
    const/4 v1, 0x6

    new-array v1, v1, [Lorg/apache/commons/io/ByteOrderMark;

    new-instance v2, Lorg/apache/commons/io/ByteOrderMark;

    new-array v8, v7, [I

    fill-array-data v8, :array_0

    const-string v9, "UTF-8"

    invoke-direct {v2, v9, v8}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/commons/io/ByteOrderMark;

    new-array v3, v7, [I

    fill-array-data v3, :array_1

    const-string v8, "UTF-16BE"

    invoke-direct {v2, v8, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/io/ByteOrderMark;

    new-array v3, v7, [I

    fill-array-data v3, :array_2

    const-string v4, "UTF-16LE"

    invoke-direct {v2, v4, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/io/ByteOrderMark;

    const/16 v3, 0x10

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const-string v5, "UTF-32BE"

    invoke-direct {v2, v5, v4}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/io/ByteOrderMark;

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    const-string v4, "UTF-32LE"

    invoke-direct {v2, v4, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/commons/io/ByteOrderMark;

    new-array v3, v7, [I

    fill-array-data v3, :array_5

    const-string v4, "CP1047"

    invoke-direct {v2, v4, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v2, v1, v0

    sput-object v1, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;

    .line 674
    nop

    .line 675
    const-string v0, "charset=[\"\']?([.[^; \"\']]*)[\"\']?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    .line 701
    const-string v0, "<\\?xml.*encoding[\\s]*=[\\s]*((?:\".[^\"]*\")|(?:\'.[^\']*\'))"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 4
        0x3c
        0x3f
        0x78
        0x6d
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3c
        0x0
        0x3f
    .end array-data

    :array_2
    .array-data 4
        0x3c
        0x0
        0x3f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3c
        0x0
        0x0
        0x0
        0x3f
        0x0
        0x0
        0x0
        0x78
        0x0
        0x0
        0x0
        0x6d
    .end array-data

    :array_4
    .array-data 4
        0x3c
        0x0
        0x0
        0x0
        0x3f
        0x0
        0x0
        0x0
        0x78
        0x0
        0x0
        0x0
        0x6d
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x4c
        0x6f
        0xa7
        0x94
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Z)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "httpContentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 307
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "httpContentType"    # Ljava/lang/String;
    .param p3, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V

    .line 389
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "httpContentType"    # Ljava/lang/String;
    .param p3, "lenient"    # Z
    .param p4, "defaultEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 345
    const-string v0, "inputStream"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 346
    iput-object p4, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    .line 347
    new-instance v0, Lorg/apache/commons/io/input/BOMInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object v2, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 348
    .local v0, "bom":Lorg/apache/commons/io/input/BOMInputStream;
    new-instance v1, Lorg/apache/commons/io/input/BOMInputStream;

    sget-object v2, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3, v2}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 349
    .local v1, "pis":Lorg/apache/commons/io/input/BOMInputStream;
    invoke-direct {p0, v0, v1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReader;->processHttpStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    .line 350
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    .line 351
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;ZLjava/lang/String;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZLjava/lang/String;)V
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "lenient"    # Z
    .param p3, "defaultEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 223
    const-string v0, "inputStream"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    iput-object p3, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    .line 225
    new-instance v0, Lorg/apache/commons/io/input/BOMInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object v2, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 226
    .local v0, "bom":Lorg/apache/commons/io/input/BOMInputStream;
    new-instance v1, Lorg/apache/commons/io/input/BOMInputStream;

    sget-object v2, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3, v2}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 227
    .local v1, "pis":Lorg/apache/commons/io/input/BOMInputStream;
    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/io/input/XmlStreamReader;->doRawStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    .line 228
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const-string v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/net/URLConnection;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;Ljava/lang/String;)V
    .locals 7
    .param p1, "conn"    # Ljava/net/URLConnection;
    .param p2, "defaultEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 272
    const-string v0, "conm"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    iput-object p2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    .line 274
    const/4 v0, 0x1

    .line 275
    .local v0, "lenient":Z
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "contentType":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 277
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v3, Lorg/apache/commons/io/input/BOMInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v5, 0x2000

    invoke-direct {v4, v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object v5, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 278
    .local v3, "bom":Lorg/apache/commons/io/input/BOMInputStream;
    new-instance v4, Lorg/apache/commons/io/input/BOMInputStream;

    sget-object v5, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;

    const/4 v6, 0x1

    invoke-direct {v4, v3, v6, v5}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 279
    .local v4, "pis":Lorg/apache/commons/io/input/BOMInputStream;
    instance-of v5, p1, Ljava/net/HttpURLConnection;

    if-nez v5, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-direct {p0, v3, v4, v6}, Lorg/apache/commons/io/input/XmlStreamReader;->doRawStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    goto :goto_1

    .line 280
    :cond_1
    :goto_0
    invoke-direct {p0, v3, v4, v1, v6}, Lorg/apache/commons/io/input/XmlStreamReader;->processHttpStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    .line 284
    :goto_1
    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    .line 285
    return-void
.end method

.method private doLenientDetection(Ljava/lang/String;Lorg/apache/commons/io/input/XmlStreamReaderException;)Ljava/lang/String;
    .locals 7
    .param p1, "httpContentType"    # Ljava/lang/String;
    .param p2, "ex"    # Lorg/apache/commons/io/input/XmlStreamReaderException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    if-eqz p1, :cond_0

    const-string v0, "text/html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text/xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 489
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getBomEncoding()Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getXmlGuessEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getXmlEncoding()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 489
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/commons/io/input/XmlStreamReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "ex2":Lorg/apache/commons/io/input/XmlStreamReaderException;
    move-object p2, v0

    .line 495
    .end local v0    # "ex2":Lorg/apache/commons/io/input/XmlStreamReaderException;
    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getXmlEncoding()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 497
    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getContentTypeEncoding()Ljava/lang/String;

    move-result-object v0

    .line 499
    :cond_1
    if-nez v0, :cond_3

    .line 500
    iget-object v1, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "UTF-8"

    :cond_2
    move-object v0, v1

    .line 502
    :cond_3
    return-object v0
.end method

.method private doRawStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Z)Ljava/lang/String;
    .locals 5
    .param p1, "bom"    # Lorg/apache/commons/io/input/BOMInputStream;
    .param p2, "pis"    # Lorg/apache/commons/io/input/BOMInputStream;
    .param p3, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    invoke-virtual {p1}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "bomEnc":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "xmlGuessEnc":Ljava/lang/String;
    invoke-static {p2, v1}, Lorg/apache/commons/io/input/XmlStreamReader;->getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "xmlEnc":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/apache/commons/io/input/XmlStreamReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 440
    :catch_0
    move-exception v3

    .line 441
    .local v3, "ex":Lorg/apache/commons/io/input/XmlStreamReaderException;
    if-eqz p3, :cond_0

    .line 442
    const/4 v4, 0x0

    invoke-direct {p0, v4, v3}, Lorg/apache/commons/io/input/XmlStreamReader;->doLenientDetection(Ljava/lang/String;Lorg/apache/commons/io/input/XmlStreamReaderException;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 444
    :cond_0
    throw v3
.end method

.method static getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "httpContentType"    # Ljava/lang/String;

    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, "encoding":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 687
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 688
    .local v1, "i":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 689
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, "postMime":Ljava/lang/String;
    sget-object v3, Lorg/apache/commons/io/input/XmlStreamReader;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 691
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    move-object v0, v4

    .line 692
    if-eqz v0, :cond_1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    move-object v0, v5

    .line 695
    .end local v1    # "i":I
    .end local v2    # "postMime":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_2
    return-object v0
.end method

.method static getContentTypeMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "httpContentType"    # Ljava/lang/String;

    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, "mime":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 663
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 664
    .local v1, "i":I
    if-ltz v1, :cond_0

    .line 665
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 667
    :cond_0
    move-object v0, p0

    .line 669
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 671
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "guessedEnc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 715
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 716
    .local v2, "encoding":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 717
    const/16 v3, 0x2000

    new-array v4, v3, [B

    .line 718
    .local v4, "bytes":[B
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 719
    const/4 v5, 0x0

    .line 720
    .local v5, "offset":I
    const/16 v6, 0x2000

    .line 721
    .local v6, "max":I
    invoke-virtual {v0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 722
    .local v7, "c":I
    const/4 v8, -0x1

    .line 723
    .local v8, "firstGT":I
    const-string v9, ""

    .line 724
    .local v9, "xmlProlog":Ljava/lang/String;
    :goto_0
    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eq v7, v11, :cond_0

    if-ne v8, v11, :cond_0

    if-ge v5, v3, :cond_0

    .line 725
    add-int/2addr v5, v7

    .line 726
    sub-int/2addr v6, v7

    .line 727
    invoke-virtual {v0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 728
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v4, v10, v5, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v9, v11

    .line 729
    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    goto :goto_0

    .line 731
    :cond_0
    if-ne v8, v11, :cond_2

    .line 732
    if-ne v7, v11, :cond_1

    .line 733
    new-instance v3, Ljava/io/IOException;

    const-string v10, "Unexpected end of XML stream"

    invoke-direct {v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 735
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "XML prolog or ROOT element not found on first "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 739
    :cond_2
    move v3, v5

    .line 740
    .local v3, "bytesRead":I
    if-lez v3, :cond_4

    .line 741
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 742
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/StringReader;

    add-int/lit8 v13, v8, 0x1

    .line 743
    invoke-virtual {v9, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v10}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v10, v11

    .line 744
    .local v10, "bReader":Ljava/io/BufferedReader;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 746
    .local v11, "prolog":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    .local v13, "line":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 747
    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 749
    :cond_3
    sget-object v12, Lorg/apache/commons/io/input/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 750
    .local v12, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 751
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v15, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 752
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    invoke-virtual {v2, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 756
    .end local v3    # "bytesRead":I
    .end local v4    # "bytes":[B
    .end local v5    # "offset":I
    .end local v6    # "max":I
    .end local v7    # "c":I
    .end local v8    # "firstGT":I
    .end local v9    # "xmlProlog":Ljava/lang/String;
    .end local v10    # "bReader":Ljava/io/BufferedReader;
    .end local v11    # "prolog":Ljava/lang/StringBuffer;
    .end local v12    # "m":Ljava/util/regex/Matcher;
    .end local v13    # "line":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method static isAppXml(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mime"    # Ljava/lang/String;

    .line 767
    if-eqz p0, :cond_1

    .line 768
    const-string v0, "application/xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    const-string v0, "application/xml-dtd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    const-string v0, "application/xml-external-parsed-entity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    const-string v0, "application/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 767
    :goto_0
    return v0
.end method

.method static isTextXml(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mime"    # Ljava/lang/String;

    .line 782
    if-eqz p0, :cond_1

    .line 783
    const-string v0, "text/xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    const-string v0, "text/xml-external-parsed-entity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 785
    const-string v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 782
    :goto_0
    return v0
.end method

.method private processHttpStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p1, "bom"    # Lorg/apache/commons/io/input/BOMInputStream;
    .param p2, "pis"    # Lorg/apache/commons/io/input/BOMInputStream;
    .param p3, "httpContentType"    # Ljava/lang/String;
    .param p4, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    invoke-virtual {p1}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, "bomEnc":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, "xmlGuessEnc":Ljava/lang/String;
    invoke-static {p2, v7}, Lorg/apache/commons/io/input/XmlStreamReader;->getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 465
    .local v8, "xmlEnc":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p3

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move v5, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/commons/io/input/XmlStreamReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "ex":Lorg/apache/commons/io/input/XmlStreamReaderException;
    if-eqz p4, :cond_0

    .line 468
    invoke-direct {p0, p3, v0}, Lorg/apache/commons/io/input/XmlStreamReader;->doLenientDetection(Ljava/lang/String;Lorg/apache/commons/io/input/XmlStreamReaderException;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 470
    :cond_0
    throw v0
.end method


# virtual methods
.method calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 17
    .param p1, "httpContentType"    # Ljava/lang/String;
    .param p2, "bomEnc"    # Ljava/lang/String;
    .param p3, "xmlGuessEnc"    # Ljava/lang/String;
    .param p4, "xmlEnc"    # Ljava/lang/String;
    .param p5, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    if-eqz p5, :cond_0

    if-eqz v10, :cond_0

    .line 592
    return-object v10

    .line 596
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/io/input/XmlStreamReader;->getContentTypeMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 597
    .local v11, "cTMime":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/io/input/XmlStreamReader;->getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 598
    .local v12, "cTEnc":Ljava/lang/String;
    invoke-static {v11}, Lorg/apache/commons/io/input/XmlStreamReader;->isAppXml(Ljava/lang/String;)Z

    move-result v13

    .line 599
    .local v13, "appXml":Z
    invoke-static {v11}, Lorg/apache/commons/io/input/XmlStreamReader;->isTextXml(Ljava/lang/String;)Z

    move-result v14

    .line 602
    .local v14, "textXml":Z
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-nez v13, :cond_2

    if-eqz v14, :cond_1

    goto :goto_0

    .line 603
    :cond_1
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v11, v6, v5

    aput-object v12, v6, v4

    aput-object v8, v6, v3

    aput-object v9, v6, v2

    aput-object v10, v6, v1

    const-string v1, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME"

    invoke-static {v1, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 604
    .local v15, "msg":Ljava/lang/String;
    new-instance v16, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object/from16 v1, v16

    move-object v2, v15

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v16

    .line 608
    .end local v15    # "msg":Ljava/lang/String;
    :cond_2
    :goto_0
    if-nez v12, :cond_5

    .line 609
    if-eqz v13, :cond_3

    .line 610
    invoke-virtual {v0, v8, v9, v10}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 612
    :cond_3
    iget-object v1, v0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "US-ASCII"

    :cond_4
    return-object v1

    .line 616
    :cond_5
    const-string v7, "UTF-16BE"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v15, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"

    if-nez v7, :cond_e

    const-string v7, "UTF-16LE"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_2

    .line 625
    :cond_6
    const-string v7, "UTF-16"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const-string v1, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"

    if-eqz v16, :cond_8

    .line 626
    if-eqz v8, :cond_7

    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 627
    return-object v8

    .line 629
    :cond_7
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v11, v6, v5

    aput-object v12, v6, v4

    aput-object v8, v6, v3

    aput-object v9, v6, v2

    const/4 v2, 0x4

    aput-object v10, v6, v2

    invoke-static {v1, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 630
    .restart local v15    # "msg":Ljava/lang/String;
    new-instance v16, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object/from16 v1, v16

    move-object v2, v15

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v16

    .line 634
    .end local v15    # "msg":Ljava/lang/String;
    :cond_8
    const-string v7, "UTF-32BE"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "UTF-32LE"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_1

    .line 643
    :cond_9
    const-string v7, "UTF-32"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 644
    if-eqz v8, :cond_a

    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 645
    return-object v8

    .line 647
    :cond_a
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v11, v6, v5

    aput-object v12, v6, v4

    aput-object v8, v6, v3

    aput-object v9, v6, v2

    const/4 v2, 0x4

    aput-object v10, v6, v2

    invoke-static {v1, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 648
    .restart local v15    # "msg":Ljava/lang/String;
    new-instance v16, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object/from16 v1, v16

    move-object v2, v15

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v16

    .line 651
    .end local v15    # "msg":Ljava/lang/String;
    :cond_b
    return-object v12

    .line 635
    :cond_c
    :goto_1
    if-nez v8, :cond_d

    .line 639
    return-object v12

    .line 636
    :cond_d
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v11, v1, v5

    aput-object v12, v1, v4

    aput-object v8, v1, v3

    aput-object v9, v1, v2

    const/4 v2, 0x4

    aput-object v10, v1, v2

    invoke-static {v15, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 637
    .restart local v15    # "msg":Ljava/lang/String;
    new-instance v16, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object/from16 v1, v16

    move-object v2, v15

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v16

    .line 617
    .end local v15    # "msg":Ljava/lang/String;
    :cond_e
    :goto_2
    if-nez v8, :cond_f

    .line 621
    return-object v12

    .line 618
    :cond_f
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v11, v1, v5

    aput-object v12, v1, v4

    aput-object v8, v1, v3

    aput-object v9, v1, v2

    const/4 v2, 0x4

    aput-object v10, v1, v2

    invoke-static {v15, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 619
    .restart local v15    # "msg":Ljava/lang/String;
    new-instance v16, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object/from16 v1, v16

    move-object v2, v15

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v16
.end method

.method calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "bomEnc"    # Ljava/lang/String;
    .param p2, "xmlGuessEnc"    # Ljava/lang/String;
    .param p3, "xmlEnc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    const-string v0, "UTF-16"

    const-string v1, "UTF-16LE"

    const-string v2, "UTF-16BE"

    const-string v3, "UTF-8"

    if-nez p1, :cond_5

    .line 519
    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    :cond_1
    return-object p2

    .line 526
    :cond_2
    return-object p3

    .line 520
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    return-object v3

    .line 530
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eqz v4, :cond_a

    .line 531
    if-eqz p2, :cond_7

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 532
    :cond_6
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v8

    aput-object p2, v0, v7

    aput-object p3, v0, v6

    invoke-static {v5, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 535
    .end local v0    # "msg":Ljava/lang/String;
    :cond_7
    :goto_2
    if-eqz p3, :cond_9

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    .line 536
    :cond_8
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v8

    aput-object p2, v0, v7

    aput-object p3, v0, v6

    invoke-static {v5, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 537
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 539
    .end local v0    # "msg":Ljava/lang/String;
    :cond_9
    :goto_3
    return-object p1

    .line 543
    :cond_a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_7

    .line 556
    :cond_b
    const-string v0, "UTF-32BE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "UTF-32LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    .line 569
    :cond_c
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v8

    aput-object p2, v0, v7

    aput-object p3, v0, v6

    const-string v1, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 557
    .end local v0    # "msg":Ljava/lang/String;
    :cond_d
    :goto_4
    if-eqz p2, :cond_f

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_5

    .line 558
    :cond_e
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v8

    aput-object p2, v0, v7

    aput-object p3, v0, v6

    invoke-static {v5, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 559
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 561
    .end local v0    # "msg":Ljava/lang/String;
    :cond_f
    :goto_5
    if-eqz p3, :cond_11

    const-string v0, "UTF-32"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_6

    .line 562
    :cond_10
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v8

    aput-object p2, v0, v7

    aput-object p3, v0, v6

    invoke-static {v5, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 565
    .end local v0    # "msg":Ljava/lang/String;
    :cond_11
    :goto_6
    return-object p1

    .line 544
    :cond_12
    :goto_7
    if-eqz p2, :cond_14

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_8

    .line 545
    :cond_13
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v8

    aput-object p2, v0, v7

    aput-object p3, v0, v6

    invoke-static {v5, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 548
    .end local v0    # "msg":Ljava/lang/String;
    :cond_14
    :goto_8
    if-eqz p3, :cond_16

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_9

    .line 549
    :cond_15
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v8

    aput-object p2, v0, v7

    aput-object p3, v0, v6

    invoke-static {v5, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 552
    .end local v0    # "msg":Ljava/lang/String;
    :cond_16
    :goto_9
    return-object p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 421
    return-void
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public read([CII)I
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method
