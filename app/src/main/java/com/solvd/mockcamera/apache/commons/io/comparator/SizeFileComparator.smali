.class public Lorg/apache/commons/io/comparator/SizeFileComparator;
.super Lorg/apache/commons/io/comparator/AbstractFileComparator;
.source "SizeFileComparator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x10accd75cb93ea7eL


# instance fields
.field private final sumDirectoryContents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lorg/apache/commons/io/comparator/SizeFileComparator;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/SizeFileComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 59
    new-instance v1, Lorg/apache/commons/io/comparator/ReverseFileComparator;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/comparator/ReverseFileComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_REVERSE:Ljava/util/Comparator;

    .line 65
    new-instance v0, Lorg/apache/commons/io/comparator/SizeFileComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/SizeFileComparator;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    .line 71
    new-instance v1, Lorg/apache/commons/io/comparator/ReverseFileComparator;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/comparator/ReverseFileComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "sumDirectoryContents"    # Z

    .line 94
    invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V

    .line 95
    iput-boolean p1, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    .line 96
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 9
    .param p1, "file1"    # Ljava/io/File;
    .param p2, "file2"    # Ljava/io/File;

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 113
    iget-boolean v0, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .local v3, "size1":J
    :goto_0
    goto :goto_1

    .line 115
    .end local v3    # "size1":J
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 118
    .restart local v3    # "size1":J
    :goto_1
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget-boolean v0, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v5

    goto :goto_2

    :cond_2
    move-wide v5, v1

    .local v5, "size2":J
    :goto_2
    goto :goto_3

    .line 121
    .end local v5    # "size2":J
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 123
    .restart local v5    # "size2":J
    :goto_3
    sub-long v7, v3, v5

    .line 124
    .local v7, "result":J
    cmp-long v0, v7, v1

    if-gez v0, :cond_4

    .line 125
    const/4 v0, -0x1

    return v0

    .line 126
    :cond_4
    cmp-long v0, v7, v1

    if-lez v0, :cond_5

    .line 127
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 51
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/comparator/SizeFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic sort(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sort([Ljava/io/File;)[Ljava/io/File;
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->sort([Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[sumDirectoryContents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
