.class public Lorg/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# static fields
.field private static final BASE_16:I = 0x10

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field private static final IPV4_MAX_OCTET_VALUE:I = 0xff

.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_MAX_HEX_DIGITS_PER_GROUP:I = 0x4

.field private static final IPV6_MAX_HEX_GROUPS:I = 0x8

.field private static final MAX_UNSIGNED_SHORT:I = 0xffff

.field private static final NOT_FOUND:I = -0x1

.field private static final OTHER_SEPARATOR:C

.field private static final REG_NAME_PART_PATTERN:Ljava/util/regex/Pattern;

.field private static final SYSTEM_SEPARATOR:C

.field private static final UNIX_SEPARATOR:C = '/'

.field private static final WINDOWS_SEPARATOR:C = '\\'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 106
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    .line 121
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    .line 128
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/16 v0, 0x2f

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_0

    .line 131
    :cond_0
    const/16 v0, 0x5c

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    .line 1517
    :goto_0
    nop

    .line 1518
    const-string v0, "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 1623
    const-string v0, "^[a-zA-Z0-9][a-zA-Z0-9-]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->REG_NAME_PART_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "basePath"    # Ljava/lang/String;
    .param p1, "fullFileNameToAdd"    # Ljava/lang/String;

    .line 496
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v0

    .line 497
    .local v0, "prefix":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 498
    return-object v1

    .line 500
    :cond_0
    if-lez v0, :cond_1

    .line 501
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 503
    :cond_1
    if-nez p0, :cond_2

    .line 504
    return-object v1

    .line 506
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 507
    .local v1, "len":I
    if-nez v1, :cond_3

    .line 508
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 510
    :cond_3
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 511
    .local v2, "ch":C
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 514
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static directoryContains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "canonicalParent"    # Ljava/lang/String;
    .param p1, "canonicalChild"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    if-eqz p0, :cond_2

    .line 548
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 549
    return v0

    .line 552
    :cond_0
    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v1, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    return v0

    .line 556
    :cond_1
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 545
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Directory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "includeSeparator"    # Z

    .line 948
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 949
    return-object v0

    .line 951
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    .line 952
    .local v1, "prefix":I
    if-gez v1, :cond_1

    .line 953
    return-object v0

    .line 955
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 956
    if-eqz p1, :cond_2

    .line 957
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 959
    :cond_2
    return-object p0

    .line 961
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 962
    .local v0, "index":I
    const/4 v2, 0x0

    if-gez v0, :cond_4

    .line 963
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 965
    :cond_4
    add-int v3, v0, p1

    .line 966
    .local v3, "end":I
    if-nez v3, :cond_5

    .line 967
    add-int/lit8 v3, v3, 0x1

    .line 969
    :cond_5
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static doGetPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "separatorAdd"    # I

    .line 864
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 865
    return-object v0

    .line 867
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    .line 868
    .local v1, "prefix":I
    if-gez v1, :cond_1

    .line 869
    return-object v0

    .line 871
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 872
    .local v0, "index":I
    add-int v2, v0, p1

    .line 873
    .local v2, "endIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    if-ltz v0, :cond_3

    if-lt v1, v2, :cond_2

    goto :goto_0

    .line 876
    :cond_2
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 877
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 878
    return-object v3

    .line 874
    .end local v3    # "path":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v3, ""

    return-object v3
.end method

.method private static doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;
    .locals 13
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "separator"    # C
    .param p2, "keepSeparator"    # Z

    .line 359
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 360
    return-object v0

    .line 363
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 366
    .local v1, "size":I
    if-nez v1, :cond_1

    .line 367
    return-object p0

    .line 369
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 370
    .local v2, "prefix":I
    if-gez v2, :cond_2

    .line 371
    return-object v0

    .line 374
    :cond_2
    add-int/lit8 v3, v1, 0x2

    new-array v3, v3, [C

    .line 375
    .local v3, "array":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 378
    sget-char v4, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne p1, v4, :cond_3

    sget-char v4, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    .line 379
    .local v4, "otherSeparator":C
    :cond_3
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_5

    .line 380
    aget-char v7, v3, v6

    if-ne v7, v4, :cond_4

    .line 381
    aput-char p1, v3, v6

    .line 379
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 386
    .end local v6    # "i":I
    :cond_5
    const/4 v6, 0x1

    .line 387
    .local v6, "lastIsDirectory":Z
    add-int/lit8 v7, v1, -0x1

    aget-char v7, v3, v7

    if-eq v7, p1, :cond_6

    .line 388
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "size":I
    .local v7, "size":I
    aput-char p1, v3, v1

    .line 389
    const/4 v6, 0x0

    move v1, v7

    .line 393
    .end local v7    # "size":I
    .restart local v1    # "size":I
    :cond_6
    add-int/lit8 v7, v2, 0x1

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_8

    .line 394
    aget-char v8, v3, v7

    if-ne v8, p1, :cond_7

    add-int/lit8 v8, v7, -0x1

    aget-char v8, v3, v8

    if-ne v8, p1, :cond_7

    .line 395
    add-int/lit8 v8, v7, -0x1

    sub-int v9, v1, v7

    invoke-static {v3, v7, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    add-int/lit8 v1, v1, -0x1

    .line 397
    add-int/lit8 v7, v7, -0x1

    .line 393
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 402
    .end local v7    # "i":I
    :cond_8
    add-int/lit8 v7, v2, 0x1

    .restart local v7    # "i":I
    :goto_2
    const/16 v8, 0x2e

    if-ge v7, v1, :cond_c

    .line 403
    aget-char v9, v3, v7

    if-ne v9, p1, :cond_b

    add-int/lit8 v9, v7, -0x1

    aget-char v9, v3, v9

    if-ne v9, v8, :cond_b

    add-int/lit8 v8, v2, 0x1

    if-eq v7, v8, :cond_9

    add-int/lit8 v8, v7, -0x2

    aget-char v8, v3, v8

    if-ne v8, p1, :cond_b

    .line 405
    :cond_9
    add-int/lit8 v8, v1, -0x1

    if-ne v7, v8, :cond_a

    .line 406
    const/4 v6, 0x1

    .line 408
    :cond_a
    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v9, v7, -0x1

    sub-int v10, v1, v7

    invoke-static {v3, v8, v3, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    add-int/lit8 v1, v1, -0x2

    .line 410
    add-int/lit8 v7, v7, -0x1

    .line 402
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 416
    .end local v7    # "i":I
    :cond_c
    add-int/lit8 v7, v2, 0x2

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v1, :cond_13

    .line 417
    aget-char v9, v3, v7

    if-ne v9, p1, :cond_12

    add-int/lit8 v9, v7, -0x1

    aget-char v9, v3, v9

    if-ne v9, v8, :cond_12

    add-int/lit8 v9, v7, -0x2

    aget-char v9, v3, v9

    if-ne v9, v8, :cond_12

    add-int/lit8 v9, v2, 0x2

    if-eq v7, v9, :cond_d

    add-int/lit8 v9, v7, -0x3

    aget-char v9, v3, v9

    if-ne v9, p1, :cond_12

    .line 419
    :cond_d
    add-int/lit8 v9, v2, 0x2

    if-ne v7, v9, :cond_e

    .line 420
    return-object v0

    .line 422
    :cond_e
    add-int/lit8 v9, v1, -0x1

    if-ne v7, v9, :cond_f

    .line 423
    const/4 v6, 0x1

    .line 426
    :cond_f
    add-int/lit8 v9, v7, -0x4

    .local v9, "j":I
    :goto_4
    if-lt v9, v2, :cond_11

    .line 427
    aget-char v10, v3, v9

    if-ne v10, p1, :cond_10

    .line 429
    add-int/lit8 v10, v7, 0x1

    add-int/lit8 v11, v9, 0x1

    sub-int v12, v1, v7

    invoke-static {v3, v10, v3, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    sub-int v10, v7, v9

    sub-int/2addr v1, v10

    .line 431
    add-int/lit8 v7, v9, 0x1

    .line 432
    goto :goto_5

    .line 426
    :cond_10
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 436
    :cond_11
    add-int/lit8 v10, v7, 0x1

    sub-int v11, v1, v7

    invoke-static {v3, v10, v3, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    add-int/lit8 v10, v7, 0x1

    sub-int/2addr v10, v2

    sub-int/2addr v1, v10

    .line 438
    add-int/lit8 v7, v2, 0x1

    .line 416
    .end local v9    # "j":I
    :cond_12
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 442
    .end local v7    # "i":I
    :cond_13
    if-gtz v1, :cond_14

    .line 443
    const-string v0, ""

    return-object v0

    .line 445
    :cond_14
    if-gt v1, v2, :cond_15

    .line 446
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 448
    :cond_15
    if-eqz v6, :cond_16

    if-eqz p2, :cond_16

    .line 449
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 451
    :cond_16
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v7, v1, -0x1

    invoke-direct {v0, v3, v5, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName1"    # Ljava/lang/String;
    .param p1, "fileName2"    # Ljava/lang/String;

    .line 1142
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z
    .locals 1
    .param p0, "fileName1"    # Ljava/lang/String;
    .param p1, "fileName2"    # Ljava/lang/String;
    .param p2, "normalized"    # Z
    .param p3, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .line 1208
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1211
    :cond_0
    if-eqz p2, :cond_1

    .line 1212
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1213
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1214
    const-string v0, "Error normalizing one or both of the file names"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1215
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1217
    :cond_1
    if-nez p3, :cond_2

    .line 1218
    sget-object p3, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1220
    :cond_2
    invoke-virtual {p3, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1209
    :cond_3
    :goto_0
    if-nez p0, :cond_4

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName1"    # Ljava/lang/String;
    .param p1, "fileName2"    # Ljava/lang/String;

    .line 1173
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName1"    # Ljava/lang/String;
    .param p1, "fileName2"    # Ljava/lang/String;

    .line 1190
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName1"    # Ljava/lang/String;
    .param p1, "fileName2"    # Ljava/lang/String;

    .line 1157
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method private static failIfNullBytePresent(Ljava/lang/String;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 1006
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1007
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1008
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_0

    .line 1007
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1009
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null byte present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1013
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static getAdsCriticalOffset(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 1084
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1085
    .local v0, "offset1":I
    sget-char v1, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1086
    .local v1, "offset2":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1087
    if-ne v1, v2, :cond_0

    .line 1088
    const/4 v2, 0x0

    return v2

    .line 1090
    :cond_0
    add-int/lit8 v2, v1, 0x1

    return v2

    .line 1092
    :cond_1
    if-ne v1, v2, :cond_2

    .line 1093
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 1095
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 1034
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1066
    if-nez p0, :cond_0

    .line 1067
    const/4 v0, 0x0

    return-object v0

    .line 1069
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 1070
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1071
    const-string v1, ""

    return-object v1

    .line 1073
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 907
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 937
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 991
    if-nez p0, :cond_0

    .line 992
    const/4 v0, 0x0

    return-object v0

    .line 994
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 995
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 996
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 825
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 853
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 785
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 786
    return-object v0

    .line 788
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    .line 789
    .local v1, "len":I
    if-gez v1, :cond_1

    .line 790
    return-object v0

    .line 792
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v1, v0, :cond_2

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 796
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 798
    return-object v0
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;

    .line 639
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 640
    return v0

    .line 642
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 643
    .local v1, "len":I
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 644
    return v2

    .line 646
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 647
    .local v2, "ch0":C
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_2

    .line 648
    return v0

    .line 650
    :cond_2
    const/16 v4, 0x7e

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v1, v6, :cond_4

    .line 651
    if-ne v2, v4, :cond_3

    .line 652
    return v5

    .line 654
    :cond_3
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v0

    return v0

    .line 656
    :cond_4
    const/16 v7, 0x5c

    const/16 v8, 0x2f

    if-ne v2, v4, :cond_8

    .line 657
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 658
    .local v3, "posUnix":I
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 659
    .local v4, "posWin":I
    if-ne v3, v0, :cond_5

    if-ne v4, v0, :cond_5

    .line 660
    add-int/lit8 v0, v1, 0x1

    return v0

    .line 662
    :cond_5
    if-ne v3, v0, :cond_6

    move v5, v4

    goto :goto_0

    :cond_6
    move v5, v3

    :goto_0
    move v3, v5

    .line 663
    if-ne v4, v0, :cond_7

    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v4

    .line 664
    .end local v4    # "posWin":I
    .local v0, "posWin":I
    :goto_1
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v6

    return v4

    .line 666
    .end local v0    # "posWin":I
    .end local v3    # "posUnix":I
    :cond_8
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 667
    .local v4, "ch1":C
    if-ne v4, v3, :cond_d

    .line 668
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 669
    const/16 v3, 0x41

    if-lt v2, v3, :cond_b

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_b

    .line 670
    if-eq v1, v5, :cond_a

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    .line 673
    :cond_9
    const/4 v0, 0x3

    return v0

    .line 671
    :cond_a
    :goto_2
    return v5

    .line 674
    :cond_b
    if-ne v2, v8, :cond_c

    .line 675
    return v6

    .line 677
    :cond_c
    return v0

    .line 679
    :cond_d
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {v4}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 680
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 681
    .restart local v3    # "posUnix":I
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 682
    .local v7, "posWin":I
    if-ne v3, v0, :cond_e

    if-eq v7, v0, :cond_13

    :cond_e
    if-eq v3, v5, :cond_13

    if-ne v7, v5, :cond_f

    goto :goto_5

    .line 685
    :cond_f
    if-ne v3, v0, :cond_10

    move v8, v7

    goto :goto_3

    :cond_10
    move v8, v3

    :goto_3
    move v3, v8

    .line 686
    if-ne v7, v0, :cond_11

    move v8, v3

    goto :goto_4

    :cond_11
    move v8, v7

    :goto_4
    move v7, v8

    .line 687
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v6

    .line 688
    .local v8, "pos":I
    add-int/lit8 v6, v8, -0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 689
    .local v5, "hostnamePart":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/commons/io/FilenameUtils;->isValidHostName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    move v0, v8

    :cond_12
    return v0

    .line 683
    .end local v5    # "hostnamePart":Ljava/lang/String;
    .end local v8    # "pos":I
    :cond_13
    :goto_5
    return v0

    .line 691
    .end local v3    # "posUnix":I
    .end local v7    # "posWin":I
    :cond_14
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v0

    return v0
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 739
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 740
    return v0

    .line 742
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 744
    const/16 v1, 0x3a

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getAdsCriticalOffset(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 745
    .local v1, "offset":I
    if-ne v1, v0, :cond_1

    goto :goto_0

    .line 746
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "NTFS ADS separator (\':\') in file name is forbidden."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    .end local v1    # "offset":I
    :cond_2
    :goto_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 750
    .local v1, "extensionPos":I
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v2

    .line 751
    .local v2, "lastSeparator":I
    if-le v2, v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 708
    if-nez p0, :cond_0

    .line 709
    const/4 v0, -0x1

    return v0

    .line 711
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 712
    .local v0, "lastUnixPos":I
    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 713
    .local v1, "lastWindowsPos":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public static isExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .line 1237
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1238
    return v0

    .line 1240
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 1242
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1245
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, "fileExt":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1243
    .end local v0    # "fileExt":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1292
    .local p1, "extensions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1293
    return v0

    .line 1295
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 1297
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1300
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1301
    .local v2, "fileExt":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1302
    .local v4, "extension":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1303
    return v1

    .line 1305
    .end local v4    # "extension":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1306
    :cond_3
    return v0

    .line 1298
    .end local v2    # "fileExt":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method

.method public static varargs isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "extensions"    # [Ljava/lang/String;

    .line 1262
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1263
    return v0

    .line 1265
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 1267
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    array-length v2, p1

    if-nez v2, :cond_1

    goto :goto_1

    .line 1270
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1271
    .local v2, "fileExt":Ljava/lang/String;
    array-length v3, p1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    .line 1272
    .local v5, "extension":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1273
    return v1

    .line 1271
    .end local v5    # "extension":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1276
    :cond_3
    return v0

    .line 1268
    .end local v2    # "fileExt":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method

.method private static isIPv4Address(Ljava/lang/String;)Z
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .line 1529
    sget-object v0, Lorg/apache/commons/io/FilenameUtils;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1530
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 1535
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x1

    if-gt v1, v3, :cond_3

    .line 1536
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1537
    .local v5, "ipSegment":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1538
    .local v6, "iIpSegment":I
    const/16 v7, 0xff

    if-le v6, v7, :cond_1

    .line 1539
    return v2

    .line 1542
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v4, :cond_2

    const-string v4, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1543
    return v2

    .line 1535
    .end local v5    # "ipSegment":Ljava/lang/String;
    .end local v6    # "iIpSegment":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1548
    .end local v1    # "i":I
    :cond_3
    return v4

    .line 1531
    :cond_4
    :goto_1
    return v2
.end method

.method private static isIPv6Address(Ljava/lang/String;)Z
    .locals 10
    .param p0, "inet6Address"    # Ljava/lang/String;

    .line 1564
    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1565
    .local v1, "containsCompressedZeroes":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1566
    return v2

    .line 1568
    :cond_0
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1569
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1570
    :cond_2
    return v2

    .line 1572
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1573
    .local v3, "octets":[Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 1574
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1575
    .local v4, "octetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1577
    const-string v0, ""

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1578
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1579
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1581
    :cond_5
    :goto_0
    sget-object v0, Lorg/apache/commons/io/FilenameUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    .line 1583
    .end local v4    # "octetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    array-length v0, v3

    const/16 v4, 0x8

    if-le v0, v4, :cond_7

    .line 1584
    return v2

    .line 1586
    :cond_7
    const/4 v0, 0x0

    .line 1587
    .local v0, "validOctets":I
    const/4 v5, 0x0

    .line 1588
    .local v5, "emptyOctets":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    array-length v7, v3

    const/4 v8, 0x1

    if-ge v6, v7, :cond_e

    .line 1589
    aget-object v7, v3, v6

    .line 1590
    .local v7, "octet":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_8

    .line 1591
    add-int/lit8 v5, v5, 0x1

    .line 1592
    if-le v5, v8, :cond_c

    .line 1593
    return v2

    .line 1596
    :cond_8
    const/4 v5, 0x0

    .line 1598
    array-length v9, v3

    sub-int/2addr v9, v8

    if-ne v6, v9, :cond_a

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1599
    invoke-static {v7}, Lorg/apache/commons/io/FilenameUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1600
    return v2

    .line 1602
    :cond_9
    add-int/lit8 v0, v0, 0x2

    .line 1603
    goto :goto_2

    .line 1605
    :cond_a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-le v8, v9, :cond_b

    .line 1606
    return v2

    .line 1608
    :cond_b
    const/4 v8, 0x0

    .line 1610
    .local v8, "octetInt":I
    const/16 v9, 0x10

    :try_start_0
    invoke-static {v7, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 1613
    nop

    .line 1614
    if-ltz v8, :cond_d

    const v9, 0xffff

    if-le v8, v9, :cond_c

    goto :goto_3

    .line 1618
    .end local v8    # "octetInt":I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 1588
    .end local v7    # "octet":Ljava/lang/String;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1615
    .restart local v7    # "octet":Ljava/lang/String;
    .restart local v8    # "octetInt":I
    :cond_d
    :goto_3
    return v2

    .line 1611
    :catch_0
    move-exception v4

    .line 1612
    .local v4, "e":Ljava/lang/NumberFormatException;
    return v2

    .line 1620
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "index":I
    .end local v7    # "octet":Ljava/lang/String;
    .end local v8    # "octetInt":I
    :cond_e
    if-gt v0, v4, :cond_10

    if-ge v0, v4, :cond_f

    if-eqz v1, :cond_10

    :cond_f
    move v2, v8

    :cond_10
    return v2
.end method

.method private static isRFC3986HostName(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 1634
    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1635
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 1636
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 1638
    array-length v2, v0

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    return v3

    .line 1640
    :cond_1
    sget-object v2, Lorg/apache/commons/io/FilenameUtils;->REG_NAME_PART_PATTERN:Ljava/util/regex/Pattern;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1641
    return v4

    .line 1635
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1644
    .end local v1    # "i":I
    :cond_3
    return v3
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 160
    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isSystemWindows()Z
    .locals 2

    .line 149
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidHostName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1514
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->isRFC3986HostName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 205
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "unixSeparator"    # Z

    .line 252
    if-eqz p1, :cond_0

    const/16 v0, 0x2f

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    .line 253
    .local v0, "separator":C
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 299
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "unixSeparator"    # Z

    .line 346
    if-eqz p1, :cond_0

    const/16 v0, 0x2f

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    .line 347
    .local v0, "separator":C
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 1117
    if-nez p0, :cond_0

    .line 1118
    const/4 v0, 0x0

    return-object v0

    .line 1120
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 1122
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 1123
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1124
    return-object p0

    .line 1126
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 593
    if-nez p0, :cond_0

    .line 594
    const/4 v0, 0x0

    return-object v0

    .line 596
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 567
    if-eqz p0, :cond_1

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 568
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 580
    if-eqz p0, :cond_1

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    const/16 v1, 0x5c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 581
    :cond_1
    :goto_0
    return-object p0
.end method

.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p0, "text"    # Ljava/lang/String;

    .line 1470
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x2a

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1471
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v4

    return-object v0

    .line 1474
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1475
    .local v1, "array":[C
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1476
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1477
    .local v5, "buffer":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 1478
    .local v6, "prevChar":C
    array-length v7, v1

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_6

    aget-char v9, v1, v8

    .line 1479
    .local v9, "ch":C
    if-eq v9, v0, :cond_2

    if-ne v9, v3, :cond_1

    goto :goto_1

    .line 1490
    :cond_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1480
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1481
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1484
    :cond_3
    if-ne v9, v0, :cond_4

    .line 1485
    const-string v10, "?"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1486
    :cond_4
    if-eq v6, v3, :cond_5

    .line 1487
    const-string v10, "*"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1492
    :cond_5
    :goto_2
    move v6, v9

    .line 1478
    .end local v9    # "ch":C
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1494
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 1495
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1498
    :cond_7
    sget-object v0, Lorg/apache/commons/io/FilenameUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;

    .line 1333
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;
    .param p2, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .line 1377
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 1378
    return v0

    .line 1380
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_f

    if-nez p1, :cond_1

    goto/16 :goto_5

    .line 1383
    :cond_1
    if-nez p2, :cond_2

    .line 1384
    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    move-object v2, p2

    goto :goto_0

    .line 1383
    :cond_2
    move-object v2, p2

    .line 1386
    .end local p2    # "caseSensitivity":Lorg/apache/commons/io/IOCase;
    .local v2, "caseSensitivity":Lorg/apache/commons/io/IOCase;
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1387
    .local v3, "wcs":[Ljava/lang/String;
    const/4 p2, 0x0

    .line 1388
    .local p2, "anyChars":Z
    const/4 v4, 0x0

    .line 1389
    .local v4, "textIdx":I
    const/4 v5, 0x0

    .line 1390
    .local v5, "wcsIdx":I
    new-instance v6, Ljava/util/ArrayDeque;

    array-length v7, v3

    invoke-direct {v6, v7}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 1394
    .local v6, "backtrack":Ljava/util/Deque;, "Ljava/util/Deque<[I>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Deque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1395
    invoke-interface {v6}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 1396
    .local v7, "array":[I
    aget v5, v7, v1

    .line 1397
    aget v4, v7, v0

    .line 1398
    const/4 p2, 0x1

    .line 1402
    .end local v7    # "array":[I
    :cond_4
    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_d

    .line 1404
    aget-object v7, v3, v5

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1406
    add-int/lit8 v4, v4, 0x1

    .line 1407
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v4, v7, :cond_5

    .line 1408
    goto :goto_4

    .line 1410
    :cond_5
    const/4 p2, 0x0

    goto :goto_3

    .line 1412
    :cond_6
    aget-object v7, v3, v5

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1414
    const/4 p2, 0x1

    .line 1415
    array-length v7, v3

    sub-int/2addr v7, v0

    if-ne v5, v7, :cond_c

    .line 1416
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_3

    .line 1421
    :cond_7
    if-eqz p2, :cond_a

    .line 1423
    aget-object v7, v3, v5

    invoke-virtual {v2, p0, v4, v7}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 1424
    const/4 v7, -0x1

    if-ne v4, v7, :cond_8

    .line 1426
    goto :goto_4

    .line 1428
    :cond_8
    add-int/lit8 v7, v4, 0x1

    aget-object v8, v3, v5

    invoke-virtual {v2, p0, v7, v8}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    .line 1429
    .local v7, "repeat":I
    if-ltz v7, :cond_9

    .line 1430
    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v5, v8, v1

    aput v7, v8, v0

    invoke-interface {v6, v8}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1432
    .end local v7    # "repeat":I
    :cond_9
    goto :goto_2

    .line 1434
    :cond_a
    aget-object v7, v3, v5

    invoke-virtual {v2, p0, v4, v7}, Lorg/apache/commons/io/IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1436
    goto :goto_4

    .line 1441
    :cond_b
    :goto_2
    aget-object v7, v3, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    .line 1442
    const/4 p2, 0x0

    .line 1445
    :cond_c
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1449
    :cond_d
    :goto_4
    array-length v7, v3

    if-ne v5, v7, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_e

    .line 1450
    return v0

    .line 1453
    :cond_e
    invoke-interface {v6}, Ljava/util/Deque;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1455
    return v1

    .line 1381
    .end local v2    # "caseSensitivity":Lorg/apache/commons/io/IOCase;
    .end local v3    # "wcs":[Ljava/lang/String;
    .end local v4    # "textIdx":I
    .end local v5    # "wcsIdx":I
    .end local v6    # "backtrack":Ljava/util/Deque;, "Ljava/util/Deque<[I>;"
    .local p2, "caseSensitivity":Lorg/apache/commons/io/IOCase;
    :cond_f
    :goto_5
    return v1
.end method

.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;

    .line 1359
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method
