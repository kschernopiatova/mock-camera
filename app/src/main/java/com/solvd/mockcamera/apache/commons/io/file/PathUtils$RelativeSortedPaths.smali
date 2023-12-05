.class Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;
.super Ljava/lang/Object;
.source "PathUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/PathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelativeSortedPaths"
.end annotation


# instance fields
.field final equals:Z

.field final relativeFileList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final relativeFileList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V
    .locals 18
    .param p1, "dir1"    # Ljava/nio/file/Path;
    .param p2, "dir2"    # Ljava/nio/file/Path;
    .param p3, "maxDepth"    # I
    .param p4, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .param p5, "fileVisitOptions"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v6, 0x0

    .line 85
    .local v6, "tmpRelativeDirList1":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    const/4 v7, 0x0

    .line 86
    .local v7, "tmpRelativeDirList2":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    const/4 v8, 0x0

    .line 87
    .local v8, "tmpRelativeFileList1":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    const/4 v9, 0x0

    .line 88
    .local v9, "tmpRelativeFileList2":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    const/4 v10, 0x1

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 89
    iput-boolean v10, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    goto/16 :goto_4

    .line 90
    :cond_0
    const/4 v11, 0x0

    if-nez v1, :cond_1

    move v12, v10

    goto :goto_0

    :cond_1
    move v12, v11

    :goto_0
    if-nez v2, :cond_2

    move v13, v10

    goto :goto_1

    :cond_2
    move v13, v11

    :goto_1
    xor-int/2addr v12, v13

    if-eqz v12, :cond_3

    .line 91
    iput-boolean v11, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    goto/16 :goto_4

    .line 93
    :cond_3
    invoke-static {v1, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v12

    .line 94
    .local v12, "parentDirExists1":Z
    invoke-static {v2, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v13

    .line 95
    .local v13, "parentDirExists2":Z
    if-eqz v12, :cond_8

    if-nez v13, :cond_4

    move/from16 v17, v11

    move v11, v10

    move/from16 v10, v17

    goto :goto_3

    .line 98
    :cond_4
    invoke-static {v1, v3, v5}, Lorg/apache/commons/io/file/PathUtils;->access$000(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v14

    .line 99
    .local v14, "visitor1":Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    invoke-static {v2, v3, v5}, Lorg/apache/commons/io/file/PathUtils;->access$000(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v15

    .line 100
    .local v15, "visitor2":Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    invoke-virtual {v14}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getDirList()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v15}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getDirList()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v10

    if-ne v11, v10, :cond_7

    .line 101
    invoke-virtual {v14}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getFileList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v15}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getFileList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-eq v10, v11, :cond_5

    goto :goto_2

    .line 104
    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v14, v1, v11, v10}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeDirectories(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v6

    .line 105
    invoke-virtual {v15, v2, v11, v10}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeDirectories(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v7

    .line 106
    invoke-interface {v6, v7}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 107
    const/4 v10, 0x0

    iput-boolean v10, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    goto :goto_4

    .line 109
    :cond_6
    invoke-virtual {v14, v1, v11, v10}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeFiles(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v8

    .line 110
    invoke-virtual {v15, v2, v11, v10}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeFiles(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v9

    .line 111
    invoke-interface {v8, v9}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    goto :goto_4

    .line 102
    :cond_7
    :goto_2
    const/4 v10, 0x0

    iput-boolean v10, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    goto :goto_4

    .line 95
    .end local v14    # "visitor1":Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .end local v15    # "visitor2":Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    :cond_8
    move/from16 v17, v11

    move v11, v10

    move/from16 v10, v17

    .line 96
    :goto_3
    if-nez v12, :cond_9

    if-nez v13, :cond_9

    move v10, v11

    :cond_9
    iput-boolean v10, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    .line 118
    .end local v12    # "parentDirExists1":Z
    .end local v13    # "parentDirExists2":Z
    :goto_4
    iput-object v8, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList1:Ljava/util/List;

    .line 119
    iput-object v9, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList2:Ljava/util/List;

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;Lorg/apache/commons/io/file/PathUtils$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/file/Path;
    .param p2, "x1"    # Ljava/nio/file/Path;
    .param p3, "x2"    # I
    .param p4, "x3"    # [Ljava/nio/file/LinkOption;
    .param p5, "x4"    # [Ljava/nio/file/FileVisitOption;
    .param p6, "x5"    # Lorg/apache/commons/io/file/PathUtils$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V

    return-void
.end method
