.class public Lorg/apache/commons/io/output/BrokenWriter;
.super Ljava/io/Writer;
.source "BrokenWriter.java"


# instance fields
.field private final exception:Ljava/io/IOException;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Broken writer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/BrokenWriter;-><init>(Ljava/io/IOException;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "exception"    # Ljava/io/IOException;

    .line 43
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/commons/io/output/BrokenWriter;->exception:Ljava/io/IOException;

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/commons/io/output/BrokenWriter;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/commons/io/output/BrokenWriter;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public write([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/commons/io/output/BrokenWriter;->exception:Ljava/io/IOException;

    throw v0
.end method
