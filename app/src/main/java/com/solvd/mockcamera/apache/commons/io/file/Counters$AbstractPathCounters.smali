.class Lorg/apache/commons/io/file/Counters$AbstractPathCounters;
.super Ljava/lang/Object;
.source "Counters.java"

# interfaces
.implements Lorg/apache/commons/io/file/Counters$PathCounters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbstractPathCounters"
.end annotation


# instance fields
.field private final byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

.field private final directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

.field private final fileCounter:Lorg/apache/commons/io/file/Counters$Counter;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;Lorg/apache/commons/io/file/Counters$Counter;)V
    .locals 0
    .param p1, "byteCounter"    # Lorg/apache/commons/io/file/Counters$Counter;
    .param p2, "directoryCounter"    # Lorg/apache/commons/io/file/Counters$Counter;
    .param p3, "fileCounter"    # Lorg/apache/commons/io/file/Counters$Counter;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 50
    iput-object p2, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 51
    iput-object p3, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 57
    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 60
    return v2

    .line 62
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;

    .line 63
    .local v1, "other":Lorg/apache/commons/io/file/Counters$AbstractPathCounters;
    iget-object v3, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    iget-object v4, v1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    iget-object v4, v1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 64
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    iget-object v4, v1, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 65
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 63
    :goto_0
    return v0
.end method

.method public getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    return-object v0
.end method

.method public getDirectoryCounter()Lorg/apache/commons/io/file/Counters$Counter;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    return-object v0
.end method

.method public getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->fileCounter:Lorg/apache/commons/io/file/Counters$Counter;

    invoke-interface {v1}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->directoryCounter:Lorg/apache/commons/io/file/Counters$Counter;

    .line 96
    invoke-interface {v1}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$AbstractPathCounters;->byteCounter:Lorg/apache/commons/io/file/Counters$Counter;

    invoke-interface {v1}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 95
    const-string v1, "%,d files, %,d directories, %,d bytes"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
