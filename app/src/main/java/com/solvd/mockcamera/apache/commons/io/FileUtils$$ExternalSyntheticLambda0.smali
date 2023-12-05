.class public final synthetic Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/FileUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Exception;

    check-cast p1, Ljava/io/IOException;

    invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->lambda$lineIterator$0(Ljava/lang/Exception;Ljava/io/IOException;)V

    return-void
.end method
