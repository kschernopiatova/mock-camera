.class Lorg/apache/commons/io/file/Counters$LongPathCounters;
.super Lorg/apache/commons/io/file/Counters$AbstractPathCounters;
.source "Counters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongPathCounters"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 276
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v0

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v1

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;-><init>(Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;)V

    .line 277
    return-void
.end method
