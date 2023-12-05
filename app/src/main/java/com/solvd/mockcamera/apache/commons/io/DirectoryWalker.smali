.class public abstract Lorg/apache/commons/io/DirectoryWalker;
.super Ljava/lang/Object;
.source "DirectoryWalker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/DirectoryWalker$CancelException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final depthLimit:I

.field private final filter:Ljava/io/FileFilter;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 284
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/DirectoryWalker;-><init>(Ljava/io/FileFilter;I)V

    .line 285
    return-void
.end method

.method protected constructor <init>(Ljava/io/FileFilter;I)V
    .locals 0
    .param p1, "filter"    # Ljava/io/FileFilter;
    .param p2, "depthLimit"    # I

    .line 300
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    .line 302
    iput p2, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    .line 303
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;I)V
    .locals 2
    .param p1, "directoryFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p2, "fileFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p3, "depthLimit"    # I

    .line 320
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    goto :goto_2

    .line 324
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    :goto_0
    move-object p1, v0

    .line 325
    if-eqz p2, :cond_2

    move-object v0, p2

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    :goto_1
    move-object p2, v0

    .line 326
    invoke-static {p1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->makeDirectoryOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p1

    .line 327
    invoke-static {p2}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->makeFileOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p2

    .line 328
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->or([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    .line 330
    :goto_2
    iput p3, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    .line 331
    return-void
.end method

.method private walk(Ljava/io/File;ILjava/util/Collection;)V
    .locals 6
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 372
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 373
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectoryStart(Ljava/io/File;ILjava/util/Collection;)V

    .line 374
    add-int/lit8 v0, p2, 0x1

    .line 375
    .local v0, "childDepth":I
    iget v1, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    if-ltz v1, :cond_0

    if-gt v0, v1, :cond_4

    .line 376
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 377
    iget-object v1, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 378
    .local v1, "childFiles":[Ljava/io/File;
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/io/DirectoryWalker;->filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 379
    if-nez v1, :cond_2

    .line 380
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleRestricted(Ljava/io/File;ILjava/util/Collection;)V

    goto :goto_3

    .line 382
    :cond_2
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 383
    .local v4, "childFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 384
    invoke-direct {p0, v4, v0, p3}, Lorg/apache/commons/io/DirectoryWalker;->walk(Ljava/io/File;ILjava/util/Collection;)V

    goto :goto_2

    .line 386
    :cond_3
    invoke-virtual {p0, v4, v0, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 387
    invoke-virtual {p0, v4, v0, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleFile(Ljava/io/File;ILjava/util/Collection;)V

    .line 388
    invoke-virtual {p0, v4, v0, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 382
    .end local v4    # "childFile":Ljava/io/File;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 393
    .end local v1    # "childFiles":[Ljava/io/File;
    :cond_4
    :goto_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection;)V

    .line 395
    .end local v0    # "childDepth":I
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 396
    return-void
.end method


# virtual methods
.method protected final checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleIsCancelled(Ljava/io/File;ILjava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    return-void

    .line 417
    :cond_0
    new-instance v0, Lorg/apache/commons/io/DirectoryWalker$CancelException;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/io/DirectoryWalker$CancelException;-><init>(Ljava/io/File;I)V

    throw v0
.end method

.method protected varargs filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;
    .locals 0
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    return-object p3
.end method

.method protected handleCancelled(Ljava/io/File;Ljava/util/Collection;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V
    .locals 0
    .param p1, "startDirectory"    # Ljava/io/File;
    .param p3, "cancel"    # Lorg/apache/commons/io/DirectoryWalker$CancelException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lorg/apache/commons/io/DirectoryWalker$CancelException;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p2, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    throw p3
.end method

.method protected handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    return-void
.end method

.method protected handleDirectoryStart(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    return-void
.end method

.method protected handleEnd(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p1, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    return-void
.end method

.method protected handleFile(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    return-void
.end method

.method protected handleIsCancelled(Ljava/io/File;ILjava/util/Collection;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRestricted(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 586
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    return-void
.end method

.method protected handleStart(Ljava/io/File;Ljava/util/Collection;)V
    .locals 0
    .param p1, "startDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p2, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    return-void
.end method

.method protected final walk(Ljava/io/File;Ljava/util/Collection;)V
    .locals 1
    .param p1, "startDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p2, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const-string v0, "startDirectory"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 354
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/DirectoryWalker;->handleStart(Ljava/io/File;Ljava/util/Collection;)V

    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/io/DirectoryWalker;->walk(Ljava/io/File;ILjava/util/Collection;)V

    .line 356
    invoke-virtual {p0, p2}, Lorg/apache/commons/io/DirectoryWalker;->handleEnd(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/apache/commons/io/DirectoryWalker$CancelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "cancel":Lorg/apache/commons/io/DirectoryWalker$CancelException;
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/DirectoryWalker;->handleCancelled(Ljava/io/File;Ljava/util/Collection;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V

    .line 360
    .end local v0    # "cancel":Lorg/apache/commons/io/DirectoryWalker$CancelException;
    :goto_0
    return-void
.end method
