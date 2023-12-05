.class public Lorg/apache/commons/io/output/NullAppendable;
.super Ljava/lang/Object;
.source "NullAppendable.java"

# interfaces
.implements Ljava/lang/Appendable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/output/NullAppendable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/commons/io/output/NullAppendable;

    invoke-direct {v0}, Lorg/apache/commons/io/output/NullAppendable;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/NullAppendable;->INSTANCE:Lorg/apache/commons/io/output/NullAppendable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 0
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    return-object p0
.end method
