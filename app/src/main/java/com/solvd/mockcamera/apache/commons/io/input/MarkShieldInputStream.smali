.class public Lorg/apache/commons/io/input/MarkShieldInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "MarkShieldInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    return-void
.end method


# virtual methods
.method public mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    .line 52
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
