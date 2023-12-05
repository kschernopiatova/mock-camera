.class public final synthetic Lorg/apache/commons/io/output/ByteArrayOutputStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/commons/io/output/ByteArrayOutputStream$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/ByteArrayOutputStream$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/commons/io/output/ByteArrayOutputStream$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct([BII)Ljava/io/InputStream;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->$r8$lambda$b_x95vDRJTYVaIxBKUURRGxO_HQ([BII)Ljava/io/ByteArrayInputStream;

    move-result-object p1

    return-object p1
.end method
