.class public Lorg/apache/commons/io/output/TeeWriter;
.super Lorg/apache/commons/io/output/ProxyCollectionWriter;
.source "TeeWriter.java"


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "writers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/Writer;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyCollectionWriter;-><init>(Ljava/util/Collection;)V

    .line 41
    return-void
.end method

.method public varargs constructor <init>([Ljava/io/Writer;)V
    .locals 0
    .param p1, "writers"    # [Ljava/io/Writer;

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyCollectionWriter;-><init>([Ljava/io/Writer;)V

    .line 50
    return-void
.end method
