.class public Lorg/apache/commons/io/input/CharSequenceReader;
.super Ljava/io/Reader;
.source "CharSequenceReader.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x33aef9076e3a9d04L


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;

.field private final end:Ljava/lang/Integer;

.field private idx:I

.field private mark:I

.field private final start:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/CharSequenceReader;-><init>(Ljava/lang/CharSequence;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 96
    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/CharSequenceReader;-><init>(Ljava/lang/CharSequence;II)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 117
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 118
    if-ltz p2, :cond_2

    .line 122
    if-lt p3, p2, :cond_1

    .line 129
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    .line 130
    iput p2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->start:I

    .line 131
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->end:Ljava/lang/Integer;

    .line 133
    iput p2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 134
    iput p2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    .line 135
    return-void

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End index is less than start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start index is less than zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private end()I
    .locals 2

    .line 156
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->end:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private start()I
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->start:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 164
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->start:I

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 165
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    .line 166
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readAheadLimit"    # I

    .line 185
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    .line 186
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    .line 206
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 207
    const/4 v0, -0x1

    return v0

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 6
    .param p1, "array"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 223
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    .line 224
    return v2

    .line 226
    :cond_0
    const-string v0, "array"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    if-ltz p3, :cond_6

    if-ltz p2, :cond_6

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_6

    .line 232
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 233
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 234
    .local v0, "count":I
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    add-int v3, v2, v0

    invoke-virtual {v1, v2, v3, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 235
    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 236
    return v0

    .line 238
    .end local v0    # "count":I
    :cond_1
    instance-of v1, v0, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    .line 239
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 240
    .restart local v0    # "count":I
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    add-int v3, v2, v0

    invoke-virtual {v1, v2, v3, p1, p2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 241
    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 242
    return v0

    .line 244
    .end local v0    # "count":I
    :cond_2
    instance-of v0, v0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_3

    .line 245
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 246
    .restart local v0    # "count":I
    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    add-int v3, v2, v0

    invoke-virtual {v1, v2, v3, p1, p2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 247
    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 248
    return v0

    .line 251
    .end local v0    # "count":I
    :cond_3
    const/4 v0, 0x0

    .line 252
    .restart local v0    # "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_5

    .line 253
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->read()I

    move-result v3

    .line 254
    .local v3, "c":I
    if-ne v3, v2, :cond_4

    .line 255
    return v0

    .line 257
    :cond_4
    add-int v4, p2, v1

    int-to-char v5, v3

    aput-char v5, p1, v4

    .line 258
    nop

    .end local v3    # "c":I
    add-int/lit8 v0, v0, 0x1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "i":I
    :cond_5
    return v0

    .line 228
    .end local v0    # "count":I
    :cond_6
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

.method public ready()Z
    .locals 2

    .line 175
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 269
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 270
    return-void
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J

    .line 280
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 284
    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 285
    return-wide v0

    .line 287
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    move-result v0

    int-to-long v0, v0

    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 288
    .local v0, "dest":I
    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    sub-int v1, v0, v1

    .line 289
    .local v1, "count":I
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 290
    int-to-long v2, v1

    return-wide v2

    .line 281
    .end local v0    # "dest":I
    .end local v1    # "count":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of characters to skip is less than zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 301
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->start()I

    move-result v1

    invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->end()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 302
    .local v0, "subSequence":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
