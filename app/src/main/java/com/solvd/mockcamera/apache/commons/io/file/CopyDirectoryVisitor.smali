.class public Lorg/apache/commons/io/file/CopyDirectoryVisitor;
.super Lorg/apache/commons/io/file/CountingPathVisitor;
.source "CopyDirectoryVisitor.java"


# static fields
.field private static final EMPTY_COPY_OPTIONS:[Ljava/nio/file/CopyOption;


# instance fields
.field private final copyOptions:[Ljava/nio/file/CopyOption;

.field private final sourceDirectory:Ljava/nio/file/Path;

.field private final targetDirectory:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/CopyOption;

    sput-object v0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->EMPTY_COPY_OPTIONS:[Ljava/nio/file/CopyOption;

    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 1
    .param p1, "pathCounter"    # Lorg/apache/commons/io/file/Counters$PathCounters;
    .param p2, "sourceDirectory"    # Ljava/nio/file/Path;
    .param p3, "targetDirectory"    # Ljava/nio/file/Path;
    .param p4, "copyOptions"    # [Ljava/nio/file/CopyOption;

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    .line 55
    iput-object p2, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->sourceDirectory:Ljava/nio/file/Path;

    .line 56
    iput-object p3, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->targetDirectory:Ljava/nio/file/Path;

    .line 57
    if-nez p4, :cond_0

    sget-object v0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->EMPTY_COPY_OPTIONS:[Ljava/nio/file/CopyOption;

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, [Ljava/nio/file/CopyOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/CopyOption;

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->copyOptions:[Ljava/nio/file/CopyOption;

    .line 58
    return-void
.end method


# virtual methods
.method protected copy(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "sourceFile"    # Ljava/nio/file/Path;
    .param p2, "targetFile"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->copyOptions:[Ljava/nio/file/CopyOption;

    invoke-static {p1, p2, v0}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 70
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 74
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 75
    return v0

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 78
    return v2

    .line 80
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    .line 81
    return v2

    .line 83
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/io/file/CopyDirectoryVisitor;

    .line 84
    .local v1, "other":Lorg/apache/commons/io/file/CopyDirectoryVisitor;
    iget-object v3, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->copyOptions:[Ljava/nio/file/CopyOption;

    iget-object v4, v1, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->copyOptions:[Ljava/nio/file/CopyOption;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->sourceDirectory:Ljava/nio/file/Path;

    iget-object v4, v1, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->sourceDirectory:Ljava/nio/file/Path;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->targetDirectory:Ljava/nio/file/Path;

    iget-object v4, v1, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->targetDirectory:Ljava/nio/file/Path;

    .line 85
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 84
    :goto_0
    return v0
.end method

.method public getCopyOptions()[Ljava/nio/file/CopyOption;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->copyOptions:[Ljava/nio/file/CopyOption;

    invoke-virtual {v0}, [Ljava/nio/file/CopyOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/CopyOption;

    return-object v0
.end method

.method public getSourceDirectory()Ljava/nio/file/Path;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->sourceDirectory:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getTargetDirectory()Ljava/nio/file/Path;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->targetDirectory:Ljava/nio/file/Path;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 120
    const/16 v0, 0x1f

    .line 121
    .local v0, "prime":I
    invoke-super {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->hashCode()I

    move-result v1

    .line 122
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->copyOptions:[Ljava/nio/file/CopyOption;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 123
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->sourceDirectory:Ljava/nio/file/Path;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->targetDirectory:Ljava/nio/file/Path;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 124
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 3
    .param p1, "directory"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->targetDirectory:Ljava/nio/file/Path;

    iget-object v1, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->sourceDirectory:Ljava/nio/file/Path;

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 131
    .local v0, "newTargetDir":Ljava/nio/file/Path;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 134
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .param p1, "sourceFile"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->targetDirectory:Ljava/nio/file/Path;

    iget-object v1, p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->sourceDirectory:Ljava/nio/file/Path;

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 140
    .local v0, "targetFile":Ljava/nio/file/Path;
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 141
    invoke-super {p0, v0, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v1

    return-object v1
.end method
