.class public Lorg/apache/commons/io/input/InfiniteCircularInputStream;
.super Lorg/apache/commons/io/input/CircularInputStream;
.source "InfiniteCircularInputStream.java"


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "repeatContent"    # [B

    .line 41
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/input/CircularInputStream;-><init>([BJ)V

    .line 42
    return-void
.end method
