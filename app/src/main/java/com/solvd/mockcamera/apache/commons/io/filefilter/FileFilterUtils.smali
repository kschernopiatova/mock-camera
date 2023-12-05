.class public Lorg/apache/commons/io/filefilter/FileFilterUtils;
.super Ljava/lang/Object;
.source "FileFilterUtils.java"


# static fields
.field private static final cvsFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field private static final svnFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 725
    const/4 v0, 0x2

    new-array v1, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 726
    invoke-static {}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->directoryFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CVS"

    invoke-static {v2}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->nameFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    .line 725
    invoke-static {v1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->notFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 729
    new-array v0, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 730
    invoke-static {}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->directoryFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, ".svn"

    invoke-static {v1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->nameFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    .line 729
    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->notFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static ageFileFilter(J)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "cutoff"    # J

    .line 531
    new-instance v0, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static ageFileFilter(JZ)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "cutoff"    # J
    .param p2, "acceptOlder"    # Z

    .line 544
    new-instance v0, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "cutoffReference"    # Ljava/io/File;

    .line 584
    new-instance v0, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;Z)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "cutoffReference"    # Ljava/io/File;
    .param p1, "acceptOlder"    # Z

    .line 598
    new-instance v0, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "cutoffDate"    # Ljava/util/Date;

    .line 557
    new-instance v0, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;Z)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "cutoffDate"    # Ljava/util/Date;
    .param p1, "acceptOlder"    # Z

    .line 570
    new-instance v0, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;Z)V

    return-object v0
.end method

.method public static varargs and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 2
    .param p0, "filters"    # [Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 422
    new-instance v0, Lorg/apache/commons/io/filefilter/AndFileFilter;

    invoke-static {p0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->toList([Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static andFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "filter1"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p1, "filter2"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    new-instance v0, Lorg/apache/commons/io/filefilter/AndFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "filter"    # Ljava/io/FileFilter;

    .line 505
    new-instance v0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FilenameFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "filter"    # Ljava/io/FilenameFilter;

    .line 517
    new-instance v0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FilenameFilter;)V

    return-object v0
.end method

.method public static directoryFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 366
    sget-object v0, Lorg/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static falseFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 492
    sget-object v0, Lorg/apache/commons/io/filefilter/FalseFileFilter;->FALSE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static fileFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 376
    sget-object v0, Lorg/apache/commons/io/filefilter/FileFileFilter;->FILE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method private static filter(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .param p0, "filter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;>(",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;TT;)TT;"
        }
    .end annotation

    .line 271
    .local p1, "files":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/io/File;>;"
    .local p2, "acceptedFiles":Ljava/util/Collection;, "TT;"
    if-eqz p0, :cond_3

    .line 274
    if-eqz p1, :cond_2

    .line 275
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 276
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 279
    invoke-interface {p0, v1}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 277
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "file collection contains null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    return-object p2

    .line 272
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file filter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static filter(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)[Ljava/io/File;
    .locals 2
    .param p0, "filter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/io/File;"
        }
    .end annotation

    .line 123
    .local p1, "files":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/io/File;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->filterList(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "acceptedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    sget-object v1, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    return-object v1
.end method

.method public static varargs filter(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;
    .locals 5
    .param p0, "filter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p1, "files"    # [Ljava/io/File;

    .line 78
    if-eqz p0, :cond_4

    .line 81
    if-nez p1, :cond_0

    .line 82
    sget-object v0, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "acceptedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 86
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_2

    .line 89
    invoke-interface {p0, v3}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .restart local v3    # "file":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "file array contains null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    sget-object v1, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    return-object v1

    .line 79
    .end local v0    # "acceptedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file filter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static filterList(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .param p0, "filter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 153
    .local p1, "files":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/io/File;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->filter(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static varargs filterList(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/List;
    .locals 2
    .param p0, "filter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 182
    invoke-static {p0, p1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->filter(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 183
    .local v0, "acceptedFiles":[Ljava/io/File;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static filterSet(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .param p0, "filter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 244
    .local p1, "files":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/io/File;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->filter(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static varargs filterSet(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/Set;
    .locals 3
    .param p0, "filter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 213
    invoke-static {p0, p1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->filter(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 214
    .local v0, "acceptedFiles":[Ljava/io/File;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static magicNumberFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "magicNumber"    # Ljava/lang/String;

    .line 659
    new-instance v0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static magicNumberFileFilter(Ljava/lang/String;J)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "magicNumber"    # Ljava/lang/String;
    .param p1, "offset"    # J

    .line 680
    new-instance v0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static magicNumberFileFilter([B)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "magicNumber"    # [B

    .line 699
    new-instance v0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>([B)V

    return-object v0
.end method

.method public static magicNumberFileFilter([BJ)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "magicNumber"    # [B
    .param p1, "offset"    # J

    .line 720
    new-instance v0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>([BJ)V

    return-object v0
.end method

.method public static makeCVSAware(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 3
    .param p0, "filter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 742
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static makeDirectoryOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 2
    .param p0, "filter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 768
    if-nez p0, :cond_0

    .line 769
    sget-object v0, Lorg/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-object v0

    .line 771
    :cond_0
    new-instance v0, Lorg/apache/commons/io/filefilter/AndFileFilter;

    sget-object v1, Lorg/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static makeFileOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 2
    .param p0, "filter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 783
    if-nez p0, :cond_0

    .line 784
    sget-object v0, Lorg/apache/commons/io/filefilter/FileFileFilter;->FILE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-object v0

    .line 786
    :cond_0
    new-instance v0, Lorg/apache/commons/io/filefilter/AndFileFilter;

    sget-object v1, Lorg/apache/commons/io/filefilter/FileFileFilter;->FILE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static makeSVNAware(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 3
    .param p0, "filter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 755
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static nameFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 343
    new-instance v0, Lorg/apache/commons/io/filefilter/NameFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static nameFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .line 356
    new-instance v0, Lorg/apache/commons/io/filefilter/NameFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V

    return-object v0
.end method

.method public static notFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "filter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 471
    new-instance v0, Lorg/apache/commons/io/filefilter/NotFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/NotFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static varargs or([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 2
    .param p0, "filters"    # [Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 437
    new-instance v0, Lorg/apache/commons/io/filefilter/OrFileFilter;

    invoke-static {p0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->toList([Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/filefilter/OrFileFilter;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static orFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "filter1"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p1, "filter2"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    new-instance v0, Lorg/apache/commons/io/filefilter/OrFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/OrFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static prefixFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;

    .line 295
    new-instance v0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static prefixFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .line 308
    new-instance v0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V

    return-object v0
.end method

.method public static sizeFileFilter(J)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "threshold"    # J

    .line 611
    new-instance v0, Lorg/apache/commons/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/SizeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static sizeFileFilter(JZ)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "threshold"    # J
    .param p2, "acceptLarger"    # Z

    .line 624
    new-instance v0, Lorg/apache/commons/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static sizeRangeFileFilter(JJ)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 5
    .param p0, "minSizeInclusive"    # J
    .param p2, "maxSizeInclusive"    # J

    .line 638
    new-instance v0, Lorg/apache/commons/io/filefilter/SizeFileFilter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    .line 639
    .local v0, "minimumFilter":Lorg/apache/commons/io/filefilter/IOFileFilter;
    new-instance v1, Lorg/apache/commons/io/filefilter/SizeFileFilter;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    .line 640
    .local v1, "maximumFilter":Lorg/apache/commons/io/filefilter/IOFileFilter;
    new-instance v2, Lorg/apache/commons/io/filefilter/AndFileFilter;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v2
.end method

.method public static suffixFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "suffix"    # Ljava/lang/String;

    .line 319
    new-instance v0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static suffixFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .param p0, "suffix"    # Ljava/lang/String;
    .param p1, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .line 332
    new-instance v0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V

    return-object v0
.end method

.method public static varargs toList([Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List;
    .locals 5
    .param p0, "filters"    # [Lorg/apache/commons/io/filefilter/IOFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ">;"
        }
    .end annotation

    .line 450
    if-eqz p0, :cond_2

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/io/filefilter/IOFileFilter;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 455
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 458
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The filter["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 460
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 451
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/io/filefilter/IOFileFilter;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The filters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static trueFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 482
    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method
