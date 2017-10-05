.class public final Lcom/android/launcher3/util/ScreenGridUtilities;
.super Ljava/lang/Object;
.source "ScreenGridUtilities.java"


# static fields
.field private static final APPS_GRID_CELLX:Ljava/lang/String; = "Apps.CellX"

.field private static final APPS_GRID_CELLY:Ljava/lang/String; = "Apps.CellY"

.field private static final APPS_GRID_SUPPORTED_SET:Ljava/lang/String; = "Apps.GridSet"

.field public static final BOTTOM_LEFT:I = 0x1

.field public static final BOTTOM_RIGHT:I = 0x0

.field public static final DENSITY_LARGE:I = 0x0

.field public static final DENSITY_NORMAL:I = 0x1

.field public static final DENSITY_SMALL:I = 0x2

.field private static final GRID_CELLX:Ljava/lang/String; = "Workspace.CellX"

.field private static final GRID_CELLX_DEFAULT:I = 0x4

.field private static final GRID_CELLX_HOMEONLY:Ljava/lang/String; = "Workspace.HomeOnly.CellX"

.field private static final GRID_CELLY:Ljava/lang/String; = "Workspace.CellY"

.field private static final GRID_CELLY_DEFAULT:I = 0x5

.field private static final GRID_CELLY_HOMEONLY:Ljava/lang/String; = "Workspace.HomeOnly.CellY"

.field private static final GRID_CHANGED:Ljava/lang/String; = "Grid.Changed"

.field public static final INVALID_CELL_INFO:I = -0x1

.field private static final SW_LARGE:I = 0x140

.field private static final SW_NORMAL:I = 0x168

.field private static final SW_SMALL:I = 0x19b

.field private static final TAG:Ljava/lang/String; = "ScreenGridUtilities"

.field public static final TOP_LEFT:I = 0x3

.field public static final TOP_RIGHT:I = 0x2

.field private static mItemComparator_BL:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mItemComparator_BR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mItemComparator_TL:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mItemComparator_TR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mPairItemComparator_BL:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPairItemComparator_BR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPairItemComparator_TL:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPairItemComparator_TR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/ScreenGridUtilities$1;

    invoke-direct {v0}, Lcom/android/launcher3/util/ScreenGridUtilities$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mItemComparator_TL:Ljava/util/Comparator;

    new-instance v0, Lcom/android/launcher3/util/ScreenGridUtilities$2;

    invoke-direct {v0}, Lcom/android/launcher3/util/ScreenGridUtilities$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mItemComparator_TR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/launcher3/util/ScreenGridUtilities$3;

    invoke-direct {v0}, Lcom/android/launcher3/util/ScreenGridUtilities$3;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mItemComparator_BL:Ljava/util/Comparator;

    new-instance v0, Lcom/android/launcher3/util/ScreenGridUtilities$4;

    invoke-direct {v0}, Lcom/android/launcher3/util/ScreenGridUtilities$4;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mItemComparator_BR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/launcher3/util/ScreenGridUtilities$5;

    invoke-direct {v0}, Lcom/android/launcher3/util/ScreenGridUtilities$5;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mPairItemComparator_TL:Ljava/util/Comparator;

    new-instance v0, Lcom/android/launcher3/util/ScreenGridUtilities$6;

    invoke-direct {v0}, Lcom/android/launcher3/util/ScreenGridUtilities$6;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mPairItemComparator_TR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/launcher3/util/ScreenGridUtilities$7;

    invoke-direct {v0}, Lcom/android/launcher3/util/ScreenGridUtilities$7;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mPairItemComparator_BL:Ljava/util/Comparator;

    new-instance v0, Lcom/android/launcher3/util/ScreenGridUtilities$8;

    invoke-direct {v0}, Lcom/android/launcher3/util/ScreenGridUtilities$8;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mPairItemComparator_BR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeGridForDpi(Landroid/content/Context;Z)V
    .locals 8

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-static {p0}, Lcom/android/launcher3/util/ScreenGridUtilities;->getGridValueForDensity(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v1, v6, v5

    const-string v6, "x"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadChageGridValue(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v6

    if-ne v6, v3, :cond_2

    iget-object v6, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v6

    if-eq v6, v4, :cond_3

    :cond_2
    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    invoke-static {p0, v3, v4, p1}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    :cond_3
    return-void
.end method

.method public static findNearestGridSize(Landroid/content/Context;[III)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c0005

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v8, v5

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v5, v6

    const-string v9, "x"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v9, v1

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    aget-object v9, v1, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v9, v1, v11

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt p2, v2, :cond_2

    if-gt p3, v3, :cond_2

    :cond_0
    if-lez v2, :cond_1

    if-lez v3, :cond_1

    aput v2, p1, v7

    aput v3, p1, v11

    const/4 v4, 0x1

    :cond_1
    return v4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private static getGridValueForDensity(Landroid/content/Context;)I
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_0
        0x168 -> :sswitch_0
        0x19b -> :sswitch_1
    .end sparse-switch
.end method

.method public static getOutSideItems(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mItemComparator_BL:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-nez p1, :cond_2

    sget-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mItemComparator_BR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mItemComparator_TL:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mItemComparator_TR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static getOutSidePosition(Ljava/util/List;IIII)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;IIII)I"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v9, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v10, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    instance-of v12, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v12, :cond_6

    iget v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-le v5, p1, :cond_1

    move v5, p1

    :cond_1
    move/from16 v0, p2

    if-le v6, v0, :cond_2

    move/from16 v6, p2

    :cond_2
    if-ge v9, p1, :cond_3

    move/from16 v0, p2

    if-ge v10, v0, :cond_3

    add-int v12, v9, v5

    if-gt v12, p1, :cond_3

    add-int v12, v10, v6

    move/from16 v0, p2

    if-gt v12, v0, :cond_3

    mul-int v12, v5, v6

    add-int/2addr v2, v12

    :cond_3
    move/from16 v0, p3

    if-le v9, v0, :cond_4

    move/from16 v0, p2

    if-ge v10, v0, :cond_4

    add-int v12, v9, v5

    move/from16 v0, p3

    if-le v12, v0, :cond_4

    add-int v12, v10, v6

    move/from16 v0, p2

    if-gt v12, v0, :cond_4

    mul-int v12, v5, v6

    add-int/2addr v1, v12

    :cond_4
    if-ge v9, p1, :cond_5

    move/from16 v0, p4

    if-le v10, v0, :cond_5

    add-int v12, v9, v5

    if-gt v12, p1, :cond_5

    add-int v12, v10, v6

    move/from16 v0, p4

    if-le v12, v0, :cond_5

    mul-int v12, v5, v6

    add-int/2addr v8, v12

    :cond_5
    move/from16 v0, p3

    if-le v9, v0, :cond_0

    move/from16 v0, p4

    if-le v10, v0, :cond_0

    add-int v12, v9, v5

    move/from16 v0, p3

    if-le v12, v0, :cond_0

    add-int v12, v10, v6

    move/from16 v0, p4

    if-le v12, v0, :cond_0

    mul-int v12, v5, v6

    add-int/2addr v7, v12

    goto :goto_0

    :cond_6
    if-ge v9, p1, :cond_7

    move/from16 v0, p2

    if-ge v10, v0, :cond_7

    add-int/lit8 v2, v2, 0x1

    :cond_7
    move/from16 v0, p3

    if-le v9, v0, :cond_8

    move/from16 v0, p2

    if-ge v10, v0, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    if-ge v9, p1, :cond_9

    move/from16 v0, p4

    if-le v10, v0, :cond_9

    add-int/lit8 v8, v8, 0x1

    :cond_9
    move/from16 v0, p3

    if-le v9, v0, :cond_0

    move/from16 v0, p4

    if-le v10, v0, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v11, "ScreenGridUtilities"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getOutSidePosition : bottomRight = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", bottomLeft = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", topRight = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", topLeft = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    return v11
.end method

.method public static getPairOutSideItems(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mPairItemComparator_BL:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-nez p1, :cond_2

    sget-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mPairItemComparator_BR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mPairItemComparator_TL:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/ScreenGridUtilities;->mPairItemComparator_TR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static loadAppsSupportedGridSet(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Apps.GridSet"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadChageGridValue(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "Grid.Changed"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static loadCurrentAppsGridSize(Landroid/content/Context;[I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0d0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, p1, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, p1, v4

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Apps.CellX"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, p1, v3

    const-string v1, "Apps.CellY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, p1, v4

    goto :goto_0
.end method

.method public static loadCurrentGridSize(Landroid/content/Context;[IZ)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "Workspace.HomeOnly.CellX"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, p1, v3

    const-string v1, "Workspace.HomeOnly.CellY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, p1, v4

    :goto_0
    return-void

    :cond_0
    const-string v1, "Workspace.CellX"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, p1, v3

    const-string v1, "Workspace.CellY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, p1, v4

    goto :goto_0
.end method

.method public static storeAppsGridLayoutPreference(Landroid/content/Context;II)V
    .locals 4

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "Apps.CellX"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Apps.CellY"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static storeAppsSupportedGridSet(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid gridSet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "Apps.GridSet"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static storeChangeGridValue(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "Grid.Changed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static storeCurrentScreenGridSetting(Landroid/content/Context;II)V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "launcher_current_screen_grid"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "ScreenGridUtilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeGridLayoutPreference Settings.System.putString error e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static storeGridLayoutPreference(Landroid/content/Context;IIZ)V
    .locals 4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    const-string v2, "Workspace.HomeOnly.CellX"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Workspace.HomeOnly.CellY"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void

    :cond_1
    const-string v2, "Workspace.CellX"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Workspace.CellY"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
