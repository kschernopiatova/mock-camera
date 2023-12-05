.class public Lorg/apache/commons/io/output/DemuxOutputStream;
.super Ljava/io/OutputStream;
.source "DemuxOutputStream.java"


# instance fields
.field private final outputStreamThreadLocal:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->outputStreamThreadLocal:Ljava/lang/InheritableThreadLocal;

    return-void
.end method


# virtual methods
.method public bindStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;

    .line 39
    iget-object v0, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->outputStreamThreadLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 40
    .local v0, "stream":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->outputStreamThreadLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 41
    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->outputStreamThreadLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V

    .line 53
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->outputStreamThreadLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 65
    .local v0, "output":Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 68
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->outputStreamThreadLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 82
    .local v0, "output":Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 85
    :cond_0
    return-void
.end method
