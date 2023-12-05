.class public Lorg/apache/commons/io/output/NullPrintStream;
.super Ljava/io/PrintStream;
.source "NullPrintStream.java"


# static fields
.field public static final NULL_PRINT_STREAM:Lorg/apache/commons/io/output/NullPrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/commons/io/output/NullPrintStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/NullPrintStream;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/NullPrintStream;->NULL_PRINT_STREAM:Lorg/apache/commons/io/output/NullPrintStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/commons/io/output/NullOutputStream;->NULL_OUTPUT_STREAM:Lorg/apache/commons/io/output/NullOutputStream;

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    return-void
.end method
