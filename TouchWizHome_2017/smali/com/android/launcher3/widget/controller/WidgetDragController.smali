.class public Lcom/android/launcher3/widget/controller/WidgetDragController;
.super Ljava/lang/Object;
.source "WidgetDragController.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DragSource;


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetDragController"


# instance fields
.field private final mDragManager:Lcom/android/launcher3/common/drag/DragManager;

.field private mHostViewLoader:Lcom/android/launcher3/widget/WidgetHostViewLoader;

.field private final mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field protected mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->getInstance()Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    return-void
.end method

.method private beginDragging(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x1

    instance-of v2, p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v2, :cond_1

    const v2, 0x7f110102

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    check-cast p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/controller/WidgetDragController;->beginDraggingWidget(Lcom/android/launcher3/widget/view/WidgetItemView;Landroid/widget/ImageView;)Z

    goto :goto_0

    :cond_1
    const-string v2, "WidgetDragController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected dragging view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private beginDraggingWidget(Lcom/android/launcher3/widget/view/WidgetItemView;Landroid/widget/ImageView;)Z
    .locals 19

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-virtual {v10}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    instance-of v1, v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v1, :cond_2

    move-object v9, v5

    check-cast v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/launcher3/home/Workspace;->estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I

    move-result-object v18

    invoke-virtual {v10}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    const/high16 v14, 0x3fa00000    # 1.25f

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    const/4 v2, 0x0

    aget v2, v18, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v4, v13, v0}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->generateWidgetPreview(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v1, 0x0

    aget v1, v16, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    aget v2, v16, v2

    sub-int/2addr v1, v2

    div-int/lit8 v15, v1, 0x2

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    mul-int/2addr v1, v15

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int v15, v1, v2

    :cond_0
    iget v1, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v15

    iput v1, v6, Landroid/graphics/Rect;->left:I

    iget v1, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v15

    iput v1, v6, Landroid/graphics/Rect;->right:I

    :cond_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v1, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v2, p2

    move-object/from16 v4, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/Launcher;->beginDragFromWidget(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;F)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v8}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v11, v1, v12, v12}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v12, v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_3

    move-object/from16 v3, v17

    :cond_3
    const/4 v1, 0x1

    iput v1, v5, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    iput v1, v5, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOutlineColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mHostViewLoader:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mHostViewLoader:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->onHostViewDropped()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mHostViewLoader:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    :cond_2
    return-void
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public startDrag(Landroid/view/View;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "WidgetDragController"

    const-string v4, "onLonglick dragging enabled?."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getProviderInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanX()I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanY()I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetDragController;->beginDragging(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v3, v4, p1}, Lcom/android/launcher3/widget/WidgetHostViewLoader;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mHostViewLoader:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mHostViewLoader:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-virtual {v3}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->preloadWidget()Z

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mHostViewLoader:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    goto :goto_0
.end method
