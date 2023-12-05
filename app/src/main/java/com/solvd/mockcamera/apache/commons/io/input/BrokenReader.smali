.class public Lorg/apache/commons/io/input/BrokenReader;
.super Ljava/io/Reader;
.source "BrokenReader.java"


# instance fields
.field private final exception:Ljava/io/IOException;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Broken reader"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BrokenReader;-><init>(Ljava/io/IOException;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "exception"    # Ljava/io/IOException;

    .line 44
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/commons/io/input/BrokenReader;->exception:Ljava/io/IOException;

    .line 46
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

    .line 120
    iget-object v0, p0, Lorg/apache/commons/io/input/BrokenReader;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/commons/io/input/BrokenReader;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public read([CII)I
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/commons/io/input/BrokenReader;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/apache/commons/io/input/BrokenReader;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BrokenReader;->exception:Ljava/io/IOException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local p0    # "this":Lorg/apache/commons/io/input/BrokenReader;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 1
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/commons/io/input/BrokenReader;->exception:Ljava/io/IOException;

    throw v0
.end method
