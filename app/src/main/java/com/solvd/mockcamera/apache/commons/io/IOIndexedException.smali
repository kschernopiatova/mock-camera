.class public Lorg/apache/commons/io/IOIndexedException;
.super Ljava/io/IOException;
.source "IOIndexedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 39
    invoke-static {p1, p2}, Lorg/apache/commons/io/IOIndexedException;->toMessage(ILjava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    iput p1, p0, Lorg/apache/commons/io/IOIndexedException;->index:I

    .line 41
    return-void
.end method

.method protected static toMessage(ILjava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p0, "index"    # I
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 52
    const-string v0, "Null"

    .line 53
    .local v0, "unspecified":Ljava/lang/String;
    const-string v1, "Null"

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "name":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "msg":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-string v4, "%s #%,d: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/apache/commons/io/IOIndexedException;->index:I

    return v0
.end method
