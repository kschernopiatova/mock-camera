.class public Lorg/apache/commons/io/input/CharacterFilterReader;
.super Lorg/apache/commons/io/input/AbstractCharacterFilterReader;
.source "CharacterFilterReader.java"


# instance fields
.field private final skip:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 0
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "skip"    # I

    .line 39
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;-><init>(Ljava/io/Reader;)V

    .line 40
    iput p2, p0, Lorg/apache/commons/io/input/CharacterFilterReader;->skip:I

    .line 41
    return-void
.end method


# virtual methods
.method protected filter(I)Z
    .locals 1
    .param p1, "ch"    # I

    .line 45
    iget v0, p0, Lorg/apache/commons/io/input/CharacterFilterReader;->skip:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
