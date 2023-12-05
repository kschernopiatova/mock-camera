.class public Lorg/apache/commons/io/input/ObservableInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "ObservableInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    }
.end annotation


# instance fields
.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/io/input/ObservableInputStream$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "pProxy"    # Ljava/io/InputStream;

    .line 105
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    .line 106
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V
    .locals 1
    .param p1, "pObserver"    # Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 113
    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 262
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteClosed()V

    goto :goto_1

    .line 265
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    .line 267
    :goto_1
    return-void
.end method

.method public consume()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 277
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->read([B)I

    move-result v1

    .line 278
    .local v1, "res":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 279
    return-void

    .line 281
    .end local v1    # "res":I
    :cond_0
    goto :goto_0
.end method

.method protected getObservers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/io/input/ObservableInputStream$Observer;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    return-object v0
.end method

.method protected noteClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 243
    .local v1, "observer":Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    invoke-virtual {v1}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->closed()V

    .line 244
    .end local v1    # "observer":Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method protected noteDataByte(I)V
    .locals 2
    .param p1, "pDataByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 220
    .local v1, "observer":Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    invoke-virtual {v1, p1}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->data(I)V

    .line 221
    .end local v1    # "observer":Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    goto :goto_0

    .line 222
    :cond_0
    return-void
.end method

.method protected noteDataBytes([BII)V
    .locals 2
    .param p1, "pBuffer"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 198
    .local v1, "observer":Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->data([BII)V

    .line 199
    .end local v1    # "observer":Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method protected noteError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "pException"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 233
    .local v1, "observer":Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    invoke-virtual {v1, p1}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->error(Ljava/io/IOException;)V

    .line 234
    .end local v1    # "observer":Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method protected noteFinished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 208
    .local v1, "observer":Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    invoke-virtual {v1}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->finished()V

    .line 209
    .end local v1    # "observer":Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "result":I
    const/4 v1, 0x0

    .line 136
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->read()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "pException":Ljava/io/IOException;
    move-object v1, v2

    .line 140
    .end local v2    # "pException":Ljava/io/IOException;
    :goto_0
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    goto :goto_1

    .line 142
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 143
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteFinished()V

    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteDataByte(I)V

    .line 147
    :goto_1
    return v0
.end method

.method public read([B)I
    .locals 3
    .param p1, "pBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "result":I
    const/4 v1, 0x0

    .line 155
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->read([B)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 158
    goto :goto_0

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "pException":Ljava/io/IOException;
    move-object v1, v2

    .line 159
    .end local v2    # "pException":Ljava/io/IOException;
    :goto_0
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    goto :goto_1

    .line 161
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteFinished()V

    goto :goto_1

    .line 163
    :cond_1
    if-lez v0, :cond_2

    .line 164
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteDataBytes([BII)V

    .line 166
    :cond_2
    :goto_1
    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "pBuffer"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "result":I
    const/4 v1, 0x0

    .line 174
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, "pException":Ljava/io/IOException;
    move-object v1, v2

    .line 178
    .end local v2    # "pException":Ljava/io/IOException;
    :goto_0
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    goto :goto_1

    .line 180
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 181
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteFinished()V

    goto :goto_1

    .line 182
    :cond_1
    if-lez v0, :cond_2

    .line 183
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteDataBytes([BII)V

    .line 185
    :cond_2
    :goto_1
    return v0
.end method

.method public remove(Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V
    .locals 1
    .param p1, "pObserver"    # Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 121
    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public removeAllObservers()V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    return-void
.end method
