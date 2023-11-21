.class public LImage$Plane;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Plane"
.end annotation


# instance fields
.field private final byteBuffer:LByteBuffer;


# direct methods
.method public constructor <init>(LByteBuffer;)V
    .registers 2
    .param p1, "byteBuffer"    # LByteBuffer;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, LImage$Plane;->byteBuffer:LByteBuffer;

    .line 35
    return-void
.end method


# virtual methods
.method public getBuffer()LByteBuffer;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, LImage$Plane;->byteBuffer:LByteBuffer;

    return-object v0
.end method
