.class public Lcom/android/launcher3/folder/controller/FolderController;
.super Lcom/android/launcher3/common/stage/Stage;
.source "FolderController.java"

# interfaces
.implements Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;


# static fields
.field public static final KEY_FOLDER_ICON_APPSEARCHED:Ljava/lang/String; = "KEY_FOLDER_ICON_APPSEARCHED"

.field public static final KEY_FOLDER_ICON_VIEW:Ljava/lang/String; = "KEY_FOLDER_ICON_VIEW"

.field public static final STATE_DRAG:I = 0x2

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_NORMAL:I = 0x1

.field public static final STATE_SELECT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FolderController"


# instance fields
.field private mBgBlurAmount:F

.field private mBgDrakenAlpha:F

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

.field private mFolderCloseReason:I

.field private mHelpTextContainerHeight:I

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

.field private mState:I

.field private mStateTransitionDuration:I

.field private mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

.field private mTargetFolderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/controller/FolderController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/controller/FolderController;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/folder/controller/FolderController;Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->onCloseComplete(Lcom/android/launcher3/folder/view/FolderView;)V

    return-void
.end method

.method private attachFolderToDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderBgView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v2, v3, v3, v3}, Lcom/android/launcher3/folder/view/FolderBgView;->showHelpForEdit(ZIZ)V

    new-instance v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v0, v4, v4}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    return-void
.end method

.method private callRefreshLiveIcon()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->callRefreshLiveIcon()V

    goto :goto_0
.end method

.method private closeFolder()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    return-void
.end method

.method private detachFolderFromDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderBgView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private getAdjustedInternalState(I)I
    .locals 0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    :cond_0
    return p1
.end method

.method private isValidFolder()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "FolderController"

    const-string v2, "OpenFolder is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isWhiteBg()Z
    .locals 2

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCloseComplete(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/controller/FolderController;->updateCheckBox(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->detachFolderFromDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/folder/view/FolderView;->bindController(Lcom/android/launcher3/folder/controller/FolderController;)V

    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method private onCloseFolder(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    return-void
.end method

.method private onOpenFolder(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->callRefreshLiveIcon()V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->attachFolderToDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V

    :goto_0
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->sendAccessibilityEvent(I)V

    return-void

    :cond_0
    const-string v0, "FolderController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening folder ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") which already has a parent ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCountBadge(Landroid/view/View;)V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedItemCountInFolder(J)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    :cond_0
    return-void
.end method

.method private setupFolderBgLayout()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    iget v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mHelpTextContainerHeight:I

    if-lez v6, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderBgView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    new-array v2, v6, [I

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v6, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v5

    aget v6, v2, v8

    if-lez v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0034

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aget v6, v2, v8

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getHeader()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v3, v6, v4

    if-lez v3, :cond_0

    iput v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mHelpTextContainerHeight:I

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    iget v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mHelpTextContainerHeight:I

    const/16 v8, 0x50

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/folder/view/FolderBgView;->setHelpTextContainerHeightAndGravity(II)V

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public closeFolderIfLackItem()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->closeFolder()V

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->showIfNeeded(Landroid/app/FragmentManager;)V

    :cond_0
    return-void
.end method

.method public enterDragState(Z)V
    .locals 3

    const/4 v2, 0x2

    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public enterNormalState(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public enterNormalState(ZLjava/lang/Runnable;)V
    .locals 3

    const/4 v2, 0x1

    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public enterSelectState(Z)V
    .locals 3

    const/4 v2, 0x3

    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public finishOnTouchOutSide()Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f090062

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected getBackgroundBlurAmountForState(I)F
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/BlurUtils;->getMaxBlurAmount()F

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBgBlurAmount:F

    goto :goto_1
.end method

.method protected getBackgroundDimAlphaForState(I)F
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBgDrakenAlpha:F

    goto :goto_1
.end method

.method protected getBackgroundImageAlphaForState(I)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFolderBgView()Lcom/android/launcher3/folder/view/FolderBgView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    return-object v0
.end method

.method protected getInternalState()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    return v0
.end method

.method getLauncher()Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public getSearchedAppInfo()Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    return v0
.end method

.method protected getSupportSoftInputParam(Landroid/view/Window;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v1, v0, -0x11

    return v1
.end method

.method getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    return-object v0
.end method

.method public initStageView()V
    .locals 2

    const-string v0, "FolderController"

    const-string v1, "initStageView()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    return-void
.end method

.method protected isRestorable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBackPressed()Z
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    if-nez v2, :cond_2

    iput v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onChangeColorForBg(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->setFolderContentColor()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isWhiteBg()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderBgView;->setHelpTextColor(Z)V

    :cond_1
    return-void
.end method

.method public onChangeSelectMode(ZZ)V
    .locals 7

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/controller/FolderController;->enterSelectState(Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->updateCheckBox(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/Talk;->postSay(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearCheckedApps()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->updateCheckBox(Z)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addCheckedApp(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;)V

    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->refreshCountBadge(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickMultiSelectPanel(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->closeFolder()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChangedIfNeeded(Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mHelpTextContainerHeight:I

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->onConfigurationChangedIfNeeded()V

    :cond_0
    return-void
.end method

.method public onDestroyActivity()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    :cond_0
    invoke-static {}, Lcom/android/launcher3/folder/view/FolderIconView;->release()V

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    :cond_1
    return-void
.end method

.method public onPauseActivity()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    :cond_1
    return-void
.end method

.method public onSetPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->setPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V

    :cond_0
    return-void
.end method

.method protected onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 12

    const-string v8, "FolderController"

    const-string v9, "onStageEnter()"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    iget v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v6

    const-string v8, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    const-string v8, "KEY_FOLDER_ICON_APPSEARCHED"

    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    iput-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    const-string v8, "KEY_SELECTED_ITEMS"

    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    :cond_0
    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_6

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/view/FolderView;->bindController(Lcom/android/launcher3/folder/controller/FolderController;)V

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    if-eq v5, v8, :cond_2

    const/4 v8, 0x2

    if-ne v5, v8, :cond_9

    :cond_2
    const-string v8, "FolderController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onStageEnter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/controller/FolderController;->onOpenFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->prepareOpen()V

    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    iget-object v9, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v8, v2, v9}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getEnterFromHomeOrAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/view/FolderView;->onOpen(Landroid/animation/Animator;)V

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/launcher3/folder/controller/FolderController;->getAdjustedInternalState(I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher3/folder/controller/FolderController;->enterDragState(Z)V

    :cond_3
    iput v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    :cond_4
    :goto_0
    const/4 v8, 0x1

    if-ne v5, v8, :cond_d

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/launcher3/folder/folderlock/FolderLock;->lockFolderAfterAdd(Lcom/android/launcher3/folder/FolderInfo;)V

    :cond_6
    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isWhiteBg()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/launcher3/folder/view/FolderBgView;->setHelpTextColor(Z)V

    iget v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher3/folder/controller/FolderController;->showFolderBgView(ZZ)V

    :cond_7
    sget-object v8, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v8}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v8

    if-nez v8, :cond_8

    if-eqz v1, :cond_8

    new-instance v8, Lcom/android/launcher3/folder/controller/FolderController$1;

    invoke-direct {v8, p0}, Lcom/android/launcher3/folder/controller/FolderController$1;-><init>(Lcom/android/launcher3/folder/controller/FolderController;)V

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_8
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    return-object v1

    :cond_9
    const/4 v8, 0x6

    if-ne v5, v8, :cond_c

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-nez v8, :cond_a

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/launcher3/folder/controller/FolderController;->getAdjustedInternalState(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/controller/FolderController;->onOpenFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->prepareOpen()V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/android/launcher3/folder/view/FolderView;->onOpen(Landroid/animation/Animator;)V

    :cond_a
    if-eqz v0, :cond_b

    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v8, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->addItems(Ljava/util/ArrayList;)V

    :cond_b
    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v8, v2, v0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getEnterFromFolderAddAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;)Landroid/animation/Animator;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    const/4 v8, 0x3

    if-ne v5, v8, :cond_4

    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v8, v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getEnterFromWidgetAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;

    move-result-object v1

    goto/16 :goto_0

    :cond_d
    const/4 v8, 0x2

    if-ne v5, v8, :cond_e

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_1

    :cond_e
    const/4 v8, 0x6

    if-ne v5, v8, :cond_5

    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v8, v8, v10

    if-nez v8, :cond_f

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_1

    :cond_f
    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_1
.end method

.method protected onStageEnterByTray()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 12

    const-string v10, "FolderController"

    const-string v11, "onStageExit()"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v10}, Lcom/android/launcher3/Utilities;->closeDialog(Landroid/app/Activity;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    iget v9, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v5

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    :cond_0
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_7

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_9

    :cond_2
    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_3

    const-string v10, "KEY_FOLDER_ICON_VIEW"

    iget-object v11, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {p1, v10, v11}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/launcher3/folder/controller/FolderController;->onCloseFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    iget v10, p1, Lcom/android/launcher3/common/stage/StageEntry;->stageCountOnFinishAllStage:I

    const/4 v11, 0x2

    if-gt v10, v11, :cond_5

    iget-boolean v10, p1, Lcom/android/launcher3/common/stage/StageEntry;->broughtToHome:Z

    if-eqz v10, :cond_c

    :cond_5
    const-string v10, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_a

    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_b

    const/4 v10, 0x4

    :goto_2
    iput v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/android/launcher3/folder/view/FolderView;->onClose(Landroid/animation/Animator;)V

    :goto_3
    iget v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    if-nez v10, :cond_6

    const/4 v10, 0x4

    iput v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    :cond_6
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v10

    if-eqz v10, :cond_d

    const v10, 0x7f0901a3

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_4
    const v10, 0x7f090130

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v10

    iget v11, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v7, v1, v11}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    if-eqz v2, :cond_e

    new-instance v10, Lcom/android/launcher3/folder/controller/FolderController$2;

    invoke-direct {v10, p0, v0}, Lcom/android/launcher3/folder/controller/FolderController$2;-><init>(Lcom/android/launcher3/folder/controller/FolderController;Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v2, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_7
    :goto_5
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher3/folder/controller/FolderController;->showFolderBgView(ZZ)V

    :cond_8
    return-object v2

    :cond_9
    const/4 v4, 0x0

    goto :goto_0

    :cond_a
    const/4 v8, 0x0

    goto :goto_1

    :cond_b
    const/4 v10, 0x3

    goto :goto_2

    :cond_c
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    iget-object v11, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v10, v3, v11}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getExitToHomeOrAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/view/FolderView;->onClose(Landroid/animation/Animator;)V

    goto :goto_3

    :cond_d
    const v10, 0x7f0901af

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_e
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/launcher3/folder/view/FolderIconView;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/controller/FolderController;->onCloseComplete(Lcom/android/launcher3/folder/view/FolderView;)V

    goto :goto_5

    :cond_f
    const/4 v10, 0x6

    if-ne v9, v10, :cond_10

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v10, v3}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getExitToFolderAddAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_5

    :cond_10
    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v10, v3}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getExitToWidgetAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_5
.end method

.method protected onStageExitByTray()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/controller/FolderController;->onCloseFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/controller/FolderController;->detachFolderFromDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/view/FolderView;->onClose(Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setVisibility(I)V

    iput-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    :cond_0
    return-void
.end method

.method public setSearchedAppInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    return-void
.end method

.method public setup()V
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    new-instance v0, Lcom/android/launcher3/folder/FolderTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBgBlurAmount:F

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBgDrakenAlpha:F

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mStateTransitionDuration:I

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f040026

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderBgView;

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;-><init>(Lcom/android/launcher3/folder/controller/FolderController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->setFolderProxyCallbacks(Lcom/android/launcher3/proxy/FolderProxyCallbacks;)V

    return-void
.end method

.method public showFolderBgView(ZZ)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v4, :cond_1

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->setupFolderBgLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    iget v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mStateTransitionDuration:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/launcher3/folder/view/FolderBgView;->showHelpForEdit(ZIZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const-string v2, "FolderController"

    const-string v3, "showFolderBgView : layouting is not completed yet"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    iget v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mStateTransitionDuration:I

    invoke-virtual {v3, v2, v4, v1}, Lcom/android/launcher3/folder/view/FolderBgView;->showHelpForEdit(ZIZ)V

    goto :goto_1
.end method

.method protected supportNavigationBarForState(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method protected supportStatusBarForState(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method protected switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/folder/controller/FolderController;->getAdjustedInternalState(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/folder/controller/FolderController;->getAdjustedInternalState(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    iget-boolean v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    if-eq v5, v9, :cond_0

    if-ne v5, v10, :cond_5

    :cond_0
    invoke-virtual {v1, v7}, Lcom/android/launcher3/folder/view/FolderView;->hideAddButton(Z)V

    invoke-virtual {v1, v7}, Lcom/android/launcher3/folder/view/FolderView;->setCrosshairsVisibility(Z)V

    if-ne v5, v9, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->showHintPages()V

    invoke-virtual {v1, v7}, Lcom/android/launcher3/folder/view/FolderView;->setDragInProgress(Z)V

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v6, :cond_2

    if-ne v5, v9, :cond_6

    move v6, v7

    :goto_1
    invoke-virtual {p0, v6, v8}, Lcom/android/launcher3/folder/controller/FolderController;->showFolderBgView(ZZ)V

    :cond_2
    if-eqz v2, :cond_3

    if-ne v2, v7, :cond_8

    :cond_3
    if-ne v5, v9, :cond_7

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v6, v0, v1, v7}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getDragAnimation(ZLcom/android/launcher3/folder/view/FolderView;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    :cond_4
    :goto_2
    return-object v4

    :cond_5
    invoke-virtual {v1, v7}, Lcom/android/launcher3/folder/view/FolderView;->showAddButton(Z)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->hideHintPages()V

    invoke-virtual {v1, v8}, Lcom/android/launcher3/folder/view/FolderView;->setCrosshairsVisibility(Z)V

    goto :goto_0

    :cond_6
    move v6, v8

    goto :goto_1

    :cond_7
    if-ne v5, v10, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6, v7, v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showMultiSelectPanel(ZZ)V

    goto :goto_2

    :cond_8
    if-ne v2, v9, :cond_9

    if-ne v5, v7, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v6, v0, v1, v8}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getDragAnimation(ZLcom/android/launcher3/folder/view/FolderView;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    goto :goto_2

    :cond_9
    if-ne v2, v10, :cond_4

    if-ne v5, v7, :cond_c

    const/4 v4, 0x0

    :cond_a
    :goto_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_b
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6, v8, v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showMultiSelectPanel(ZZ)V

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v8, v7}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    goto :goto_2

    :cond_c
    if-ne v5, v9, :cond_a

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v6, v0, v1, v7}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getDragAnimation(ZLcom/android/launcher3/folder/view/FolderView;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    goto :goto_3
.end method

.method public updateCheckBox(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateCheckBox(Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderItems:Ljava/util/ArrayList;

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v2, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    goto :goto_0
.end method
