.class public Lorg/apache/commons/io/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final EMPTY_FILE_ARRAY:[Ljava/io/File;

.field public static final ONE_EB:J = 0x1000000000000000L

.field public static final ONE_EB_BI:Ljava/math/BigInteger;

.field public static final ONE_GB:J = 0x40000000L

.field public static final ONE_GB_BI:Ljava/math/BigInteger;

.field public static final ONE_KB:J = 0x400L

.field public static final ONE_KB_BI:Ljava/math/BigInteger;

.field public static final ONE_MB:J = 0x100000L

.field public static final ONE_MB_BI:Ljava/math/BigInteger;

.field public static final ONE_PB:J = 0x4000000000000L

.field public static final ONE_PB_BI:Ljava/math/BigInteger;

.field public static final ONE_TB:J = 0x10000000000L

.field public static final ONE_TB_BI:Ljava/math/BigInteger;

.field public static final ONE_YB:Ljava/math/BigInteger;

.field public static final ONE_ZB:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 102
    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;

    .line 114
    invoke-virtual {v2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/FileUtils;->ONE_MB_BI:Ljava/math/BigInteger;

    .line 126
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/FileUtils;->ONE_GB_BI:Ljava/math/BigInteger;

    .line 138
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/FileUtils;->ONE_TB_BI:Ljava/math/BigInteger;

    .line 150
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/FileUtils;->ONE_PB_BI:Ljava/math/BigInteger;

    .line 162
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/io/FileUtils;->ONE_EB_BI:Ljava/math/BigInteger;

    .line 167
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/high16 v3, 0x1000000000000000L

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_ZB:Ljava/math/BigInteger;

    .line 172
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_YB:Ljava/math/BigInteger;

    .line 177
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3401
    return-void
.end method

.method public static byteCountToDisplaySize(J)Ljava/lang/String;
    .locals 1
    .param p0, "size"    # J

    .line 232
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->byteCountToDisplaySize(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byteCountToDisplaySize(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 3
    .param p0, "size"    # Ljava/math/BigInteger;

    .line 198
    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_EB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " EB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "displaySize":Ljava/lang/String;
    goto/16 :goto_0

    .line 200
    .end local v0    # "displaySize":Ljava/lang/String;
    :cond_0
    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_PB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_1

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displaySize":Ljava/lang/String;
    goto/16 :goto_0

    .line 202
    .end local v0    # "displaySize":Ljava/lang/String;
    :cond_1
    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_TB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_2

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displaySize":Ljava/lang/String;
    goto/16 :goto_0

    .line 204
    .end local v0    # "displaySize":Ljava/lang/String;
    :cond_2
    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_GB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_3

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displaySize":Ljava/lang/String;
    goto :goto_0

    .line 206
    .end local v0    # "displaySize":Ljava/lang/String;
    :cond_3
    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_MB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_4

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displaySize":Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v0    # "displaySize":Ljava/lang/String;
    :cond_4
    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_5

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displaySize":Ljava/lang/String;
    goto :goto_0

    .line 211
    .end local v0    # "displaySize":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .restart local v0    # "displaySize":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method private static checkDirectory(Ljava/io/File;)V
    .locals 3
    .param p0, "directory"    # Ljava/io/File;

    .line 242
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkEqualSizes(Ljava/io/File;Ljava/io/File;JJ)V
    .locals 3
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "srcLen"    # J
    .param p4, "dstLen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    .line 265
    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to copy full contents from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' Expected length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkFileRequirements(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p0, "source"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 275
    const-string v0, "source"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string v0, "target"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    return-void

    .line 278
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checksum(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "checksum"    # Ljava/util/zip/Checksum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 304
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->consume(Ljava/io/InputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 306
    .end local v0    # "in":Ljava/io/InputStream;
    return-object p1

    .line 303
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "checksum":Ljava/util/zip/Checksum;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 305
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "checksum":Ljava/util/zip/Checksum;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2

    .line 301
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Checksums can\'t be computed on directories"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checksumCRC32(Ljava/io/File;)J
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->checksum(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static cleanDirectory(Ljava/io/File;)V
    .locals 6
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->verifiedListFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 335
    .local v0, "files":[Ljava/io/File;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v1, "causeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 338
    .local v4, "file":Ljava/io/File;
    :try_start_0
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    goto :goto_1

    .line 339
    :catch_0
    move-exception v5

    .line 340
    .local v5, "ioe":Ljava/io/IOException;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "ioe":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 344
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    return-void

    .line 345
    :cond_1
    new-instance v2, Lorg/apache/commons/io/IOExceptionList;

    invoke-direct {v2, v1}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/util/List;)V

    throw v2
.end method

.method private static cleanDirectoryOnExit(Ljava/io/File;)V
    .locals 6
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->verifiedListFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 360
    .local v0, "files":[Ljava/io/File;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v1, "causeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 363
    .local v4, "file":Ljava/io/File;
    :try_start_0
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->forceDeleteOnExit(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    goto :goto_1

    .line 364
    :catch_0
    move-exception v5

    .line 365
    .local v5, "ioe":Ljava/io/IOException;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "ioe":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    return-void

    .line 370
    :cond_1
    new-instance v2, Lorg/apache/commons/io/IOExceptionList;

    invoke-direct {v2, v1}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/util/List;)V

    throw v2
.end method

.method public static contentEquals(Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .param p0, "file1"    # Ljava/io/File;
    .param p1, "file2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 394
    return v0

    .line 396
    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez p1, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 397
    return v1

    .line 399
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 400
    .local v2, "file1Exists":Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 401
    return v1

    .line 404
    :cond_4
    if-nez v2, :cond_5

    .line 406
    return v0

    .line 409
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_8

    .line 414
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 416
    return v1

    .line 419
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 421
    return v0

    .line 424
    :cond_7
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 425
    .local v0, "input1":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 424
    .local v1, "input2":Ljava/io/InputStream;
    nop

    .line 426
    :try_start_1
    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 426
    return v3

    .line 424
    :catchall_0
    move-exception v3

    .end local v0    # "input1":Ljava/io/InputStream;
    .end local v1    # "input2":Ljava/io/InputStream;
    .end local v2    # "file1Exists":Z
    .end local p0    # "file1":Ljava/io/File;
    .end local p1    # "file2":Ljava/io/File;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 427
    .restart local v0    # "input1":Ljava/io/InputStream;
    .restart local v1    # "input2":Ljava/io/InputStream;
    .restart local v2    # "file1Exists":Z
    .restart local p0    # "file1":Ljava/io/File;
    .restart local p1    # "file2":Ljava/io/File;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "input1":Ljava/io/InputStream;
    .end local v2    # "file1Exists":Z
    .end local p0    # "file1":Ljava/io/File;
    .end local p1    # "file2":Ljava/io/File;
    :goto_2
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 424
    .end local v1    # "input2":Ljava/io/InputStream;
    .restart local v0    # "input1":Ljava/io/InputStream;
    .restart local v2    # "file1Exists":Z
    .restart local p0    # "file1":Ljava/io/File;
    .restart local p1    # "file2":Ljava/io/File;
    :catchall_3
    move-exception v1

    .end local v0    # "input1":Ljava/io/InputStream;
    .end local v2    # "file1Exists":Z
    .end local p0    # "file1":Ljava/io/File;
    .end local p1    # "file2":Ljava/io/File;
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 427
    .restart local v0    # "input1":Ljava/io/InputStream;
    .restart local v2    # "file1Exists":Z
    .restart local p0    # "file1":Ljava/io/File;
    .restart local p1    # "file2":Ljava/io/File;
    :catchall_4
    move-exception v3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3

    .line 411
    .end local v0    # "input1":Ljava/io/InputStream;
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t compare directories, only files"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static contentEqualsIgnoreEOL(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p0, "file1"    # Ljava/io/File;
    .param p1, "file2"    # Ljava/io/File;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 450
    return v0

    .line 452
    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez p1, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 453
    return v1

    .line 455
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 456
    .local v2, "file1Exists":Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 457
    return v1

    .line 460
    :cond_4
    if-nez v2, :cond_5

    .line 462
    return v0

    .line 465
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_7

    .line 470
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 472
    return v0

    .line 475
    :cond_6
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 476
    .local v0, "input1":Ljava/io/Reader;
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 475
    .local v1, "input2":Ljava/io/Reader;
    nop

    .line 477
    :try_start_1
    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 477
    return v3

    .line 475
    :catchall_0
    move-exception v3

    .end local v0    # "input1":Ljava/io/Reader;
    .end local v1    # "input2":Ljava/io/Reader;
    .end local v2    # "file1Exists":Z
    .end local p0    # "file1":Ljava/io/File;
    .end local p1    # "file2":Ljava/io/File;
    .end local p2    # "charsetName":Ljava/lang/String;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 478
    .restart local v0    # "input1":Ljava/io/Reader;
    .restart local v1    # "input2":Ljava/io/Reader;
    .restart local v2    # "file1Exists":Z
    .restart local p0    # "file1":Ljava/io/File;
    .restart local p1    # "file2":Ljava/io/File;
    .restart local p2    # "charsetName":Ljava/lang/String;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "input1":Ljava/io/Reader;
    .end local v2    # "file1Exists":Z
    .end local p0    # "file1":Ljava/io/File;
    .end local p1    # "file2":Ljava/io/File;
    .end local p2    # "charsetName":Ljava/lang/String;
    :goto_2
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 475
    .end local v1    # "input2":Ljava/io/Reader;
    .restart local v0    # "input1":Ljava/io/Reader;
    .restart local v2    # "file1Exists":Z
    .restart local p0    # "file1":Ljava/io/File;
    .restart local p1    # "file2":Ljava/io/File;
    .restart local p2    # "charsetName":Ljava/lang/String;
    :catchall_3
    move-exception v1

    .end local v0    # "input1":Ljava/io/Reader;
    .end local v2    # "file1Exists":Z
    .end local p0    # "file1":Ljava/io/File;
    .end local p1    # "file2":Ljava/io/File;
    .end local p2    # "charsetName":Ljava/lang/String;
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 478
    .restart local v0    # "input1":Ljava/io/Reader;
    .restart local v2    # "file1Exists":Z
    .restart local p0    # "file1":Ljava/io/File;
    .restart local p1    # "file2":Ljava/io/File;
    .restart local p2    # "charsetName":Ljava/lang/String;
    :catchall_4
    move-exception v3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3

    .line 467
    .end local v0    # "input1":Ljava/io/Reader;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t compare directories, only files"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertFileCollectionToFileArray(Ljava/util/Collection;)[Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/io/File;"
        }
    .end annotation

    .line 490
    .local p0, "files":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Z)V

    .line 522
    return-void
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "filter"    # Ljava/io/FileFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V

    .line 607
    return-void
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V
    .locals 3
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "filter"    # Ljava/io/FileFilter;
    .param p3, "preserveFileDate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/CopyOption;

    sget-object v1, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z[Ljava/nio/file/CopyOption;)V

    .line 660
    return-void
.end method

.method public static varargs copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z[Ljava/nio/file/CopyOption;)V
    .locals 10
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "filter"    # Ljava/io/FileFilter;
    .param p3, "preserveFileDate"    # Z
    .param p4, "copyOptions"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 713
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->checkFileRequirements(Ljava/io/File;Ljava/io/File;)V

    .line 714
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Source \'"

    if-eqz v0, :cond_3

    .line 717
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 724
    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 725
    .local v1, "srcFiles":[Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 726
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 727
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 728
    .local v4, "srcFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 729
    .local v5, "copiedFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    .end local v4    # "srcFile":Ljava/io/File;
    .end local v5    # "copiedFile":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 733
    .end local v1    # "srcFiles":[Ljava/io/File;
    :cond_1
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, v0

    move-object v9, p4

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/io/FileUtils;->doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List;[Ljava/nio/file/CopyOption;)V

    .line 734
    return-void

    .line 718
    .end local v0    # "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' are the same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "preserveFileDate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V

    .line 556
    return-void
.end method

.method public static copyDirectoryToDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p0, "sourceDir"    # Ljava/io/File;
    .param p1, "destinationDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    const-string v0, "sourceDir"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 765
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "\' is not a directory"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_1
    :goto_0
    const-string v0, "destinationDir"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 769
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 770
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_3
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Z)V

    .line 773
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/OutputStream;)J
    .locals 4
    .param p0, "input"    # Ljava/io/File;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 903
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 903
    return-wide v1

    .line 902
    :catchall_0
    move-exception v1

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "input":Ljava/io/File;
    .end local p1    # "output":Ljava/io/OutputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 904
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "input":Ljava/io/File;
    .restart local p1    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V

    .line 803
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;Z)V
    .locals 3
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "preserveFileDate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/CopyOption;

    sget-object v1, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z[Ljava/nio/file/CopyOption;)V

    .line 836
    return-void
.end method

.method public static varargs copyFile(Ljava/io/File;Ljava/io/File;Z[Ljava/nio/file/CopyOption;)V
    .locals 4
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "preserveFileDate"    # Z
    .param p3, "copyOptions"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 869
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->checkFileRequirements(Ljava/io/File;Ljava/io/File;)V

    .line 870
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Source \'"

    if-nez v0, :cond_5

    .line 873
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 876
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 877
    .local v0, "parentFile":Ljava/io/File;
    const-string v1, "Destination \'"

    if-eqz v0, :cond_1

    .line 878
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 879
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' directory cannot be created"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 882
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 883
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' exists but is read-only"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 885
    :cond_3
    :goto_1
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/FileUtils;->doCopyFile(Ljava/io/File;Ljava/io/File;Z[Ljava/nio/file/CopyOption;)V

    .line 886
    return-void

    .line 874
    .end local v0    # "parentFile":Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' are the same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V

    .line 932
    return-void
.end method

.method public static copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .locals 3
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "destinationDir"    # Ljava/io/File;
    .param p2, "preserveFileDate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 965
    const-string v0, "destinationDir"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 966
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 967
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 970
    .local v0, "destFile":Ljava/io/File;
    invoke-static {p0, v0, p2}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V

    .line 971
    return-void
.end method

.method public static copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 991
    move-object v0, p0

    .line 992
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 994
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void

    .line 991
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "source":Ljava/io/InputStream;
    .end local p1    # "destination":Ljava/io/File;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 993
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "source":Ljava/io/InputStream;
    .restart local p1    # "destination":Ljava/io/File;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static copyToDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "destinationDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1025
    const-string v0, "sourceFile"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1026
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 1028
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyDirectoryToDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 1033
    :goto_0
    return-void

    .line 1031
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyToDirectory(Ljava/lang/Iterable;Ljava/io/File;)V
    .locals 2
    .param p1, "destinationDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1061
    .local p0, "sourceIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/io/File;>;"
    const-string v0, "sourceIterable"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1062
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1063
    .local v1, "src":Ljava/io/File;
    invoke-static {v1, p1}, Lorg/apache/commons/io/FileUtils;->copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 1064
    .end local v1    # "src":Ljava/io/File;
    goto :goto_0

    .line 1065
    :cond_0
    return-void
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1085
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1086
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1088
    .end local v0    # "out":Ljava/io/OutputStream;
    :cond_0
    return-void

    .line 1085
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "out":Ljava/io/OutputStream;
    .end local p0    # "source":Ljava/io/InputStream;
    .end local p1    # "destination":Ljava/io/File;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1087
    .restart local v0    # "out":Ljava/io/OutputStream;
    .restart local p0    # "source":Ljava/io/InputStream;
    .restart local p1    # "destination":Ljava/io/File;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static copyURLToFile(Ljava/net/URL;Ljava/io/File;)V
    .locals 4
    .param p0, "source"    # Ljava/net/URL;
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1111
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1112
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1114
    .end local v0    # "stream":Ljava/io/InputStream;
    :cond_0
    return-void

    .line 1111
    .restart local v0    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "stream":Ljava/io/InputStream;
    .end local p0    # "source":Ljava/net/URL;
    .end local p1    # "destination":Ljava/io/File;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1113
    .restart local v0    # "stream":Ljava/io/InputStream;
    .restart local p0    # "source":Ljava/net/URL;
    .restart local p1    # "destination":Ljava/io/File;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static copyURLToFile(Ljava/net/URL;Ljava/io/File;II)V
    .locals 5
    .param p0, "source"    # Ljava/net/URL;
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "connectionTimeout"    # I
    .param p3, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1138
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 1139
    .local v0, "connection":Ljava/net/URLConnection;
    invoke-virtual {v0, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1140
    invoke-virtual {v0, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1141
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1142
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1, p1}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1144
    .end local v1    # "stream":Ljava/io/InputStream;
    :cond_0
    return-void

    .line 1141
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v1    # "stream":Ljava/io/InputStream;
    .end local p0    # "source":Ljava/net/URL;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "connectionTimeout":I
    .end local p3    # "readTimeout":I
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1143
    .restart local v0    # "connection":Ljava/net/URLConnection;
    .restart local v1    # "stream":Ljava/io/InputStream;
    .restart local p0    # "source":Ljava/net/URL;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "connectionTimeout":I
    .restart local p3    # "readTimeout":I
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v3
.end method

.method static decodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .line 1161
    move-object v0, p0

    .line 1162
    .local v0, "decoded":Ljava/lang/String;
    if-eqz p0, :cond_6

    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_6

    .line 1163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1164
    .local v2, "n":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1165
    .local v3, "buffer":Ljava/lang/StringBuilder;
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1166
    .local v4, "bytes":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :cond_0
    :goto_0
    if-ge v5, v2, :cond_5

    .line 1167
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_4

    .line 1170
    :cond_1
    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x3

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    .line 1171
    .local v6, "octet":B
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1172
    nop

    .end local v6    # "octet":B
    add-int/lit8 v5, v5, 0x3

    .line 1173
    if-ge v5, v2, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v6, v1, :cond_1

    .line 1179
    :cond_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-lez v6, :cond_0

    .line 1180
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1181
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v4}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 1179
    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-lez v6, :cond_3

    .line 1180
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1181
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v4}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1184
    :cond_3
    throw v1

    .line 1175
    :catch_0
    move-exception v6

    .line 1179
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-lez v6, :cond_4

    .line 1180
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1181
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v4}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1186
    :cond_4
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v6

    goto :goto_0

    .line 1188
    .end local v6    # "i":I
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1190
    .end local v2    # "n":I
    .end local v3    # "buffer":Ljava/lang/StringBuilder;
    .end local v4    # "bytes":Ljava/nio/ByteBuffer;
    :cond_6
    return-object v0
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 2
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1201
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1202
    return-void

    .line 1205
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1206
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->cleanDirectory(Ljava/io/File;)V

    .line 1209
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1214
    return-void

    .line 1210
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to delete directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1212
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static deleteDirectoryOnExit(Ljava/io/File;)V
    .locals 1
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1224
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    return-void

    .line 1228
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    .line 1229
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1230
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->cleanDirectoryOnExit(Ljava/io/File;)V

    .line 1232
    :cond_1
    return-void
.end method

.method public static deleteQuietly(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 1251
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1252
    return v0

    .line 1255
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1256
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->cleanDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    :cond_1
    goto :goto_0

    .line 1258
    :catch_0
    move-exception v1

    .line 1263
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 1264
    :catch_1
    move-exception v1

    .line 1265
    .local v1, "ignored":Ljava/lang/Exception;
    return v0
.end method

.method public static directoryContains(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "child"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1294
    if-eqz p0, :cond_4

    .line 1298
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1302
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1303
    return v0

    .line 1306
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1311
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1312
    .local v0, "canonicalParent":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 1314
    .local v1, "canonicalChild":Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/apache/commons/io/FilenameUtils;->directoryContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1307
    .end local v0    # "canonicalParent":Ljava/lang/String;
    .end local v1    # "canonicalChild":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0

    .line 1299
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1295
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Directory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List;[Ljava/nio/file/CopyOption;)V
    .locals 16
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "filter"    # Ljava/io/FileFilter;
    .param p3, "preserveFileDate"    # Z
    .param p5, "copyOptions"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/nio/file/CopyOption;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1332
    .local p4, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    if-nez v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    :goto_0
    move-object v11, v2

    .line 1333
    .local v11, "srcFiles":[Ljava/io/File;
    if-eqz v11, :cond_b

    .line 1336
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "Destination \'"

    if-eqz v2, :cond_2

    .line 1337
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1338
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' exists but is not a directory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1341
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 1342
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' directory cannot be created"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1345
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1348
    array-length v12, v11

    const/4 v2, 0x0

    move v13, v2

    :goto_2
    if-ge v13, v12, :cond_8

    aget-object v14, v11, v13

    .line 1349
    .local v14, "srcFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v15, v2

    .line 1350
    .local v15, "dstFile":Ljava/io/File;
    if-eqz v10, :cond_6

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move-object/from16 v2, p5

    goto :goto_4

    .line 1351
    :cond_6
    :goto_3
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1352
    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/io/FileUtils;->doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List;[Ljava/nio/file/CopyOption;)V

    move-object/from16 v2, p5

    goto :goto_4

    .line 1354
    :cond_7
    move-object/from16 v2, p5

    invoke-static {v14, v15, v9, v2}, Lorg/apache/commons/io/FileUtils;->doCopyFile(Ljava/io/File;Ljava/io/File;Z[Ljava/nio/file/CopyOption;)V

    .line 1348
    .end local v14    # "srcFile":Ljava/io/File;
    .end local v15    # "dstFile":Ljava/io/File;
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1360
    :cond_8
    move-object/from16 v2, p5

    if-eqz v9, :cond_9

    .line 1361
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/io/FileUtils;->setLastModified(Ljava/io/File;Ljava/io/File;)V

    .line 1363
    :cond_9
    return-void

    .line 1346
    :cond_a
    move-object/from16 v2, p5

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' cannot be written to"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1334
    :cond_b
    move-object/from16 v2, p5

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to list contents of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static varargs doCopyFile(Ljava/io/File;Ljava/io/File;Z[Ljava/nio/file/CopyOption;)V
    .locals 8
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "preserveFileDate"    # Z
    .param p3, "copyOptions"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1385
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1386
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1389
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 1390
    .local v0, "srcPath":Ljava/nio/file/Path;
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 1392
    .local v1, "destPath":Ljava/nio/file/Path;
    invoke-static {v0, v1, p3}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 1395
    invoke-static {v0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v4

    invoke-static {v1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/io/FileUtils;->checkEqualSizes(Ljava/io/File;Ljava/io/File;JJ)V

    .line 1397
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/io/FileUtils;->checkEqualSizes(Ljava/io/File;Ljava/io/File;JJ)V

    .line 1399
    if-eqz p2, :cond_2

    .line 1400
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->setLastModified(Ljava/io/File;Ljava/io/File;)V

    .line 1402
    :cond_2
    return-void
.end method

.method public static forceDelete(Ljava/io/File;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1423
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/file/PathUtils;->delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    .local v0, "deleteCounters":Lorg/apache/commons/io/file/Counters$PathCounters;
    nop

    .line 1428
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getDirectoryCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    goto :goto_0

    .line 1430
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1432
    :cond_1
    :goto_0
    return-void

    .line 1424
    .end local v0    # "deleteCounters":Lorg/apache/commons/io/file/Counters$PathCounters;
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static forceDeleteOnExit(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1443
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteDirectoryOnExit(Ljava/io/File;)V

    goto :goto_0

    .line 1446
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    .line 1448
    :goto_0
    return-void
.end method

.method public static forceMkdir(Ljava/io/File;)V
    .locals 2
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1462
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1463
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1464
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exists and is not a directory. Unable to create directory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1469
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1472
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1475
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1476
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1478
    .restart local v0    # "message":Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1482
    .end local v0    # "message":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method public static forceMkdirParent(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1494
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1495
    .local v0, "parent":Ljava/io/File;
    if-nez v0, :cond_0

    .line 1496
    return-void

    .line 1498
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V

    .line 1499
    return-void
.end method

.method public static varargs getFile(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "names"    # [Ljava/lang/String;

    .line 1510
    const-string v0, "directory"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1511
    const-string v0, "names"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1512
    move-object v0, p0

    .line 1513
    .local v0, "file":Ljava/io/File;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 1514
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v4

    .line 1513
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1516
    :cond_0
    return-object v0
.end method

.method public static varargs getFile([Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "names"    # [Ljava/lang/String;

    .line 1527
    const-string v0, "names"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1528
    const/4 v0, 0x0

    .line 1529
    .local v0, "file":Ljava/io/File;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 1530
    .local v3, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1531
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_1

    .line 1533
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v4

    .line 1529
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1536
    :cond_1
    return-object v0
.end method

.method public static getTempDirectory()Ljava/io/File;
    .locals 2

    .line 1547
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTempDirectoryPath()Ljava/lang/String;
    .locals 1

    .line 1558
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserDirectory()Ljava/io/File;
    .locals 2

    .line 1569
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getUserDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserDirectoryPath()Ljava/lang/String;
    .locals 1

    .line 1580
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static innerListFiles(Ljava/util/Collection;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V
    .locals 5
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "filter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p3, "includeSubDirectories"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Z)V"
        }
    .end annotation

    .line 1594
    .local p0, "files":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1596
    .local v0, "found":[Ljava/io/File;
    if-eqz v0, :cond_2

    .line 1597
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1598
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1599
    if-eqz p3, :cond_0

    .line 1600
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1602
    :cond_0
    invoke-static {p0, v3, p2, p3}, Lorg/apache/commons/io/FileUtils;->innerListFiles(Ljava/util/Collection;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V

    goto :goto_1

    .line 1604
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1597
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1608
    :cond_2
    return-void
.end method

.method private static innerListFilesOrDirectories(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)Ljava/util/Collection;
    .locals 5
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "fileFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p2, "dirFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p3, "includeSubDirectories"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Z)",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1628
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->validateListFilesParameters(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    .line 1630
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->setUpEffectiveFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    .line 1631
    .local v0, "effFileFilter":Lorg/apache/commons/io/filefilter/IOFileFilter;
    invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->setUpEffectiveDirFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    .line 1634
    .local v1, "effDirFilter":Lorg/apache/commons/io/filefilter/IOFileFilter;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1635
    .local v2, "files":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    if-eqz p3, :cond_0

    .line 1636
    invoke-interface {v2, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1638
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 1639
    invoke-static {v3}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->or([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v3

    .line 1638
    invoke-static {v2, p0, v3, p3}, Lorg/apache/commons/io/FileUtils;->innerListFiles(Ljava/util/Collection;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V

    .line 1640
    return-object v2
.end method

.method public static isFileNewer(Ljava/io/File;J)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "timeMillis"    # J

    .line 1787
    const-string v0, "file"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1788
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1789
    return v1

    .line 1791
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isFileNewer(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "reference"    # Ljava/io/File;

    .line 1754
    const-string v0, "reference"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1755
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v0

    return v0

    .line 1756
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The reference file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isFileNewer(Ljava/io/File;Ljava/time/Instant;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "instant"    # Ljava/time/Instant;

    .line 1773
    const-string v0, "instant"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1774
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static isFileNewer(Ljava/io/File;Ljava/time/chrono/ChronoLocalDate;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "chronoLocalDate"    # Ljava/time/chrono/ChronoLocalDate;

    .line 1656
    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)Z

    move-result v0

    return v0
.end method

.method public static isFileNewer(Ljava/io/File;Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "chronoLocalDate"    # Ljava/time/chrono/ChronoLocalDate;
    .param p2, "localTime"    # Ljava/time/LocalTime;

    .line 1673
    const-string v0, "chronoLocalDate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1674
    const-string v0, "localTime"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1675
    invoke-interface {p1, p2}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public static isFileNewer(Ljava/io/File;Ljava/time/chrono/ChronoLocalDateTime;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 1691
    .local p1, "chronoLocalDateTime":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/ZoneId;)Z

    move-result v0

    return v0
.end method

.method public static isFileNewer(Ljava/io/File;Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/ZoneId;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p2, "zoneId"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;",
            "Ljava/time/ZoneId;",
            ")Z"
        }
    .end annotation

    .line 1708
    .local p1, "chronoLocalDateTime":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    const-string v0, "chronoLocalDateTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1709
    const-string v0, "zoneId"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1710
    invoke-interface {p1, p2}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v0

    return v0
.end method

.method public static isFileNewer(Ljava/io/File;Ljava/time/chrono/ChronoZonedDateTime;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 1725
    .local p1, "chronoZonedDateTime":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    const-string v0, "chronoZonedDateTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1726
    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;Ljava/time/Instant;)Z

    move-result v0

    return v0
.end method

.method public static isFileNewer(Ljava/io/File;Ljava/util/Date;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "date"    # Ljava/util/Date;

    .line 1739
    const-string v0, "date"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1740
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static isFileOlder(Ljava/io/File;J)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "timeMillis"    # J

    .line 1935
    const-string v0, "file"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1936
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1937
    return v1

    .line 1939
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isFileOlder(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "reference"    # Ljava/io/File;

    .line 1903
    const-string v0, "reference"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1907
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;J)Z

    move-result v0

    return v0

    .line 1904
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The reference file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isFileOlder(Ljava/io/File;Ljava/time/Instant;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "instant"    # Ljava/time/Instant;

    .line 1921
    const-string v0, "instant"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1922
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static isFileOlder(Ljava/io/File;Ljava/time/chrono/ChronoLocalDate;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "chronoLocalDate"    # Ljava/time/chrono/ChronoLocalDate;

    .line 1807
    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)Z

    move-result v0

    return v0
.end method

.method public static isFileOlder(Ljava/io/File;Ljava/time/chrono/ChronoLocalDate;Ljava/time/LocalTime;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "chronoLocalDate"    # Ljava/time/chrono/ChronoLocalDate;
    .param p2, "localTime"    # Ljava/time/LocalTime;

    .line 1824
    const-string v0, "chronoLocalDate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1825
    const-string v0, "localTime"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1826
    invoke-interface {p1, p2}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    return v0
.end method

.method public static isFileOlder(Ljava/io/File;Ljava/time/chrono/ChronoLocalDateTime;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 1842
    .local p1, "chronoLocalDateTime":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/ZoneId;)Z

    move-result v0

    return v0
.end method

.method public static isFileOlder(Ljava/io/File;Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/ZoneId;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p2, "zoneId"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;",
            "Ljava/time/ZoneId;",
            ")Z"
        }
    .end annotation

    .line 1859
    .local p1, "chronoLocalDateTime":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    const-string v0, "chronoLocalDateTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1860
    const-string v0, "zoneId"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1861
    invoke-interface {p1, p2}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v0

    return v0
.end method

.method public static isFileOlder(Ljava/io/File;Ljava/time/chrono/ChronoZonedDateTime;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 1876
    .local p1, "chronoZonedDateTime":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    const-string v0, "chronoZonedDateTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1877
    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;Ljava/time/Instant;)Z

    move-result v0

    return v0
.end method

.method public static isFileOlder(Ljava/io/File;Ljava/util/Date;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "date"    # Ljava/util/Date;

    .line 1889
    const-string v0, "date"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1890
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static isSymlink(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1966
    const-string v0, "file"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1967
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator;
    .locals 1
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "fileFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p2, "dirFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1991
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static iterateFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Iterator;
    .locals 1
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "extensions"    # [Ljava/lang/String;
    .param p2, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2009
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static iterateFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator;
    .locals 1
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "fileFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p2, "dirFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2036
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->listFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$lineIterator$0(Ljava/lang/Exception;Ljava/io/IOException;)V
    .locals 0
    .param p0, "ex"    # Ljava/lang/Exception;
    .param p1, "e"    # Ljava/io/IOException;

    .line 2092
    invoke-virtual {p0, p1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static lineIterator(Ljava/io/File;)Lorg/apache/commons/io/LineIterator;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2049
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->lineIterator(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;

    move-result-object v0

    return-object v0
.end method

.method public static lineIterator(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2087
    const/4 v0, 0x0

    .line 2089
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 2090
    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2091
    :catch_0
    move-exception v1

    .line 2092
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0, v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;Ljava/util/function/Consumer;)V

    .line 2093
    throw v1
.end method

.method public static listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;
    .locals 1
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "fileFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p2, "dirFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2128
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->innerListFilesOrDirectories(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection;
    .locals 2
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "extensions"    # [Ljava/lang/String;
    .param p2, "recursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2144
    if-nez p1, :cond_0

    .line 2145
    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .local v0, "filter":Lorg/apache/commons/io/filefilter/IOFileFilter;
    goto :goto_0

    .line 2147
    .end local v0    # "filter":Lorg/apache/commons/io/filefilter/IOFileFilter;
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->toSuffixes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2148
    .local v0, "suffixes":[Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/io/filefilter/SuffixFileFilter;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/filefilter/SuffixFileFilter;-><init>([Ljava/lang/String;)V

    move-object v0, v1

    .line 2150
    .local v0, "filter":Lorg/apache/commons/io/filefilter/IOFileFilter;
    :goto_0
    if-eqz p2, :cond_1

    sget-object v1, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/apache/commons/io/filefilter/FalseFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    :goto_1
    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static listFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;
    .locals 1
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "fileFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p2, "dirFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2176
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->innerListFilesOrDirectories(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static moveDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2194
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->validateMoveParameters(Ljava/io/File;Ljava/io/File;)V

    .line 2195
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2198
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2201
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 2202
    .local v0, "rename":Z
    if-nez v0, :cond_2

    .line 2203
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2206
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 2207
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 2208
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2209
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete original directory \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' after copy to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2204
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot move directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to a subdirectory of itself: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2213
    :cond_2
    :goto_0
    return-void

    .line 2199
    .end local v0    # "rename":Z
    :cond_3
    new-instance v0, Lorg/apache/commons/io/FileExistsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2196
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .locals 3
    .param p0, "src"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "createDestDir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2230
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->validateMoveParameters(Ljava/io/File;Ljava/io/File;)V

    .line 2231
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 2232
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2233
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create destination directories \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2236
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2240
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2243
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 2244
    return-void

    .line 2241
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2237
    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist [createDestDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2261
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->validateMoveParameters(Ljava/io/File;Ljava/io/File;)V

    .line 2262
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "\' is a directory"

    if-nez v0, :cond_4

    .line 2265
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "Destination \'"

    if-nez v0, :cond_3

    .line 2268
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2271
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 2272
    .local v0, "rename":Z
    if-nez v0, :cond_1

    .line 2273
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 2274
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2275
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 2276
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete original file \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' after copy to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2280
    :cond_1
    :goto_0
    return-void

    .line 2269
    .end local v0    # "rename":Z
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2266
    :cond_3
    new-instance v0, Lorg/apache/commons/io/FileExistsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2263
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .locals 3
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "createDestDir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2297
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->validateMoveParameters(Ljava/io/File;Ljava/io/File;)V

    .line 2298
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 2299
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2300
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create destination directories \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2303
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2307
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2310
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 2311
    return-void

    .line 2308
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2304
    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist [createDestDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p0, "src"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "createDestDir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2331
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->validateMoveParameters(Ljava/io/File;Ljava/io/File;)V

    .line 2332
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2333
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 2335
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V

    .line 2337
    :goto_0
    return-void
.end method

.method public static openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2360
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "File \'"

    if-eqz v0, :cond_2

    .line 2361
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2364
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2370
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 2365
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' cannot be read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2362
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2368
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2397
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2425
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2426
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "File \'"

    if-nez v0, :cond_1

    .line 2429
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2430
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' cannot be written to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2427
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2433
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 2434
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_4

    .line 2435
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 2436
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' could not be created"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2440
    .end local v0    # "parent":Ljava/io/File;
    :cond_4
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static readFileToByteArray(Ljava/io/File;)[B
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2453
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 2454
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 2456
    .local v1, "fileLength":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    invoke-static {v0, v1, v2}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;J)[B

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2457
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2456
    :cond_1
    return-object v3

    .line 2453
    .end local v1    # "fileLength":J
    :catchall_0
    move-exception v1

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "file":Ljava/io/File;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2457
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public static readFileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2472
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2503
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2486
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 2487
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2488
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2487
    :cond_0
    return-object v1

    .line 2486
    :catchall_0
    move-exception v1

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "charsetName":Ljava/nio/charset/Charset;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2488
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "charsetName":Ljava/nio/charset/Charset;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static readLines(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2518
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
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

    .line 2549
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
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

    .line 2532
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 2533
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2534
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2533
    :cond_0
    return-object v1

    .line 2532
    :catchall_0
    move-exception v1

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2534
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method private static setLastModified(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2560
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2563
    return-void

    .line 2561
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed setLastModified on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setUpEffectiveDirFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 3
    .param p0, "dirFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 2572
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/commons/io/filefilter/FalseFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/io/filefilter/DirectoryFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static setUpEffectiveFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 3
    .param p0, "fileFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 2583
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    sget-object v1, Lorg/apache/commons/io/filefilter/DirectoryFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {v1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->notFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    return-object v0
.end method

.method public static sizeOf(Ljava/io/File;)J
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 2611
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2616
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2617
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory0(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0

    .line 2619
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 2612
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2613
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static sizeOf0(Ljava/io/File;)J
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 2629
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2630
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory0(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0

    .line 2632
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static sizeOfAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 2655
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2660
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2661
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectoryBig0(Ljava/io/File;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 2663
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 2656
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2657
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static sizeOfBig0(Ljava/io/File;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "fileOrDir"    # Ljava/io/File;

    .line 2673
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2674
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectoryBig0(Ljava/io/File;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 2676
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static sizeOfDirectory(Ljava/io/File;)J
    .locals 2
    .param p0, "directory"    # Ljava/io/File;

    .line 2693
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->checkDirectory(Ljava/io/File;)V

    .line 2694
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory0(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static sizeOfDirectory0(Ljava/io/File;)J
    .locals 10
    .param p0, "directory"    # Ljava/io/File;

    .line 2703
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2704
    .local v0, "files":[Ljava/io/File;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 2705
    return-wide v1

    .line 2707
    :cond_0
    const-wide/16 v3, 0x0

    .line 2709
    .local v3, "size":J
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v0, v6

    .line 2710
    .local v7, "file":Ljava/io/File;
    invoke-static {v7}, Lorg/apache/commons/io/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2711
    invoke-static {v7}, Lorg/apache/commons/io/FileUtils;->sizeOf0(Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v3, v8

    .line 2712
    cmp-long v8, v3, v1

    if-gez v8, :cond_1

    .line 2713
    goto :goto_1

    .line 2709
    .end local v7    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2718
    :cond_2
    :goto_1
    return-wide v3
.end method

.method public static sizeOfDirectoryAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "directory"    # Ljava/io/File;

    .line 2730
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->checkDirectory(Ljava/io/File;)V

    .line 2731
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectoryBig0(Ljava/io/File;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static sizeOfDirectoryBig0(Ljava/io/File;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "directory"    # Ljava/io/File;

    .line 2741
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2742
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 2743
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v1

    .line 2745
    :cond_0
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 2747
    .local v1, "size":Ljava/math/BigInteger;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 2748
    .local v4, "file":Ljava/io/File;
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2749
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->sizeOfBig0(Ljava/io/File;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 2747
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2753
    :cond_2
    return-object v1
.end method

.method public static toFile(Ljava/net/URL;)Ljava/io/File;
    .locals 3
    .param p0, "url"    # Ljava/net/URL;

    .line 2772
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2775
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2776
    .local v0, "filename":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->decodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2777
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 2773
    .end local v0    # "filename":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs toFiles([Ljava/net/URL;)[Ljava/io/File;
    .locals 6
    .param p0, "urls"    # [Ljava/net/URL;

    .line 2802
    if-eqz p0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2805
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/io/File;

    .line 2806
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 2807
    aget-object v2, p0, v1

    .line 2808
    .local v2, "url":Ljava/net/URL;
    if-eqz v2, :cond_2

    .line 2809
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2813
    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->toFile(Ljava/net/URL;)Ljava/io/File;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_1

    .line 2810
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL could not be converted to a File: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2806
    .end local v2    # "url":Ljava/net/URL;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2816
    .end local v1    # "i":I
    :cond_3
    return-object v0

    .line 2803
    .end local v0    # "files":[Ljava/io/File;
    :cond_4
    :goto_2
    sget-object v0, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    return-object v0
.end method

.method private static varargs toSuffixes([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "extensions"    # [Ljava/lang/String;

    .line 2827
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 2828
    .local v0, "suffixes":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 2829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2828
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2831
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static varargs toURLs([Ljava/io/File;)[Ljava/net/URL;
    .locals 3
    .param p0, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2869
    array-length v0, p0

    new-array v0, v0, [Ljava/net/URL;

    .line 2871
    .local v0, "urls":[Ljava/net/URL;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 2872
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2871
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2875
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static touch(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2848
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2849
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 2851
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    .line 2852
    .local v0, "success":Z
    if-eqz v0, :cond_1

    .line 2855
    return-void

    .line 2853
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set the last modification time for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static validateListFilesParameters(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 3
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "fileFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 2889
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2892
    const-string v0, "fileFilter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2893
    return-void

    .line 2890
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter \'directory\' is not a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateMoveParameters(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p0, "source"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2908
    const-string v0, "source"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2909
    const-string v0, "destination"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2910
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2913
    return-void

    .line 2911
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static verifiedListFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 4
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2923
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2928
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2933
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2934
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 2937
    return-object v0

    .line 2935
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to list contents of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2929
    .end local v0    # "files":[Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2930
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2924
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2925
    .restart local v0    # "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static waitFor(Ljava/io/File;I)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "seconds"    # I

    .line 2953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 2954
    .local v0, "finishAt":J
    const/4 v2, 0x0

    .line 2956
    .local v2, "wasInterrupted":Z
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v3, v0, v3

    .line 2958
    .local v3, "remaining":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    .line 2959
    const/4 v5, 0x0

    .line 2970
    if-eqz v2, :cond_0

    .line 2971
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 2959
    :cond_0
    return v5

    .line 2962
    :cond_1
    const-wide/16 v5, 0x64

    :try_start_1
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2965
    :catch_0
    move-exception v5

    .line 2966
    .local v5, "ex":Ljava/lang/Exception;
    goto :goto_2

    .line 2963
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 2964
    .local v5, "ignore":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    .line 2967
    .end local v5    # "ignore":Ljava/lang/InterruptedException;
    :goto_1
    nop

    .line 2968
    .end local v3    # "remaining":J
    goto :goto_0

    .line 2970
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 2971
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 2974
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 2970
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    .line 2971
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 2973
    :cond_4
    throw v3
.end method

.method public static write(Ljava/io/File;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2988
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V

    .line 2989
    return-void
.end method

.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/CharSequence;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3050
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 3051
    return-void
.end method

.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/CharSequence;
    .param p2, "charsetName"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3070
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V

    .line 3071
    return-void
.end method

.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3017
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V

    .line 3018
    return-void
.end method

.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3033
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3034
    .local v0, "str":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0, p2, p3}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 3035
    return-void
.end method

.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/CharSequence;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3004
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V

    .line 3005
    return-void
.end method

.method public static writeByteArrayToFile(Ljava/io/File;[B)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3086
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[BZ)V

    .line 3087
    return-void
.end method

.method public static writeByteArrayToFile(Ljava/io/File;[BII)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3122
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[BIIZ)V

    .line 3123
    return-void
.end method

.method public static writeByteArrayToFile(Ljava/io/File;[BIIZ)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3141
    invoke-static {p0, p4}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 3142
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3143
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 3144
    .end local v0    # "out":Ljava/io/OutputStream;
    :cond_0
    return-void

    .line 3141
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "out":Ljava/io/OutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "data":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    .end local p4    # "append":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3143
    .restart local v0    # "out":Ljava/io/OutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "data":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    .restart local p4    # "append":Z
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static writeByteArrayToFile(Ljava/io/File;[BZ)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3103
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[BIIZ)V

    .line 3104
    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3229
    .local p2, "lines":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 3230
    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p3, "lineEnding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3270
    .local p2, "lines":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 3271
    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p3, "lineEnding"    # Ljava/lang/String;
    .param p4, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3290
    .local p2, "lines":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-static {p0, p4}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3291
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p2, p3, v0, p1}, Lorg/apache/commons/io/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3292
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 3293
    .end local v0    # "out":Ljava/io/OutputStream;
    return-void

    .line 3290
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "out":Ljava/io/OutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "charsetName":Ljava/lang/String;
    .end local p2    # "lines":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local p3    # "lineEnding":Ljava/lang/String;
    .end local p4    # "append":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3292
    .restart local v0    # "out":Ljava/io/OutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "charsetName":Ljava/lang/String;
    .restart local p2    # "lines":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local p3    # "lineEnding":Ljava/lang/String;
    .restart local p4    # "append":Z
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Z)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3248
    .local p2, "lines":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 3249
    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/util/Collection;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3157
    .local p1, "lines":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v0, v1}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 3158
    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p2, "lineEnding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3189
    .local p1, "lines":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 3190
    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/util/Collection;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p2, "lineEnding"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3208
    .local p1, "lines":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 3209
    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/util/Collection;Z)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3173
    .local p1, "lines":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p2}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 3174
    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3305
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 3306
    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3375
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3376
    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "charsetName"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3393
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 3394
    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3340
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 3341
    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3356
    invoke-static {p0, p3}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 3357
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p1, v0, p2}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3358
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 3359
    .end local v0    # "out":Ljava/io/OutputStream;
    :cond_0
    return-void

    .line 3356
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "out":Ljava/io/OutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "data":Ljava/lang/String;
    .end local p2    # "charset":Ljava/nio/charset/Charset;
    .end local p3    # "append":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3358
    .restart local v0    # "out":Ljava/io/OutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "data":Ljava/lang/String;
    .restart local p2    # "charset":Ljava/nio/charset/Charset;
    .restart local p3    # "append":Z
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3321
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 3322
    return-void
.end method
