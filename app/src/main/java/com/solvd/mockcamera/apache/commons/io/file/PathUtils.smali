.class public final Lorg/apache/commons/io/file/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;
    }
.end annotation


# static fields
.field public static final EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

.field public static final EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

.field public static final EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

.field public static final EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 128
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/commons/io/file/DeleteOption;

    sput-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    .line 133
    new-array v1, v0, [Ljava/nio/file/FileVisitOption;

    sput-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

    .line 138
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    sput-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    .line 143
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    return-void
.end method

.method static synthetic access$000(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 1
    .param p0, "x0"    # Ljava/nio/file/Path;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v0

    return-object v0
.end method

.method private static accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2
    .param p0, "directory"    # Ljava/nio/file/Path;
    .param p1, "maxDepth"    # I
    .param p2, "fileVisitOptions"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-static {}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->withLongCounters()Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v0

    .line 157
    invoke-static {p2}, Lorg/apache/commons/io/file/PathUtils;->toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set;

    move-result-object v1

    .line 156
    invoke-static {v0, p0, v1, p1}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;Ljava/util/Set;I)Ljava/nio/file/FileVisitor;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    return-object v0
.end method

.method public static cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1
    .param p0, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method public static varargs cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 3
    .param p0, "directory"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Lorg/apache/commons/io/file/DeleteOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    new-instance v0, Lorg/apache/commons/io/file/CleaningPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/commons/io/file/CleaningPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Lorg/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/CleaningPathVisitor;

    .line 182
    invoke-virtual {v0}, Lorg/apache/commons/io/file/CleaningPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    .line 181
    return-object v0
.end method

.method public static varargs copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 2
    .param p0, "sourceDirectory"    # Ljava/nio/file/Path;
    .param p1, "targetDirectory"    # Ljava/nio/file/Path;
    .param p2, "copyOptions"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    new-instance v0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;

    .line 197
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/commons/io/file/CopyDirectoryVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    .line 196
    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;

    .line 198
    invoke-virtual {v0}, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    .line 196
    return-object v0
.end method

.method public static varargs copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .locals 4
    .param p0, "sourceFile"    # Ljava/net/URL;
    .param p1, "targetFile"    # Ljava/nio/file/Path;
    .param p2, "copyOptions"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 214
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1, p2}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    nop

    .line 216
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 215
    :cond_0
    return-object p1

    .line 213
    :catchall_0
    move-exception v1

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "sourceFile":Ljava/net/URL;
    .end local p1    # "targetFile":Ljava/nio/file/Path;
    .end local p2    # "copyOptions":[Ljava/nio/file/CopyOption;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "sourceFile":Ljava/net/URL;
    .restart local p1    # "targetFile":Ljava/nio/file/Path;
    .restart local p2    # "copyOptions":[Ljava/nio/file/CopyOption;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static varargs copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .locals 4
    .param p0, "sourceFile"    # Ljava/net/URL;
    .param p1, "targetDirectory"    # Ljava/nio/file/Path;
    .param p2, "copyOptions"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 247
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    nop

    .line 249
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 248
    :cond_0
    return-object p1

    .line 246
    :catchall_0
    move-exception v1

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "sourceFile":Ljava/net/URL;
    .end local p1    # "targetDirectory":Ljava/nio/file/Path;
    .end local p2    # "copyOptions":[Ljava/nio/file/CopyOption;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 249
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "sourceFile":Ljava/net/URL;
    .restart local p1    # "targetDirectory":Ljava/nio/file/Path;
    .restart local p2    # "copyOptions":[Ljava/nio/file/CopyOption;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static varargs copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "sourceFile"    # Ljava/nio/file/Path;
    .param p1, "targetDirectory"    # Ljava/nio/file/Path;
    .param p2, "copyOptions"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p0, v0, p2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 2
    .param p0, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    new-instance v0, Lorg/apache/commons/io/file/CountingPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/CountingPathVisitor;

    invoke-virtual {v0}, Lorg/apache/commons/io/file/CountingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method public static varargs delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Lorg/apache/commons/io/file/DeleteOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0
.end method

.method public static deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1
    .param p0, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method public static varargs deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 3
    .param p0, "directory"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Lorg/apache/commons/io/file/DeleteOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    new-instance v0, Lorg/apache/commons/io/file/DeletingPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/commons/io/file/DeletingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Lorg/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/DeletingPathVisitor;

    .line 329
    invoke-virtual {v0}, Lorg/apache/commons/io/file/DeletingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    .line 328
    return-object v0
.end method

.method public static deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1
    .param p0, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method public static varargs deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 7
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Lorg/apache/commons/io/file/DeleteOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 359
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    .line 360
    .local v1, "pathCounts":Lorg/apache/commons/io/file/Counters$PathCounters;
    new-array v2, v0, [Ljava/nio/file/LinkOption;

    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    .line 361
    .local v2, "exists":Z
    if-eqz v2, :cond_0

    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    .line 362
    .local v4, "size":J
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/file/PathUtils;->overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 363
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    sget-object v6, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v6, v0, v3

    invoke-static {p0, v3, v0}, Lorg/apache/commons/io/file/PathUtils;->setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 365
    :cond_1
    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    invoke-interface {v1}, Lorg/apache/commons/io/file/Counters$PathCounters;->getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$Counter;->increment()V

    .line 367
    invoke-interface {v1}, Lorg/apache/commons/io/file/Counters$PathCounters;->getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Lorg/apache/commons/io/file/Counters$Counter;->add(J)V

    .line 369
    :cond_2
    return-object v1

    .line 357
    .end local v1    # "pathCounts":Lorg/apache/commons/io/file/Counters$PathCounters;
    .end local v2    # "exists":Z
    .end local v4    # "size":J
    :cond_3
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 3
    .param p0, "path1"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    sget-object v2, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/file/PathUtils;->directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z

    move-result v0

    return v0
.end method

.method public static directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z
    .locals 10
    .param p0, "path1"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .param p2, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .param p3, "openOptions"    # [Ljava/nio/file/OpenOption;
    .param p4, "fileVisitOption"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 421
    return v0

    .line 423
    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez p1, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 424
    return v1

    .line 426
    :cond_3
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_4

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 427
    return v0

    .line 429
    :cond_4
    new-instance v2, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;

    const v6, 0x7fffffff

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;Lorg/apache/commons/io/file/PathUtils$1;)V

    .line 432
    .local v2, "relativeSortedPaths":Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;
    iget-boolean v3, v2, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    if-nez v3, :cond_5

    .line 433
    return v1

    .line 436
    :cond_5
    iget-object v3, v2, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList1:Ljava/util/List;

    .line 437
    .local v3, "fileList1":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    iget-object v4, v2, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList2:Ljava/util/List;

    .line 438
    .local v4, "fileList2":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/file/Path;

    .line 439
    .local v6, "path":Ljava/nio/file/Path;
    invoke-static {v4, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v7

    .line 440
    .local v7, "binarySearch":I
    const/4 v8, -0x1

    if-le v7, v8, :cond_7

    .line 441
    invoke-interface {p0, v6}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {p1, v6}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v9

    invoke-static {v8, v9, p2, p3}, Lorg/apache/commons/io/file/PathUtils;->fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 442
    return v1

    .line 447
    .end local v6    # "path":Ljava/nio/file/Path;
    .end local v7    # "binarySearch":I
    :cond_6
    goto :goto_2

    .line 445
    .restart local v6    # "path":Ljava/nio/file/Path;
    .restart local v7    # "binarySearch":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected mismatch."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    .end local v6    # "path":Ljava/nio/file/Path;
    .end local v7    # "binarySearch":I
    :cond_8
    return v0
.end method

.method public static directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 3
    .param p0, "path1"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

    const v2, 0x7fffffff

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/commons/io/file/PathUtils;->directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z

    move-result v0

    return v0
.end method

.method public static directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z
    .locals 8
    .param p0, "path1"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .param p2, "maxDepth"    # I
    .param p3, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .param p4, "fileVisitOptions"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    new-instance v7, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;Lorg/apache/commons/io/file/PathUtils$1;)V

    iget-boolean v0, v7, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    return v0
.end method

.method public static fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 2
    .param p0, "path1"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/file/PathUtils;->fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z

    move-result v0

    return v0
.end method

.method public static fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z
    .locals 9
    .param p0, "path1"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .param p2, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .param p3, "openOptions"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 517
    return v0

    .line 519
    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez p1, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 520
    return v1

    .line 522
    :cond_3
    invoke-interface {p0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v2

    .line 523
    .local v2, "nPath1":Ljava/nio/file/Path;
    invoke-interface {p1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v3

    .line 524
    .local v3, "nPath2":Ljava/nio/file/Path;
    invoke-static {v2, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    .line 525
    .local v4, "path1Exists":Z
    invoke-static {v3, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eq v4, v5, :cond_4

    .line 526
    return v1

    .line 528
    :cond_4
    if-nez v4, :cond_5

    .line 531
    return v0

    .line 533
    :cond_5
    invoke-static {v2, p2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    const-string v6, "Can\'t compare directories, only files: "

    if-nez v5, :cond_d

    .line 537
    invoke-static {v3, p2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 541
    invoke-static {v2}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v5

    invoke-static {v3}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6

    .line 543
    return v1

    .line 545
    :cond_6
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 547
    return v0

    .line 549
    :cond_7
    invoke-static {v2, p3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 550
    .local v0, "inputStream1":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v3, p3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 549
    .local v1, "inputStream2":Ljava/io/InputStream;
    nop

    .line 551
    :try_start_1
    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    if-eqz v1, :cond_8

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 551
    :cond_9
    return v5

    .line 549
    :catchall_0
    move-exception v5

    .end local v0    # "inputStream1":Ljava/io/InputStream;
    .end local v1    # "inputStream2":Ljava/io/InputStream;
    .end local v2    # "nPath1":Ljava/nio/file/Path;
    .end local v3    # "nPath2":Ljava/nio/file/Path;
    .end local v4    # "path1Exists":Z
    .end local p0    # "path1":Ljava/nio/file/Path;
    .end local p1    # "path2":Ljava/nio/file/Path;
    .end local p2    # "linkOptions":[Ljava/nio/file/LinkOption;
    .end local p3    # "openOptions":[Ljava/nio/file/OpenOption;
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 552
    .restart local v0    # "inputStream1":Ljava/io/InputStream;
    .restart local v1    # "inputStream2":Ljava/io/InputStream;
    .restart local v2    # "nPath1":Ljava/nio/file/Path;
    .restart local v3    # "nPath2":Ljava/nio/file/Path;
    .restart local v4    # "path1Exists":Z
    .restart local p0    # "path1":Ljava/nio/file/Path;
    .restart local p1    # "path2":Ljava/nio/file/Path;
    .restart local p2    # "linkOptions":[Ljava/nio/file/LinkOption;
    .restart local p3    # "openOptions":[Ljava/nio/file/OpenOption;
    :catchall_1
    move-exception v6

    if-eqz v1, :cond_a

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v7

    :try_start_5
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "inputStream1":Ljava/io/InputStream;
    .end local v2    # "nPath1":Ljava/nio/file/Path;
    .end local v3    # "nPath2":Ljava/nio/file/Path;
    .end local v4    # "path1Exists":Z
    .end local p0    # "path1":Ljava/nio/file/Path;
    .end local p1    # "path2":Ljava/nio/file/Path;
    .end local p2    # "linkOptions":[Ljava/nio/file/LinkOption;
    .end local p3    # "openOptions":[Ljava/nio/file/OpenOption;
    :cond_a
    :goto_2
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 549
    .end local v1    # "inputStream2":Ljava/io/InputStream;
    .restart local v0    # "inputStream1":Ljava/io/InputStream;
    .restart local v2    # "nPath1":Ljava/nio/file/Path;
    .restart local v3    # "nPath2":Ljava/nio/file/Path;
    .restart local v4    # "path1Exists":Z
    .restart local p0    # "path1":Ljava/nio/file/Path;
    .restart local p1    # "path2":Ljava/nio/file/Path;
    .restart local p2    # "linkOptions":[Ljava/nio/file/LinkOption;
    .restart local p3    # "openOptions":[Ljava/nio/file/OpenOption;
    :catchall_3
    move-exception v1

    .end local v0    # "inputStream1":Ljava/io/InputStream;
    .end local v2    # "nPath1":Ljava/nio/file/Path;
    .end local v3    # "nPath2":Ljava/nio/file/Path;
    .end local v4    # "path1Exists":Z
    .end local p0    # "path1":Ljava/nio/file/Path;
    .end local p1    # "path2":Ljava/nio/file/Path;
    .end local p2    # "linkOptions":[Ljava/nio/file/LinkOption;
    .end local p3    # "openOptions":[Ljava/nio/file/OpenOption;
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 552
    .restart local v0    # "inputStream1":Ljava/io/InputStream;
    .restart local v2    # "nPath1":Ljava/nio/file/Path;
    .restart local v3    # "nPath2":Ljava/nio/file/Path;
    .restart local v4    # "path1Exists":Z
    .restart local p0    # "path1":Ljava/nio/file/Path;
    .restart local p1    # "path2":Ljava/nio/file/Path;
    .restart local p2    # "linkOptions":[Ljava/nio/file/LinkOption;
    .restart local p3    # "openOptions":[Ljava/nio/file/OpenOption;
    :catchall_4
    move-exception v5

    if-eqz v0, :cond_b

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v6

    invoke-virtual {v1, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    throw v5

    .line 539
    .end local v0    # "inputStream1":Ljava/io/InputStream;
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAclEntryList(Ljava/nio/file/Path;)Ljava/util/List;
    .locals 2
    .param p0, "sourcePath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/file/attribute/AclEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    const-class v0, Ljava/nio/file/attribute/AclFileAttributeView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/AclFileAttributeView;

    .line 566
    .local v0, "fileAttributeView":Ljava/nio/file/attribute/AclFileAttributeView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/nio/file/attribute/AclFileAttributeView;->getAcl()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static isEmpty(Ljava/nio/file/Path;)Z
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->isEmptyDirectory(Ljava/nio/file/Path;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->isEmptyFile(Ljava/nio/file/Path;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static isEmptyDirectory(Ljava/nio/file/Path;)Z
    .locals 4
    .param p0, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    .line 589
    .local v0, "directoryStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 590
    const/4 v1, 0x0

    .line 592
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V

    .line 590
    :cond_0
    return v1

    .line 592
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V

    .line 593
    .end local v0    # "directoryStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 588
    .restart local v0    # "directoryStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v1

    .end local v0    # "directoryStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local p0    # "directory":Ljava/nio/file/Path;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 592
    .restart local v0    # "directoryStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local p0    # "directory":Ljava/nio/file/Path;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
.end method

.method public static isEmptyFile(Ljava/nio/file/Path;)Z
    .locals 4
    .param p0, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z
    .locals 5
    .param p0, "options"    # [Lorg/apache/commons/io/file/DeleteOption;

    .line 379
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 380
    return v0

    .line 382
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 383
    .local v3, "deleteOption":Lorg/apache/commons/io/file/DeleteOption;
    sget-object v4, Lorg/apache/commons/io/file/StandardDeleteOption;->OVERRIDE_READ_ONLY:Lorg/apache/commons/io/file/StandardDeleteOption;

    if-ne v3, v4, :cond_1

    .line 384
    const/4 v0, 0x1

    return v0

    .line 382
    .end local v3    # "deleteOption":Lorg/apache/commons/io/file/DeleteOption;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    :cond_2
    return v0
.end method

.method static relativize(Ljava/util/Collection;Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 2
    .param p1, "parent"    # Ljava/nio/file/Path;
    .param p2, "sort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            "Z",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 618
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/file/Path;>;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/nio/file/Path;>;"
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda0;-><init>(Ljava/nio/file/Path;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 619
    .local v0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    if-eqz p2, :cond_1

    .line 620
    if-nez p3, :cond_0

    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 622
    :cond_1
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static varargs setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .locals 5
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "readOnly"    # Z
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    const-class v0, Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-static {p0, v0, p2}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/DosFileAttributeView;

    .line 642
    .local v0, "fileAttributeView":Ljava/nio/file/attribute/DosFileAttributeView;
    if-eqz v0, :cond_0

    .line 643
    invoke-interface {v0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setReadOnly(Z)V

    .line 644
    return-object p0

    .line 646
    :cond_0
    const-class v1, Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p0, v1, p2}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 648
    .local v1, "posixFileAttributeView":Ljava/nio/file/attribute/PosixFileAttributeView;
    if-eqz v1, :cond_1

    .line 652
    invoke-interface {v1}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v2

    .line 653
    .local v2, "readAttributes":Ljava/nio/file/attribute/PosixFileAttributes;
    invoke-interface {v2}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v3

    .line 654
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 655
    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 656
    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 657
    invoke-static {p0, v3}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    move-result-object v4

    return-object v4

    .line 659
    .end local v2    # "readAttributes":Ljava/nio/file/attribute/PosixFileAttributes;
    .end local v3    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No DosFileAttributeView or PosixFileAttributeView for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static varargs toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set;
    .locals 2
    .param p0, "fileVisitOptions"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;"
        }
    .end annotation

    .line 669
    if-nez p0, :cond_0

    const-class v0, Ljava/nio/file/FileVisitOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 670
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 669
    :goto_0
    return-object v0
.end method

.method public static varargs visitFileTree(Ljava/nio/file/FileVisitor;Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/FileVisitor;
    .locals 1
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "more"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    .local p0, "visitor":Ljava/nio/file/FileVisitor;, "TT;"
    invoke-static {p1, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object v0

    return-object v0
.end method

.method public static visitFileTree(Ljava/nio/file/FileVisitor;Ljava/net/URI;)Ljava/nio/file/FileVisitor;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/net/URI;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    .local p0, "visitor":Ljava/nio/file/FileVisitor;, "TT;"
    invoke-static {p1}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object v0

    return-object v0
.end method

.method public static visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;
    .locals 0
    .param p1, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/nio/file/Path;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    .local p0, "visitor":Ljava/nio/file/FileVisitor;, "TT;"
    invoke-static {p1, p0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 688
    return-object p0
.end method

.method public static visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;Ljava/util/Set;I)Ljava/nio/file/FileVisitor;
    .locals 0
    .param p1, "start"    # Ljava/nio/file/Path;
    .param p3, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    .local p0, "visitor":Ljava/nio/file/FileVisitor;, "TT;"
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;"
    invoke-static {p1, p2, p3, p0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 708
    return-object p0
.end method
