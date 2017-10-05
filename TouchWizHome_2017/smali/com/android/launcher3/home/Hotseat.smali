.class public Lcom/android/launcher3/home/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"

# interfaces
.implements Lcom/android/launcher3/Stats$LaunchSourceProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.Hotseat"


# instance fields
.field private mContent:Lcom/android/launcher3/home/HotseatCellLayout;

.field private final mHasVerticalHotseat:Z

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHsDragController:Lcom/android/launcher3/home/HotseatDragController;

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/home/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/home/Hotseat;->mHasVerticalHotseat:Z

    new-instance v0, Lcom/android/launcher3/home/HotseatDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/home/HotseatDragController;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/Hotseat;)V

    iput-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHsDragController:Lcom/android/launcher3/home/HotseatDragController;

    return-void
.end method


# virtual methods
.method beginBind(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentHotseatGridIcon(I)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    goto :goto_0
.end method

.method bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/home/HomeController;

    iput-object p1, p0, Lcom/android/launcher3/home/Hotseat;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-void
.end method

.method changeColorForBg(Z)V
    .locals 6

    iget-object v4, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HotseatCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method changeGrid(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/home/Hotseat;->changeGrid(ZZ)V

    return-void
.end method

.method changeGrid(ZZ)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HotseatCellLayout;->setCellDimensions()V

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v4, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HotseatCellLayout;->markCellsAsOccupiedForAllChild()V

    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->requestLayout()V

    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentHotseatGridIcon(I)Z

    move-result v2

    :goto_1
    if-nez p2, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v3, v1, p1}, Lcom/android/launcher3/home/HotseatCellLayout;->gridSizeChanged(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Z)V

    :cond_2
    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HotseatCellLayout;->updateFolderGrid()V

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v4, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentHotseatGridIcon(I)Z

    move-result v2

    goto :goto_1
.end method

.method dumpHotseatItem()V
    .locals 9

    iget-object v6, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/IconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v6, "Launcher.Hotseat"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dumpHotseatItem itemInfo : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Launcher.Hotseat"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dumpHotseatItem lp.x : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lp.y : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "container"

    const-string v1, "hotseat"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method getCellXFromOrder(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method getCellYFromOrder(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/home/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDragController()Lcom/android/launcher3/home/HotseatDragController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHsDragController:Lcom/android/launcher3/home/HotseatDragController;

    return-object v0
.end method

.method getIconView(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;
    .locals 8

    const/4 v5, 0x0

    if-nez p1, :cond_1

    move-object v4, v5

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_5

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_5
    move-object v4, v5

    goto :goto_0
.end method

.method public getLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    :cond_0
    return p1
.end method

.method hasIcons()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVerticalHotseat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/Hotseat;->mHasVerticalHotseat:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f1100a6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/HotseatCellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/home/HotseatCellLayout;->setHotseat(Lcom/android/launcher3/home/Hotseat;)V

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HotseatCellLayout;->setMaxCellCount(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->removeAllViewsInLayout()V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HotseatCellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HotseatCellLayout;->setTargetView(Landroid/view/View;)V

    return-void
.end method

.method setup(Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHsDragController:Lcom/android/launcher3/home/HotseatDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/Hotseat;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->setup(Lcom/android/launcher3/home/HomeController;)V

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHsDragController:Lcom/android/launcher3/home/HotseatDragController;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    iget-object v0, p0, Lcom/android/launcher3/home/Hotseat;->mHsDragController:Lcom/android/launcher3/home/HotseatDragController;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    return-void
.end method

.method updateCheckBox(Z)V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/launcher3/home/Hotseat;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HotseatCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->updateCheckBox(Z)V

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    :cond_1
    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    instance-of v4, v3, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    goto :goto_1

    :cond_4
    return-void
.end method
