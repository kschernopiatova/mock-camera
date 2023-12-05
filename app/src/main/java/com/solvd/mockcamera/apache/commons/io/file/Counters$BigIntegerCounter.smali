.class Lorg/apache/commons/io/file/Counters$BigIntegerCounter;
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
    name = "BigIntegerCounter"
.end annotation


# instance fields
.field private value:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/file/Counters$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/io/file/Counters$1;

    .line 104
    invoke-direct {p0}, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 2
    .param p1, "val"    # J

    .line 110
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    .line 112
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 116
    if-ne p0, p1, :cond_0

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/io/file/Counters$Counter;

    if-nez v0, :cond_1

    .line 120
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/io/file/Counters$Counter;

    .line 123
    .local v0, "other":Lorg/apache/commons/io/file/Counters$Counter;
    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$Counter;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get()J
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValueExact()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getLong()Ljava/lang/Long;
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValueExact()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public increment()V
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
