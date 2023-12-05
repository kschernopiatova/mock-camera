.class Lorg/apache/commons/io/file/Counters$LongCounter;
.super Ljava/lang/Object;
.source "Counters.java"

# interfaces
.implements Lorg/apache/commons/io/file/Counters$Counter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongCounter"
.end annotation


# instance fields
.field private value:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/file/Counters$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/io/file/Counters$1;

    .line 214
    invoke-direct {p0}, Lorg/apache/commons/io/file/Counters$LongCounter;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 2
    .param p1, "add"    # J

    .line 220
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    .line 222
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 226
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 227
    return v0

    .line 229
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/io/file/Counters$Counter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 230
    return v2

    .line 232
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/io/file/Counters$Counter;

    .line 233
    .local v1, "other":Lorg/apache/commons/io/file/Counters$Counter;
    iget-wide v3, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-interface {v1}, Lorg/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public get()J
    .locals 2

    .line 238
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    return-wide v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 2

    .line 243
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getLong()Ljava/lang/Long;
    .locals 2

    .line 248
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 253
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public increment()V
    .locals 4

    .line 258
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    .line 259
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 263
    iget-wide v0, p0, Lorg/apache/commons/io/file/Counters$LongCounter;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
