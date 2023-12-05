.class public Lcom/solvd/mock/Image$Plane;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solvd/mock/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Plane"
.end annotation


# instance fields
.field private byteBuffer:Lcom/solvd/mock/ByteBuffer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method public constructor <init>(Lcom/solvd/mock/ByteBuffer;)V
    .locals 0
    .param p1, "byteBuffer"    # Lcom/solvd/mock/ByteBuffer;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/solvd/mock/Image$Plane;->byteBuffer:Lcom/solvd/mock/ByteBuffer;

    .line 154
    return-void
.end method


# virtual methods
.method public getBuffer()Lcom/solvd/mock/ByteBuffer;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/solvd/mock/Image$Plane;->byteBuffer:Lcom/solvd/mock/ByteBuffer;

    return-object v0
.end method

.method public getPixelStride()I
    .locals 1

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getRowStride()I
    .locals 1

    .line 157
    const/4 v0, 0x0

    return v0
.end method
