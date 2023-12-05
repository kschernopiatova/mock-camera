.class public Lorg/apache/commons/io/IOExceptionList;
.super Ljava/io/IOException;
.source "IOExceptionList.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final causeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "causeList":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Throwable;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string v2, "%,d exceptions: %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 45
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 44
    :goto_1
    invoke-direct {p0, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    if-nez p1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p1

    :goto_2
    iput-object v0, p0, Lorg/apache/commons/io/IOExceptionList;->causeList:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public getCause(I)Ljava/lang/Throwable;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(I)TT;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/apache/commons/io/IOExceptionList;->causeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getCause(ILjava/lang/Class;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 79
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/io/IOExceptionList;->causeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getCauseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/apache/commons/io/IOExceptionList;->causeList:Ljava/util/List;

    return-object v0
.end method

.method public getCauseList(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 90
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/io/IOExceptionList;->causeList:Ljava/util/List;

    return-object v0
.end method
