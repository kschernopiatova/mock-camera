.class public abstract Lorg/apache/commons/io/input/AbstractCharacterFilterReader;
.super Ljava/io/FilterReader;
.source "AbstractCharacterFilterReader.java"


# direct methods
.method protected constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "reader"    # Ljava/io/Reader;

    .line 35
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract filter(I)Z
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 43
    .local v0, "ch":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->filter(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    return v0

    .line 43
    :cond_0
    goto :goto_0
.end method

.method public read([CII)I
    .locals 4
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterReader;->read([CII)I

    move-result v0

    .line 59
    .local v0, "read":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 60
    return v1

    .line 62
    :cond_0
    add-int/lit8 v1, p2, -0x1

    .line 63
    .local v1, "pos":I
    move v2, p2

    .local v2, "readPos":I
    :goto_0
    add-int v3, p2, v0

    if-ge v2, v3, :cond_3

    .line 64
    aget-char v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->filter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    goto :goto_1

    .line 67
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 68
    if-ge v1, v2, :cond_2

    .line 69
    aget-char v3, p1, v2

    aput-char v3, p1, v1

    .line 63
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "readPos":I
    :cond_3
    sub-int v2, v1, p2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method
