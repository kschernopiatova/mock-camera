.class public final synthetic Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOFunction;

.field public final synthetic f$1:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda7;->f$0:Lorg/apache/commons/io/function/IOFunction;

    iput-object p2, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda7;->f$1:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda7;->f$0:Lorg/apache/commons/io/function/IOFunction;

    iget-object v1, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda7;->f$1:Ljava/util/function/Supplier;

    invoke-static {v0, v1}, Lorg/apache/commons/io/function/IOFunction;->lambda$compose$3(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
