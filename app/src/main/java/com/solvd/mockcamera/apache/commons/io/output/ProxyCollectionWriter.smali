.class public Lorg/apache/commons/io/output/ProxyCollectionWriter;
.super Lorg/apache/commons/io/output/FilterCollectionWriter;
.source "ProxyCollectionWriter.java"


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

    .line 44
    .local p1, "writers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/Writer;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;-><init>(Ljava/util/Collection;)V

    .line 45
    return-void
.end method

.method public varargs constructor <init>([Ljava/io/Writer;)V
    .locals 0
    .param p1, "writers"    # [Ljava/io/Writer;

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;-><init>([Ljava/io/Writer;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected afterWrite(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public append(C)Ljava/io/Writer;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->beforeWrite(I)V

    .line 83
    invoke-super {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->append(C)Ljava/io/Writer;

    .line 84
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->handleIOException(Ljava/io/IOException;)V

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
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

    .line 101
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 102
    .local v0, "len":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->beforeWrite(I)V

    .line 103
    invoke-super {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 104
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "len":I
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->handleIOException(Ljava/io/IOException;)V

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
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

    .line 123
    sub-int v0, p3, p2

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->beforeWrite(I)V

    .line 124
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    .line 125
    sub-int v0, p3, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->handleIOException(Ljava/io/IOException;)V

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
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
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->append(C)Ljava/io/Writer;

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
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method protected beforeWrite(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/output/FilterCollectionWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->handleIOException(Ljava/io/IOException;)V

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/output/FilterCollectionWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->handleIOException(Ljava/io/IOException;)V

    .line 173
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    throw p1
.end method

.method public write(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->beforeWrite(I)V

    .line 236
    invoke-super {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->write(I)V

    .line 237
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->handleIOException(Ljava/io/IOException;)V

    .line 241
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 253
    .local v0, "len":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->beforeWrite(I)V

    .line 254
    invoke-super {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->write(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v0    # "len":I
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->handleIOException(Ljava/io/IOException;)V

    .line 259
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->beforeWrite(I)V

    .line 273
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->write(Ljava/lang/String;II)V

    .line 274
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->handleIOException(Ljava/io/IOException;)V

    .line 278
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public write([C)V
    .locals 1
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->length([C)I

    move-result v0

    .line 199
    .local v0, "len":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->beforeWrite(I)V

    .line 200
    invoke-super {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->write([C)V

    .line 201
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "len":I
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->handleIOException(Ljava/io/IOException;)V

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
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

    .line 218
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->beforeWrite(I)V

    .line 219
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->write([CII)V

    .line 220
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyCollectionWriter;->handleIOException(Ljava/io/IOException;)V

    .line 224
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
