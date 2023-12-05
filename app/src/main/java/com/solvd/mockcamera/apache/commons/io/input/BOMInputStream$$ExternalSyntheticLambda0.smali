.class public final synthetic Lorg/apache/commons/io/input/BOMInputStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/commons/io/input/BOMInputStream$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/io/input/BOMInputStream$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/io/input/BOMInputStream$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/io/input/BOMInputStream$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/commons/io/input/BOMInputStream$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/io/ByteOrderMark;

    check-cast p2, Lorg/apache/commons/io/ByteOrderMark;

    invoke-static {p1, p2}, Lorg/apache/commons/io/input/BOMInputStream;->lambda$static$0(Lorg/apache/commons/io/ByteOrderMark;Lorg/apache/commons/io/ByteOrderMark;)I

    move-result p1

    return p1
.end method
