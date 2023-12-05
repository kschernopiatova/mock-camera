.class public Lorg/apache/commons/io/input/CharacterSetFilterReader;
.super Lorg/apache/commons/io/input/AbstractCharacterFilterReader;
.source "CharacterSetFilterReader.java"


# static fields
.field private static final EMPTY_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final skipSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/CharacterSetFilterReader;->EMPTY_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/util/Set;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p2, "skip":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;-><init>(Ljava/io/Reader;)V

    .line 46
    if-nez p2, :cond_0

    sget-object v0, Lorg/apache/commons/io/input/CharacterSetFilterReader;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/input/CharacterSetFilterReader;->skipSet:Ljava/util/Set;

    .line 47
    return-void
.end method


# virtual methods
.method protected filter(I)Z
    .locals 2
    .param p1, "ch"    # I

    .line 52
    iget-object v0, p0, Lorg/apache/commons/io/input/CharacterSetFilterReader;->skipSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
