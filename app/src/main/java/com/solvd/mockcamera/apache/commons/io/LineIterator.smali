.class public Lorg/apache/commons/io/LineIterator;
.super Ljava/lang/Object;
.source "LineIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;

.field private cachedLine:Ljava/lang/String;

.field private finished:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    .line 68
    if-eqz p1, :cond_1

    .line 71
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 72
    move-object v0, p1

    check-cast v0, Ljava/io/BufferedReader;

    iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static closeQuietly(Lorg/apache/commons/io/LineIterator;)V
    .locals 0
    .param p0, "iterator"    # Lorg/apache/commons/io/LineIterator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 186
    return-void
.end method

.method static synthetic lambda$hasNext$0(Ljava/io/IOException;Ljava/io/IOException;)V
    .locals 0
    .param p0, "ioe"    # Ljava/io/IOException;
    .param p1, "e"    # Ljava/io/IOException;

    .line 106
    invoke-virtual {p0, p1}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

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

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V

    .line 162
    return-void
.end method

.method public hasNext()Z
    .locals 4

    .line 89
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 90
    return v1

    .line 91
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 92
    return v2

    .line 96
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 98
    iput-boolean v1, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    .line 99
    return v2

    .line 100
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/LineIterator;->isValidLine(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return v1

    .line 104
    .end local v0    # "line":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/io/LineIterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/LineIterator$$ExternalSyntheticLambda0;-><init>(Ljava/io/IOException;)V

    invoke-static {p0, v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;Ljava/util/function/Consumer;)V

    .line 107
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected isValidLine(Ljava/lang/String;)Z
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextLine()Ljava/lang/String;
    .locals 2

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 144
    .local v0, "currentLine":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 145
    return-object v0

    .line 141
    .end local v0    # "currentLine":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more lines"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove unsupported on LineIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
