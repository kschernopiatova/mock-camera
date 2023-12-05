.class public Lorg/apache/commons/io/output/CloseShieldOutputStream;
.super Lorg/apache/commons/io/output/ProxyOutputStream;
.source "CloseShieldOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 50
    sget-object v0, Lorg/apache/commons/io/output/ClosedOutputStream;->CLOSED_OUTPUT_STREAM:Lorg/apache/commons/io/output/ClosedOutputStream;

    iput-object v0, p0, Lorg/apache/commons/io/output/CloseShieldOutputStream;->out:Ljava/io/OutputStream;

    .line 51
    return-void
.end method
