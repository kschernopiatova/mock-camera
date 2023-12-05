.class public final enum Lorg/apache/commons/io/file/StandardDeleteOption;
.super Ljava/lang/Enum;
.source "StandardDeleteOption.java"

# interfaces
.implements Lorg/apache/commons/io/file/DeleteOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/io/file/StandardDeleteOption;",
        ">;",
        "Lorg/apache/commons/io/file/DeleteOption;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/io/file/StandardDeleteOption;

.field public static final enum OVERRIDE_READ_ONLY:Lorg/apache/commons/io/file/StandardDeleteOption;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lorg/apache/commons/io/file/StandardDeleteOption;

    const-string v1, "OVERRIDE_READ_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/file/StandardDeleteOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/io/file/StandardDeleteOption;->OVERRIDE_READ_ONLY:Lorg/apache/commons/io/file/StandardDeleteOption;

    .line 25
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/io/file/StandardDeleteOption;

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/commons/io/file/StandardDeleteOption;->$VALUES:[Lorg/apache/commons/io/file/StandardDeleteOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z
    .locals 5
    .param p0, "options"    # [Lorg/apache/commons/io/file/DeleteOption;

    .line 41
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 45
    .local v3, "deleteOption":Lorg/apache/commons/io/file/DeleteOption;
    sget-object v4, Lorg/apache/commons/io/file/StandardDeleteOption;->OVERRIDE_READ_ONLY:Lorg/apache/commons/io/file/StandardDeleteOption;

    if-ne v3, v4, :cond_1

    .line 46
    const/4 v0, 0x1

    return v0

    .line 44
    .end local v3    # "deleteOption":Lorg/apache/commons/io/file/DeleteOption;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_2
    return v0

    .line 42
    :cond_3
    :goto_1
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/file/StandardDeleteOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/apache/commons/io/file/StandardDeleteOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/StandardDeleteOption;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/io/file/StandardDeleteOption;
    .locals 1

    .line 25
    sget-object v0, Lorg/apache/commons/io/file/StandardDeleteOption;->$VALUES:[Lorg/apache/commons/io/file/StandardDeleteOption;

    invoke-virtual {v0}, [Lorg/apache/commons/io/file/StandardDeleteOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/file/StandardDeleteOption;

    return-object v0
.end method
