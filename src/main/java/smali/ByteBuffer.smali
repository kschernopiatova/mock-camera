.class public LByteBuffer;
.super Ljava/lang/Object;
.source "ByteBuffer.java"


# instance fields
.field private imgSource:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, LByteBuffer;->imgSource:[B

    .line 7
    return-void
.end method


# virtual methods
.method public capacity()I
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, LByteBuffer;->imgSource:[B

    array-length v0, v0

    return v0
.end method

.method public get([B)LByteBuffer;
    .registers 5
    .param p1, "bytes"    # [B

    .prologue
    const/4 v2, 0x0

    .line 10
    iget-object v0, p0, LByteBuffer;->imgSource:[B

    array-length v1, p1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    return-object p0
.end method
