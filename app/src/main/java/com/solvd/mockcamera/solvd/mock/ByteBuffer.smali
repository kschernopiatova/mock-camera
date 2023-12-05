.class public Lcom/solvd/mock/ByteBuffer;
.super Ljava/lang/Object;
.source "ByteBuffer.java"


# instance fields
.field bigEndian:Z

.field private final imgSource:[B

.field nativeByteOrder:Z


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/solvd/mock/ByteBuffer;->bigEndian:Z

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/solvd/mock/ByteBuffer;->nativeByteOrder:Z

    .line 12
    iput-object p1, p0, Lcom/solvd/mock/ByteBuffer;->imgSource:[B

    .line 13
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/solvd/mock/ByteBuffer;->imgSource:[B

    array-length v0, v0

    return v0
.end method

.method public get([B)Lcom/solvd/mock/ByteBuffer;
    .locals 3
    .param p1, "bytes"    # [B

    .line 16
    iget-object v0, p0, Lcom/solvd/mock/ByteBuffer;->imgSource:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    return-object p0
.end method

.method public final order(Ljava/nio/ByteOrder;)Lcom/solvd/mock/ByteBuffer;
    .locals 2
    .param p1, "bo"    # Ljava/nio/ByteOrder;

    .line 21
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/solvd/mock/ByteBuffer;->bigEndian:Z

    .line 22
    iput-boolean v1, p0, Lcom/solvd/mock/ByteBuffer;->nativeByteOrder:Z

    .line 23
    return-object p0
.end method

.method public final remaining()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/solvd/mock/ByteBuffer;->imgSource:[B

    array-length v0, v0

    return v0
.end method
