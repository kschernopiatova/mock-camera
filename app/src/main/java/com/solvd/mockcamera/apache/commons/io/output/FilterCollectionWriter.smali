.class public Lorg/apache/commons/io/output/FilterCollectionWriter;
.super Ljava/io/Writer;
.source "FilterCollectionWriter.java"


# instance fields
.field protected final EMPTY_WRITERS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;"
        }
    .end annotation
.end field

.field protected final writers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "writers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/Writer;>;"
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->EMPTY_WRITERS:Ljava/util/Collection;

    .line 64
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    .line 65
    return-void
.end method

.method protected varargs constructor <init>([Ljava/io/Writer;)V
    .locals 1
    .param p1, "writers"    # [Ljava/io/Writer;

    .line 72
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->EMPTY_WRITERS:Ljava/util/Collection;

    .line 73
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    .line 74
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 6
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "causeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    const/4 v1, 0x0

    .line 80
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    .line 81
    .local v3, "w":Ljava/io/Writer;
    if-eqz v3, :cond_0

    .line 83
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 84
    :catch_0
    move-exception v4

    .line 85
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/io/IOIndexedException;

    invoke-direct {v5, v1, v4}, Lorg/apache/commons/io/IOIndexedException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    nop

    .end local v3    # "w":Ljava/io/Writer;
    add-int/lit8 v1, v1, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    return-object p0

    .line 91
    :cond_2
    new-instance v2, Lorg/apache/commons/io/IOExceptionList;

    invoke-direct {v2, v0}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/util/List;)V

    throw v2
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "causeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    const/4 v1, 0x0

    .line 100
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    .line 101
    .local v3, "w":Ljava/io/Writer;
    if-eqz v3, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_1

    .line 104
    :catch_0
    move-exception v4

    .line 105
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/io/IOIndexedException;

    invoke-direct {v5, v1, v4}, Lorg/apache/commons/io/IOIndexedException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    nop

    .end local v3    # "w":Ljava/io/Writer;
    add-int/lit8 v1, v1, 0x1

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    return-object p0

    .line 111
    :cond_2
    new-instance v2, Lorg/apache/commons/io/IOExceptionList;

    invoke-direct {v2, v0}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/util/List;)V

    throw v2
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "causeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    const/4 v1, 0x0

    .line 121
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    .line 122
    .local v3, "w":Ljava/io/Writer;
    if-eqz v3, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {v3, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_1

    .line 125
    :catch_0
    move-exception v4

    .line 126
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/io/IOIndexedException;

    invoke-direct {v5, v1, v4}, Lorg/apache/commons/io/IOIndexedException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    nop

    .end local v3    # "w":Ljava/io/Writer;
    add-int/lit8 v1, v1, 0x1

    .line 130
    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    return-object p0

    .line 132
    :cond_2
    new-instance v2, Lorg/apache/commons/io/IOExceptionList;

    invoke-direct {v2, v0}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/util/List;)V

    throw v2
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->append(C)Ljava/io/Writer;

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

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

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

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "causeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    const/4 v1, 0x0

    .line 141
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    .line 142
    .local v3, "w":Ljava/io/Writer;
    if-eqz v3, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_1

    .line 145
    :catch_0
    move-exception v4

    .line 146
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/io/IOIndexedException;

    invoke-direct {v5, v1, v4}, Lorg/apache/commons/io/IOIndexedException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    nop

    .end local v3    # "w":Ljava/io/Writer;
    add-int/lit8 v1, v1, 0x1

    .line 150
    goto :goto_0

    .line 151
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    return-void

    .line 152
    :cond_2
    new-instance v2, Lorg/apache/commons/io/IOExceptionList;

    invoke-direct {v2, v0}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/util/List;)V

    throw v2
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "causeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    const/4 v1, 0x0

    .line 166
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    .line 167
    .local v3, "w":Ljava/io/Writer;
    if-eqz v3, :cond_0

    .line 169
    :try_start_0
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_1

    .line 170
    :catch_0
    move-exception v4

    .line 171
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/io/IOIndexedException;

    invoke-direct {v5, v1, v4}, Lorg/apache/commons/io/IOIndexedException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    nop

    .end local v3    # "w":Ljava/io/Writer;
    add-int/lit8 v1, v1, 0x1

    .line 175
    goto :goto_0

    .line 176
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    return-void

    .line 177
    :cond_2
    new-instance v2, Lorg/apache/commons/io/IOExceptionList;

    invoke-direct {v2, v0}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/util/List;)V

    throw v2
.end method

.method public write(I)V
    .locals 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v0, "causeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    const/4 v1, 0x0

    .line 238
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    .line 239
    .local v3, "w":Ljava/io/Writer;
    if-eqz v3, :cond_0

    .line 241
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_1

    .line 242
    :catch_0
    move-exception v4

    .line 243
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/io/IOIndexedException;

    invoke-direct {v5, v1, v4}, Lorg/apache/commons/io/IOIndexedException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    nop

    .end local v3    # "w":Ljava/io/Writer;
    add-int/lit8 v1, v1, 0x1

    .line 247
    goto :goto_0

    .line 248
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    return-void

    .line 249
    :cond_2
    new-instance v2, Lorg/apache/commons/io/IOExceptionList;

    invoke-direct {v2, v0}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/util/List;)V

    throw v2
.end method

.method public write(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v0, "causeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    const/4 v1, 0x0

    .line 257
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    .line 258
    .local v3, "w":Ljava/io/Writer;
    if-eqz v3, :cond_0

    .line 260
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_1

    .line 261
    :catch_0
    move-exception v4

    .line 262
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/io/IOIndexedException;

    invoke-direct {v5, v1, v4}, Lorg/apache/commons/io/IOIndexedException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    nop

    .end local v3    # "w":Ljava/io/Writer;
    add-int/lit8 v1, v1, 0x1

    .line 266
    goto :goto_0

    .line 267
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    return-void

    .line 268
    :cond_2
    new-instance v2, Lorg/apache/commons/io/IOExceptionList;

    invoke-direct {v2, v0}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/util/List;)V

    throw v2
.end method

.method public write(Ljava/lang/String;II)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "causeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    const/4 v1, 0x0

    .line 286
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    .line 287
    .local v3, "w":Ljava/io/Writer;
    if-eqz v3, :cond_0

    .line 289
    :try_start_0
    invoke-virtual {v3, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_1

    .line 290
    :catch_0
    move-exception v4

    .line 291
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/io/IOIndexedException;

    invoke-direct {v5, v1, v4}, Lorg/apache/commons/io/IOIndexedException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    nop

    .end local v3    # "w":Ljava/io/Writer;
    add-int/lit8 v1, v1, 0x1

    .line 295
    goto :goto_0

    .line 296
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    return-void

    .line 297
    :cond_2
    new-instance v2, Lorg/apache/commons/io/IOExceptionList;

    invoke-direct {v2, v0}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/util/List;)V

    throw v2
.end method

.method public write([C)V
    .locals 6
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "causeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    const/4 v1, 0x0

    .line 214
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    .line 215
    .local v3, "w":Ljava/io/Writer;
    if-eqz v3, :cond_0

    .line 217
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_1

    .line 218
    :catch_0
    move-exception v4

    .line 219
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/io/IOIndexedException;

    invoke-direct {v5, v1, v4}, Lorg/apache/commons/io/IOIndexedException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    nop

    .end local v3    # "w":Ljava/io/Writer;
    add-int/lit8 v1, v1, 0x1

    .line 223
    goto :goto_0

    .line 224
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    return-void

    .line 225
    :cond_2
    new-instance v2, Lorg/apache/commons/io/IOExceptionList;

    invoke-direct {v2, v0}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/util/List;)V

    throw v2
.end method

.method public write([CII)V
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v0, "causeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    const/4 v1, 0x0

    .line 195
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    .line 196
    .local v3, "w":Ljava/io/Writer;
    if-eqz v3, :cond_0

    .line 198
    :try_start_0
    invoke-virtual {v3, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_1

    .line 199
    :catch_0
    move-exception v4

    .line 200
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/io/IOIndexedException;

    invoke-direct {v5, v1, v4}, Lorg/apache/commons/io/IOIndexedException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    nop

    .end local v3    # "w":Ljava/io/Writer;
    add-int/lit8 v1, v1, 0x1

    .line 204
    goto :goto_0

    .line 205
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    return-void

    .line 206
    :cond_2
    new-instance v2, Lorg/apache/commons/io/IOExceptionList;

    invoke-direct {v2, v0}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/util/List;)V

    throw v2
.end method
