.class public final enum Lorg/apache/commons/io/FileSystem;
.super Ljava/lang/Enum;
.source "FileSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/io/FileSystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/io/FileSystem;

.field public static final enum GENERIC:Lorg/apache/commons/io/FileSystem;

.field private static final IS_OS_LINUX:Z

.field private static final IS_OS_MAC:Z

.field private static final IS_OS_WINDOWS:Z

.field public static final enum LINUX:Lorg/apache/commons/io/FileSystem;

.field public static final enum MAC_OSX:Lorg/apache/commons/io/FileSystem;

.field private static final OS_NAME_WINDOWS_PREFIX:Ljava/lang/String; = "Windows"

.field public static final enum WINDOWS:Lorg/apache/commons/io/FileSystem;


# instance fields
.field private final casePreserving:Z

.field private final caseSensitive:Z

.field private final illegalFileNameChars:[C

.field private final maxFileNameLength:I

.field private final maxPathLength:I

.field private final reservedFileNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 39
    new-instance v9, Lorg/apache/commons/io/FileSystem;

    const/4 v10, 0x1

    new-array v7, v10, [C

    const/4 v11, 0x0

    aput-char v11, v7, v11

    new-array v8, v11, [Ljava/lang/String;

    const-string v1, "GENERIC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IZZII[C[Ljava/lang/String;)V

    sput-object v9, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    .line 44
    new-instance v0, Lorg/apache/commons/io/FileSystem;

    const/4 v1, 0x2

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    new-array v3, v11, [Ljava/lang/String;

    const-string v13, "LINUX"

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0xff

    const/16 v18, 0x1000

    move-object v12, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v12 .. v20}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IZZII[C[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    .line 56
    new-instance v2, Lorg/apache/commons/io/FileSystem;

    const/4 v3, 0x3

    new-array v4, v3, [C

    fill-array-data v4, :array_1

    new-array v5, v11, [Ljava/lang/String;

    const-string v20, "MAC_OSX"

    const/16 v21, 0x2

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0xff

    const/16 v25, 0x400

    move-object/from16 v19, v2

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    invoke-direct/range {v19 .. v27}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IZZII[C[Ljava/lang/String;)V

    sput-object v2, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    .line 69
    new-instance v4, Lorg/apache/commons/io/FileSystem;

    const/16 v5, 0x29

    new-array v5, v5, [C

    fill-array-data v5, :array_2

    const-string v12, "AUX"

    const-string v13, "COM1"

    const-string v14, "COM2"

    const-string v15, "COM3"

    const-string v16, "COM4"

    const-string v17, "COM5"

    const-string v18, "COM6"

    const-string v19, "COM7"

    const-string v20, "COM8"

    const-string v21, "COM9"

    const-string v22, "CON"

    const-string v23, "LPT1"

    const-string v24, "LPT2"

    const-string v25, "LPT3"

    const-string v26, "LPT4"

    const-string v27, "LPT5"

    const-string v28, "LPT6"

    const-string v29, "LPT7"

    const-string v30, "LPT8"

    const-string v31, "LPT9"

    const-string v32, "NUL"

    const-string v33, "PRN"

    filled-new-array/range {v12 .. v33}, [Ljava/lang/String;

    move-result-object v34

    const-string v27, "WINDOWS"

    const/16 v28, 0x3

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v31, 0xff

    const/16 v32, 0x7d00

    move-object/from16 v26, v4

    move-object/from16 v33, v5

    invoke-direct/range {v26 .. v34}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IZZII[C[Ljava/lang/String;)V

    sput-object v4, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    .line 34
    const/4 v5, 0x4

    new-array v5, v5, [Lorg/apache/commons/io/FileSystem;

    aput-object v9, v5, v11

    aput-object v0, v5, v10

    aput-object v2, v5, v1

    aput-object v4, v5, v3

    sput-object v5, Lorg/apache/commons/io/FileSystem;->$VALUES:[Lorg/apache/commons/io/FileSystem;

    .line 92
    const-string v0, "Linux"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_LINUX:Z

    .line 102
    const-string v0, "Mac"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_MAC:Z

    .line 117
    const-string v0, "Windows"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_WINDOWS:Z

    return-void

    :array_0
    .array-data 2
        0x0s
        0x2fs
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x2fs
        0x3as
    .end array-data

    nop

    :array_2
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x22s
        0x2as
        0x2fs
        0x3as
        0x3cs
        0x3es
        0x3fs
        0x5cs
        0x7cs
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IZZII[C[Ljava/lang/String;)V
    .locals 0
    .param p3, "caseSensitive"    # Z
    .param p4, "casePreserving"    # Z
    .param p5, "maxFileLength"    # I
    .param p6, "maxPathLength"    # I
    .param p7, "illegalFileNameChars"    # [C
    .param p8, "reservedFileNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII[C[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 216
    iput p5, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    .line 217
    iput p6, p0, Lorg/apache/commons/io/FileSystem;->maxPathLength:I

    .line 218
    const-string p1, "illegalFileNameChars"

    invoke-static {p7, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[C

    .line 219
    const-string p1, "reservedFileNames"

    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    .line 220
    iput-boolean p3, p0, Lorg/apache/commons/io/FileSystem;->caseSensitive:Z

    .line 221
    iput-boolean p4, p0, Lorg/apache/commons/io/FileSystem;->casePreserving:Z

    .line 222
    return-void
.end method

.method public static getCurrent()Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 125
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_LINUX:Z

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 128
    :cond_0
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_MAC:Z

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 131
    :cond_1
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_WINDOWS:Z

    if-eqz v0, :cond_2

    .line 132
    sget-object v0, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 134
    :cond_2
    sget-object v0, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method

.method private static getOsMatchesName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "osNamePrefix"    # Ljava/lang/String;

    .line 145
    const-string v0, "os.name"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/io/FileSystem;->isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;

    .line 163
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught a SecurityException reading the system property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'; the SystemUtils property value will default to null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    const/4 v1, 0x0

    return-object v1
.end method

.method private isIllegalFileNameChar(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 286
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "osName"    # Ljava/lang/String;
    .param p1, "osNamePrefix"    # Ljava/lang/String;

    .line 185
    if-nez p0, :cond_0

    .line 186
    const/4 v0, 0x0

    return v0

    .line 188
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/FileSystem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lorg/apache/commons/io/FileSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 34
    sget-object v0, Lorg/apache/commons/io/FileSystem;->$VALUES:[Lorg/apache/commons/io/FileSystem;

    invoke-virtual {v0}, [Lorg/apache/commons/io/FileSystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method


# virtual methods
.method public getIllegalFileNameChars()[C
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public getMaxFileNameLength()I
    .locals 1

    .line 239
    iget v0, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    return v0
.end method

.method public getMaxPathLength()I
    .locals 1

    .line 248
    iget v0, p0, Lorg/apache/commons/io/FileSystem;->maxPathLength:I

    return v0
.end method

.method public getReservedFileNames()[Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public isCasePreserving()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->casePreserving:Z

    return v0
.end method

.method public isCaseSensitive()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->caseSensitive:Z

    return v0
.end method

.method public isLegalFileName(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .line 299
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 302
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystem;->isReservedFileName(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    return v0

    .line 305
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 306
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    return v0

    .line 305
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 300
    :cond_4
    :goto_1
    return v0
.end method

.method public isReservedFileName(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .line 321
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toLegalFileName(Ljava/lang/String;C)Ljava/lang/String;
    .locals 5
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "replacement"    # C

    .line 337
    invoke-direct {p0, p2}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(C)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string v3, "\\0"

    goto :goto_0

    .line 341
    :cond_0
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    :goto_0
    aput-object v3, v2, v1

    invoke-virtual {p0}, Lorg/apache/commons/io/FileSystem;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    iget-object v3, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[C

    invoke-static {v3}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 339
    const-string v1, "The replacement character \'%s\' cannot be one of the %s illegal characters: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    if-le v0, v2, :cond_2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p1

    .line 345
    .local v0, "truncated":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .line 346
    .local v1, "changed":Z
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 347
    .local v2, "charArray":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 348
    aget-char v4, v2, v3

    invoke-direct {p0, v4}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 349
    aput-char p2, v2, v3

    .line 350
    const/4 v1, 0x1

    .line 347
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 353
    .end local v3    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v0

    :goto_3
    return-object v3
.end method
