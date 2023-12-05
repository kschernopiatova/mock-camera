.class public Lorg/apache/commons/io/input/CloseShieldReader;
.super Lorg/apache/commons/io/input/ProxyReader;
.source "CloseShieldReader.java"


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "in"    # Ljava/io/Reader;

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;-><init>(Ljava/io/Reader;)V

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 50
    sget-object v0, Lorg/apache/commons/io/input/ClosedReader;->CLOSED_READER:Lorg/apache/commons/io/input/ClosedReader;

    iput-object v0, p0, Lorg/apache/commons/io/input/CloseShieldReader;->in:Ljava/io/Reader;

    .line 51
    return-void
.end method
