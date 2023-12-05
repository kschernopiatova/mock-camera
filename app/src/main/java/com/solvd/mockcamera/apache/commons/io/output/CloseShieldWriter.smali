.class public Lorg/apache/commons/io/output/CloseShieldWriter;
.super Lorg/apache/commons/io/output/ProxyWriter;
.source "CloseShieldWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .param p1, "out"    # Ljava/io/Writer;

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyWriter;-><init>(Ljava/io/Writer;)V

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 47
    sget-object v0, Lorg/apache/commons/io/output/ClosedWriter;->CLOSED_WRITER:Lorg/apache/commons/io/output/ClosedWriter;

    iput-object v0, p0, Lorg/apache/commons/io/output/CloseShieldWriter;->out:Ljava/io/Writer;

    .line 48
    return-void
.end method
