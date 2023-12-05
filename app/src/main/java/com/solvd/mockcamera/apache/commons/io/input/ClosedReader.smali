.class public Lorg/apache/commons/io/input/ClosedReader;
.super Ljava/io/Reader;
.source "ClosedReader.java"


# static fields
.field public static final CLOSED_READER:Lorg/apache/commons/io/input/ClosedReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/commons/io/input/ClosedReader;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ClosedReader;-><init>()V

    sput-object v0, Lorg/apache/commons/io/input/ClosedReader;->CLOSED_READER:Lorg/apache/commons/io/input/ClosedReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public read([CII)I
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 50
    const/4 v0, -0x1

    return v0
.end method
