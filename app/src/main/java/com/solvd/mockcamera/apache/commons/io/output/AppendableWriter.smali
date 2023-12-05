.class public Lorg/apache/commons/io/output/AppendableWriter;
.super Ljava/io/Writer;
.source "AppendableWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Appendable;",
        ">",
        "Ljava/io/Writer;"
    }
.end annotation


# instance fields
.field private final appendable:Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/apache/commons/io/output/AppendableWriter;, "Lorg/apache/commons/io/output/AppendableWriter<TT;>;"
    .local p1, "appendable":Ljava/lang/Appendable;, "TT;"
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/commons/io/output/AppendableWriter;->appendable:Ljava/lang/Appendable;

    .line 47
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/apache/commons/io/output/AppendableWriter;, "Lorg/apache/commons/io/output/AppendableWriter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/io/output/AppendableWriter;->appendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 59
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/commons/io/output/AppendableWriter;, "Lorg/apache/commons/io/output/AppendableWriter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/io/output/AppendableWriter;->appendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 72
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/io/output/AppendableWriter;, "Lorg/apache/commons/io/output/AppendableWriter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/io/output/AppendableWriter;->appendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 87
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    .local p0, "this":Lorg/apache/commons/io/output/AppendableWriter;, "Lorg/apache/commons/io/output/AppendableWriter<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/AppendableWriter;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    .local p0, "this":Lorg/apache/commons/io/output/AppendableWriter;, "Lorg/apache/commons/io/output/AppendableWriter<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/AppendableWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    .local p0, "this":Lorg/apache/commons/io/output/AppendableWriter;, "Lorg/apache/commons/io/output/AppendableWriter<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/AppendableWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/apache/commons/io/output/AppendableWriter;, "Lorg/apache/commons/io/output/AppendableWriter<TT;>;"
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/apache/commons/io/output/AppendableWriter;, "Lorg/apache/commons/io/output/AppendableWriter<TT;>;"
    return-void
.end method

.method public getAppendable()Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/apache/commons/io/output/AppendableWriter;, "Lorg/apache/commons/io/output/AppendableWriter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/io/output/AppendableWriter;->appendable:Ljava/lang/Appendable;

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/apache/commons/io/output/AppendableWriter;, "Lorg/apache/commons/io/output/AppendableWriter<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/io/output/AppendableWriter;->appendable:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 148
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/apache/commons/io/output/AppendableWriter;, "Lorg/apache/commons/io/output/AppendableWriter<TT;>;"
    const-string v0, "String is missing"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lorg/apache/commons/io/output/AppendableWriter;->appendable:Ljava/lang/Appendable;

    add-int v1, p2, p3

    invoke-interface {v0, p1, p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 163
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/commons/io/output/AppendableWriter;, "Lorg/apache/commons/io/output/AppendableWriter<TT;>;"
    const-string v0, "Character array is missing"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 135
    iget-object v1, p0, Lorg/apache/commons/io/output/AppendableWriter;->appendable:Ljava/lang/Appendable;

    add-int v2, p2, v0

    aget-char v2, p1, v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 131
    :cond_1
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
