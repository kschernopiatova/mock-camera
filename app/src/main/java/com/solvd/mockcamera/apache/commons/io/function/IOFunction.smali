.class public interface abstract Lorg/apache/commons/io/function/IOFunction;
.super Ljava/lang/Object;
.source "IOFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static identity()Lorg/apache/commons/io/function/IOFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/io/function/IOFunction<",
            "TT;TT;>;"
        }
    .end annotation

    .line 205
    sget-object v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda6;

    return-object v0
.end method

.method public static synthetic lambda$andThen$4(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "after"    # Lorg/apache/commons/io/function/IOFunction;
    .param p2, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p0, p2}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$andThen$5(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "after"    # Ljava/util/function/Function;
    .param p2, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p0, p2}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$andThen$6(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "after"    # Lorg/apache/commons/io/function/IOConsumer;
    .param p2, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p0, p2}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$andThen$7(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "after"    # Ljava/util/function/Consumer;
    .param p2, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p0, p2}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$compose$0(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "before"    # Lorg/apache/commons/io/function/IOFunction;
    .param p2, "v"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p1, p2}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$compose$1(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "before"    # Ljava/util/function/Function;
    .param p2, "v"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$compose$2(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "before"    # Lorg/apache/commons/io/function/IOSupplier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p1}, Lorg/apache/commons/io/function/IOSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$compose$3(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "before"    # Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$identity$8(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    return-object p0
.end method


# virtual methods
.method public andThen(Ljava/util/function/Consumer;)Lorg/apache/commons/io/function/IOConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TR;>;)",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "after":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TR;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public andThen(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/function/IOConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "-TR;>;)",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "after":Lorg/apache/commons/io/function/IOConsumer;, "Lorg/apache/commons/io/function/IOConsumer<-TR;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOConsumer;)V

    return-object v0
.end method

.method public andThen(Ljava/util/function/Function;)Lorg/apache/commons/io/function/IOFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TR;+TV;>;)",
            "Lorg/apache/commons/io/function/IOFunction<",
            "TT;TV;>;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "after":Ljava/util/function/Function;, "Ljava/util/function/Function<-TR;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public andThen(Lorg/apache/commons/io/function/IOFunction;)Lorg/apache/commons/io/function/IOFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOFunction<",
            "-TR;+TV;>;)",
            "Lorg/apache/commons/io/function/IOFunction<",
            "TT;TV;>;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "after":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<-TR;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOFunction;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public compose(Ljava/util/function/Function;)Lorg/apache/commons/io/function/IOFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TV;+TT;>;)",
            "Lorg/apache/commons/io/function/IOFunction<",
            "TV;TR;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "before":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public compose(Lorg/apache/commons/io/function/IOFunction;)Lorg/apache/commons/io/function/IOFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOFunction<",
            "-TV;+TT;>;)",
            "Lorg/apache/commons/io/function/IOFunction<",
            "TV;TR;>;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "before":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<-TV;+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOFunction;)V

    return-object v0
.end method

.method public compose(Ljava/util/function/Supplier;)Lorg/apache/commons/io/function/IOSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT;>;)",
            "Lorg/apache/commons/io/function/IOSupplier<",
            "TR;>;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "before":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public compose(Lorg/apache/commons/io/function/IOSupplier;)Lorg/apache/commons/io/function/IOSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOSupplier<",
            "+TT;>;)",
            "Lorg/apache/commons/io/function/IOSupplier<",
            "TR;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "before":Lorg/apache/commons/io/function/IOSupplier;, "Lorg/apache/commons/io/function/IOSupplier<+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda8;-><init>(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOSupplier;)V

    return-object v0
.end method
