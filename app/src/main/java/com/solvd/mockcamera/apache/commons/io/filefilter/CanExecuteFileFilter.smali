.class public Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "CanExecuteFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_EXECUTE:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field public static final CAN_EXECUTE:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field private static final serialVersionUID:J = 0x2c214a929094a84dL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;->CAN_EXECUTE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 59
    new-instance v1, Lorg/apache/commons/io/filefilter/NotFileFilter;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/filefilter/NotFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    sput-object v1, Lorg/apache/commons/io/filefilter/CanExecuteFileFilter;->CANNOT_EXECUTE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->canExecute()Z

    move-result v0

    return v0
.end method
