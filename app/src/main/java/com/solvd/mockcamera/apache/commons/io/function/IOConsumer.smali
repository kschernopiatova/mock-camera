.class public interface abstract Lorg/apache/commons/io/function/IOConsumer;
.super Ljava/lang/Object;
.source "IOConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic lambda$andThen$0(Lorg/apache/commons/io/function/IOConsumer;Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOConsumer;
    .param p1, "after"    # Lorg/apache/commons/io/function/IOConsumer;
    .param p2, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/apache/commons/io/function/IOConsumer;, "Lorg/apache/commons/io/function/IOConsumer<TT;>;"
    invoke-interface {p0, p2}, Lorg/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V

    .line 55
    invoke-interface {p1, p2}, Lorg/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V

    .line 56
    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public andThen(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/function/IOConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "-TT;>;)",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/apache/commons/io/function/IOConsumer;, "Lorg/apache/commons/io/function/IOConsumer<TT;>;"
    .local p1, "after":Lorg/apache/commons/io/function/IOConsumer;, "Lorg/apache/commons/io/function/IOConsumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOConsumer;Lorg/apache/commons/io/function/IOConsumer;)V

    return-object v0
.end method
