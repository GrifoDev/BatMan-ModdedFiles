.class public Lcom/android/launcher3/folder/view/FolderPagedView;
.super Lcom/android/launcher3/common/base/view/PagedView;
.source "FolderPagedView.java"


# static fields
.field private static final PAGE_ACTIVE_RANGE:I = 0x3

.field private static final PAGE_INDICATOR_ANIMATION_DURATION:I = 0x190

.field private static final PAGE_INDICATOR_ANIMATION_STAGGERED_DELAY:I = 0x96

.field private static final PAGE_INDICATOR_ANIMATION_START_DELAY:I = 0x12c

.field private static final PAGE_INDICATOR_OVERSHOOT_TENSION:F = 4.9f

.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field private static final SCROLL_HINT_FRACTION:F = 0.07f

.field private static final START_VIEW_REORDER_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "FolderPagedView"

.field private static final VIEW_REORDER_DELAY_FACTOR:F = 0.9f

.field private static final sTempPosArray:[I


# instance fields
.field private mAddButton:Landroid/view/View;

.field private mAllocatedContentSize:I

.field private mBorderHidden:Z

.field private mFolder:Lcom/android/launcher3/folder/view/FolderView;

.field private mGridCountX:I

.field private mGridCountY:I

.field private final mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private final mIconViewStubMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            "Lcom/android/launcher3/common/view/IconViewStub;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mKeyListener:Lcom/android/launcher3/folder/controller/FolderFocusListener;

.field private mMaxCountX:I

.field private mMaxCountY:I

.field private mMaxItemsPerPage:I

.field private mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

.field private final mPendingAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/folder/view/FolderPagedView;->sTempPosArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v2, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountX:I

    iget-object v2, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountY:I

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountX:I

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountY:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/view/FolderPagedView;)Lcom/android/launcher3/common/view/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/view/FolderPagedView;Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderPagedView;->applyIconViewInfo(Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/folder/view/FolderPagedView;)Lcom/android/launcher3/folder/view/FolderView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/folder/view/FolderPagedView;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/folder/view/FolderPagedView;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/folder/view/FolderPagedView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;I)V

    return-void
.end method

.method private addViewForRank(Landroid/view/View;I)V
    .locals 10

    const/4 v2, 0x1

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v9, p2, v1

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v8, p2, v1

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    rem-int v6, v9, v1

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    div-int v7, v9, v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-direct {v4, v6, v7, v2, v2}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    goto :goto_0

    :cond_1
    const-string v1, "FolderPagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addViewForRank : can\'t get "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " page"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private allocateRankForAddButton()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getItemCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    return v0
.end method

.method private applyIconViewInfo(Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 5

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/view/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/view/IconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mKeyListener:Lcom/android/launcher3/folder/controller/FolderFocusListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/view/IconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v3, p2, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    iget v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/view/IconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    goto :goto_0
.end method

.method private arrangeChildren(Ljava/util/ArrayList;IZ)V
    .locals 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->setPageIndicatorAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v2

    if-ge v13, v2, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/view/CellLayout;->removeAllViews()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->setupContentDimensions(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/4 v11, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v13, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v13, v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v13, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v23, v2

    :goto_2
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    move/from16 v0, v20

    if-lt v0, v2, :cond_3

    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/view/CellLayout;

    :goto_3
    const/16 v20, 0x0

    :cond_3
    if-eqz v23, :cond_7

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "FolderPagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrangeChildren : child view has wrong parent view. (child="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", parent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    rem-int v15, v20, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    div-int v16, v20, v2

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_c

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ne v2, v15, :cond_5

    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, v16

    if-ne v2, v0, :cond_5

    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v0, v21

    if-eq v2, v0, :cond_6

    :cond_5
    iput v15, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, v16

    iput v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, v21

    iput v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    if-eqz p3, :cond_6

    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher3/folder/FolderInfo;->id:J

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-interface/range {v2 .. v10}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    iput v15, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, v16

    iput v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, v21

    iput v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    :cond_6
    :goto_4
    if-nez v14, :cond_b

    new-instance v8, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {v8, v2, v4, v5, v6}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    :goto_5
    const/4 v6, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v7

    const/4 v9, 0x1

    move-object v4, v11

    move-object/from16 v5, v23

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    :goto_6
    const/16 v2, 0x9

    move/from16 v0, v21

    if-ge v0, v2, :cond_7

    move-object/from16 v0, v23

    instance-of v2, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_7

    check-cast v23, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/common/view/IconView;->verifyHighRes()V

    :cond_7
    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_2

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->createAndAddNewPage()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v11

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher3/folder/FolderInfo;->id:J

    const-wide/16 v6, 0x0

    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v9, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v10, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-interface/range {v2 .. v10}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto :goto_4

    :cond_b
    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v2, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v2, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object v8, v14

    goto :goto_5

    :cond_c
    if-nez v14, :cond_d

    new-instance v8, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v2, 0x1

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-direct {v8, v15, v0, v2, v4}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    :goto_7
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getId()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getId()I

    move-result v7

    :goto_8
    const/4 v6, -0x1

    const/4 v9, 0x0

    move-object v4, v11

    move-object/from16 v5, v23

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    goto :goto_6

    :cond_d
    iput v15, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move/from16 v0, v16

    iput v0, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object v8, v14

    goto :goto_7

    :cond_e
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v7

    goto :goto_8

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v12

    const/16 v22, 0x0

    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->removeView(Landroid/view/View;)V

    const/16 v22, 0x1

    goto :goto_9

    :cond_10
    if-eqz v22, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v12, v2, :cond_11

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->setCurrentPage(I)V

    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->setPageIndicatorAnimation(Z)V

    return-void
.end method

.method private backgroundAlphaThreshold(F)F
    .locals 4

    const/4 v0, 0x0

    const v1, 0x3da3d70a    # 0.08f

    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private createAndAddNewPage()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 3

    new-instance v0, Lcom/android/launcher3/folder/view/FolderCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/view/FolderCellLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setMotionEventSplittingEnabled(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setImportantForAccessibility(I)V

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setGridSize(II)V

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->generateDefaultLayoutParams()Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private handleIconViewStubs()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/launcher3/folder/view/FolderPagedView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/view/FolderPagedView$2;-><init>(Lcom/android/launcher3/folder/view/FolderPagedView;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherModel;->registerOnLauncherBindingItemsCompletedListener(Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->inflateAllIconViewStubsInBackground()V

    goto :goto_0
.end method

.method private setupContentDimensions(I)V
    .locals 4

    iput p1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAllocatedContentSize:I

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountX:I

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountY:I

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->setGridSize(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateBorderAlphaValues(I)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->backgroundAlphaThreshold(F)F

    move-result v6

    sub-float v3, v5, v6

    if-nez v1, :cond_0

    cmpg-float v5, v4, v7

    if-lez v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_4

    cmpl-float v5, v4, v7

    if-ltz v5, :cond_4

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mBorderHidden:Z

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/view/FolderView;->setBorderAlpha(F)V

    :cond_3
    return-void

    :cond_4
    iget-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mBorderHidden:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mTouchState:I

    if-eqz v5, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    cmpl-float v5, v3, v7

    if-nez v5, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mBorderHidden:Z

    goto :goto_0
.end method

.method private updateDragPageAlphaValues(III)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    move v2, p2

    :goto_0
    if-gt v2, p3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/view/FolderCellLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setBackgroundAlpha(F)V

    sub-float v4, v5, v0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setPartialBackgroundAlpha(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePageAlphaValues(III)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateDragPageAlphaValues(III)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addViewForRank(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V
    .locals 8

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v7, p3, v1

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v6, p3, v1

    iput p3, p2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    rem-int v1, v7, v1

    iput v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    div-int v1, v7, v1

    iput v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iput v1, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iput v1, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v3

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "FolderPagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addViewForRank : can\'t get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " page"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public allocateRankForNewItem(Z)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getItemCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    const-string v2, "FolderPagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allocateRankForNewItem : number of items is not matched. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->setCurrentPage(I)V

    :cond_1
    return v0
.end method

.method public animateMarkers()V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v3}, Lcom/android/launcher3/common/view/PageIndicator;->getChildCount()I

    move-result v0

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x409ccccd    # 4.9f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/common/view/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    mul-int/lit16 v4, v1, 0x96

    add-int/lit16 v4, v4, 0x12c

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public arrangeChildren(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x9

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    iput-boolean v11, v2, Lcom/android/launcher3/common/base/item/IconInfo;->ignoreCheckItemInfo:Z

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x9

    if-lt v6, v7, :cond_1

    iget v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v6, :cond_1

    invoke-virtual {p0, v2, v10}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/view/IconViewStub;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v11}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, v1, v5, v10}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->handleIconViewStubs()V

    return-object v0
.end method

.method public callRefreshLiveIcon()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/common/view/IconView;

    if-eqz v7, :cond_0

    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/view/IconView;->onLiveIconRefresh()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearScrollHint()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getScrollForPage(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method public completePendingPageChanges()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createAndAddViewForRank(Lcom/android/launcher3/common/base/item/IconInfo;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V

    return-object v0
.end method

.method public createNewView(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public createNewView(Lcom/android/launcher3/common/base/item/IconInfo;Z)Landroid/view/View;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const v7, 0x7f04002f

    const v1, 0x7f04002f

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->applyIconViewInfo(Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;)V

    move-object v2, v0

    :goto_0
    return-object v2

    :cond_0
    new-instance v3, Lcom/android/launcher3/common/view/IconViewStub;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v7}, Lcom/android/launcher3/common/view/IconViewStub;-><init>(Landroid/content/Context;I)V

    new-instance v4, Lcom/android/launcher3/folder/view/FolderPagedView$3;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView$3;-><init>(Lcom/android/launcher3/folder/view/FolderPagedView;Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/view/IconViewStub;->addOnInflateListener(Lcom/android/launcher3/common/view/OnInflateListener;)V

    new-instance v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v5, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v7, p1, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/view/IconViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/view/IconViewStub;->setTag(Ljava/lang/Object;)V

    move-object v2, v3

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr p2, v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0
.end method

.method public findNearestArea(II)I
    .locals 7

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    sget-object v5, Lcom/android/launcher3/folder/view/FolderPagedView;->sTempPosArray:[I

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getAllocatedContentSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v2, v6

    sget-object v4, Lcom/android/launcher3/folder/view/FolderPagedView;->sTempPosArray:[I

    aget v3, v4, v3

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lcom/android/launcher3/folder/view/FolderPagedView;->sTempPosArray:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getAccessibilityDescription()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllocatedContentSize()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAllocatedContentSize:I

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public getCellLayoutChildrenHeight()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getDesiredHeight()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    :cond_0
    return v0
.end method

.method public getCellLayoutChildrenWidth()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getDesiredWidth()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    :cond_0
    return v0
.end method

.method protected getChildGap()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentCellLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredHeight()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getDesiredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getDesiredWidth()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getDesiredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getFirstItem()Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v3, "FolderPagedView"

    const-string v4, "getFirstItem : can\'t get current page"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v3, v1

    add-int v0, v2, v3

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getLastItem()Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    iget v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    rem-int v4, v3, v4

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    div-int v5, v3, v5

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v4, "FolderPagedView"

    const-string v5, "getLastItem : can\'t get current page"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic getPageAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method public getPageDescription()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .locals 2

    new-instance v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->DEFAULT:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    return-object v0
.end method

.method public hideAddButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public inflateAllIconViewStubsInBackground()V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    const-string v2, "FolderPagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inflateAllIconViewStubsInBackground : stubs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/IconViewStub;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconViewStub;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/view/IconViewStub;->inflateInBackground(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public inflateIconViewStubPerPage(I)V
    .locals 8

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v7

    if-ge p1, v7, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/common/view/IconViewStub;

    if-eqz v7, :cond_0

    move-object v5, v6

    check-cast v5, Lcom/android/launcher3/common/view/IconViewStub;

    if-nez p1, :cond_1

    invoke-virtual {v5}, Lcom/android/launcher3/common/view/IconViewStub;->inflateImmediately()Landroid/view/View;

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/common/view/IconViewStub;->inflateInBackgroundUrgent(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public insertViewBeforeArrangeChildren(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->insertViewBeforeArrangeChildren(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;II)V

    return-void
.end method

.method public insertViewBeforeArrangeChildren(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;II)V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p3, v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    :cond_0
    iget v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    if-le p4, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p4, v2, :cond_1

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1, p4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isAllIconViewInflated()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isAppsFolder()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInActiveRange(I)Z
    .locals 6

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v2, p1, v4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lt v2, v1, :cond_0

    if-gt v2, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public itemsPerPage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    return v0
.end method

.method public iterateOverItems(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v10

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v9

    const/4 v4, 0x0

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v5

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_1

    invoke-virtual {v9, v3, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v12, :cond_0

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v12, v11, v1}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_0

    :goto_3
    return-object v11

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-eq v4, v2, :cond_3

    const-string v12, "FolderPagedView"

    const-string v13, "iterateOverItems : items are not matched in %d page (itemCount=%d, childCount=%d)"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    goto :goto_3
.end method

.method protected notifyPageChange(III)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    :cond_0
    return-void
.end method

.method protected notifyPageScroll(IIIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageScroll(IIIII)V

    :cond_0
    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageSwitchListener()V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    :cond_0
    return-void
.end method

.method public onChangeFolderIconTextColor()V
    .locals 10

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_2

    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/android/launcher3/common/view/IconView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v8, :cond_1

    move-object v8, v7

    check-cast v8, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    check-cast v7, Lcom/android/launcher3/common/view/IconView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object v8, v7

    check-cast v8, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    check-cast v7, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v7, v4}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateCellDimensions()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFirstLayout:Z

    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageBeginMoving()V

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mBorderHidden:Z

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->setAccessibilityFocusChange(Z)V

    sget-object v1, Lcom/android/launcher3/folder/view/FolderPagedView;->sTempPosArray:[I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getVisiblePages([I)V

    sget-object v1, Lcom/android/launcher3/folder/view/FolderPagedView;->sTempPosArray:[I

    aget v0, v1, v2

    :goto_0
    sget-object v1, Lcom/android/launcher3/folder/view/FolderPagedView;->sTempPosArray:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->verifyVisibleHighResIcons(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageEndMoving()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->setAccessibilityFocusChange(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->isAllIconViewInflated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->inflateIconViewStubPerPage(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->stopBounceAnimation()V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public rankOnCurrentPage(I)Z
    .locals 2

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v0, p1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public realTimeReorder(IIZ)V
    .locals 36

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->completePendingPageChanges()V

    const/4 v9, 0x0

    const/high16 v13, 0x41f00000    # 30.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v30

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v29, p2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v28, p2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v27, p1, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v25, p1, v6

    move/from16 v0, p2

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_9

    const/4 v14, 0x1

    if-eqz p3, :cond_4

    move/from16 v20, p1

    move/from16 v19, p2

    move/from16 v16, v27

    move/from16 v32, v27

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    add-int v31, v20, v14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v24, v31, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v26, v31, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    rem-int v34, v26, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    div-int v35, v26, v6

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    if-eqz v4, :cond_14

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_13

    const/16 v33, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    :cond_2
    move/from16 v0, v30

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    if-eqz p3, :cond_10

    :cond_3
    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V

    :goto_1
    move/from16 v20, v31

    goto :goto_0

    :cond_4
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_6

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_5

    move/from16 v20, p1

    move/from16 v19, p2

    move/from16 v16, v28

    move/from16 v32, v28

    goto :goto_0

    :cond_5
    move/from16 v20, p1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    mul-int v19, v30, v6

    const/16 v32, 0x0

    move/from16 v16, v28

    goto/16 :goto_0

    :cond_6
    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_7

    add-int/lit8 v6, v30, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v6, v7

    add-int/lit8 v20, v6, -0x1

    move/from16 v19, p2

    move/from16 v32, v27

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    add-int/lit8 v16, v6, -0x1

    goto/16 :goto_0

    :cond_7
    const/16 v19, -0x1

    move/from16 v20, v19

    move/from16 v32, v27

    move/from16 v16, v28

    goto/16 :goto_0

    :cond_8
    move/from16 v20, p1

    move/from16 v19, p2

    move/from16 v16, v27

    move/from16 v32, v27

    goto/16 :goto_0

    :cond_9
    const/4 v14, -0x1

    if-eqz p3, :cond_a

    move/from16 v20, p1

    move/from16 v19, p2

    move/from16 v16, v27

    move/from16 v32, v27

    goto/16 :goto_0

    :cond_a
    move/from16 v0, v25

    move/from16 v1, v30

    if-le v0, v1, :cond_c

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_b

    move/from16 v20, p1

    move/from16 v19, p2

    move/from16 v16, v28

    move/from16 v32, v28

    goto/16 :goto_0

    :cond_b
    move/from16 v20, p1

    add-int/lit8 v6, v30, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v6, v7

    add-int/lit8 v19, v6, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    add-int/lit8 v32, v6, -0x1

    move/from16 v16, v28

    goto/16 :goto_0

    :cond_c
    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    mul-int v20, v30, v6

    move/from16 v19, p2

    move/from16 v32, v27

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_d
    const/16 v19, -0x1

    move/from16 v20, v19

    move/from16 v32, v27

    move/from16 v16, v28

    goto/16 :goto_0

    :cond_e
    move/from16 v20, p1

    move/from16 v19, p2

    move/from16 v16, v27

    move/from16 v32, v27

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;I)V

    goto/16 :goto_1

    :cond_10
    move/from16 v21, v20

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v23

    new-instance v15, Lcom/android/launcher3/folder/view/FolderPagedView$4;

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v15, v0, v5, v1, v2}, Lcom/android/launcher3/folder/view/FolderPagedView$4;-><init>(Lcom/android/launcher3/folder/view/FolderPagedView;Landroid/view/View;FI)V

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-lez v14, :cond_11

    const/4 v6, 0x1

    :goto_2
    sget-boolean v8, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    xor-int/2addr v6, v8

    if-eqz v6, :cond_12

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    :goto_3
    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v10, 0xe6

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_11
    const/4 v6, 0x0

    goto :goto_2

    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    goto :goto_3

    :cond_13
    const-string v6, "FolderPagedView"

    const-string v7, "realTimeReorder : can\'t find x%d,y%d item in %d page (from=%d, to=%d)"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x3

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_14
    const-string v6, "FolderPagedView"

    const-string v7, "realTimeReorder : can\'t get %d page (from=%d, to=%d)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_15
    sub-int v6, v16, v32

    mul-int/2addr v6, v14

    if-lez v6, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    move/from16 v17, v32

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    add-int v22, v17, v14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    rem-int v6, v22, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    div-int v7, v22, v7

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v6, 0x1

    move-object/from16 v0, v18

    iput-boolean v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setupLp(Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;)V

    const/4 v6, 0x0

    move-object/from16 v0, v18

    iput-boolean v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    const/16 v33, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v6, :cond_16

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v7, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    sub-int/2addr v7, v14

    iput v7, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    :cond_16
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    rem-int v6, v17, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    div-int v7, v17, v7

    const/16 v8, 0xe6

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    check-cast v12, [[Z

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    move-result v6

    if-eqz v6, :cond_17

    int-to-float v6, v9

    add-float/2addr v6, v13

    float-to-int v9, v6

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v13, v6

    :cond_17
    :goto_5
    add-int v17, v17, v14

    goto :goto_4

    :cond_18
    const-string v6, "FolderPagedView"

    const-string v7, "realTimeReorder : can\'t find %dth item in %d page (from=%d, to=%d)"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public rebindItems(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-virtual {v6, v8, v9, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0, v3, v7, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    return-void
.end method

.method public removeCellLayoutView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeItem(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected resetTransitionEffect(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffect(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected screenScrolled(III)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateBorderAlphaValues(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/view/FolderPagedView;->updatePageAlphaValues(III)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getMaxScrollX()I

    move-result v0

    if-gt p1, v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderCellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setAccessibilityEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setAddButton(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    return-void
.end method

.method public setFixedSize(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->setFixedSize(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFocusOnFirstChild()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setFolder(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    new-instance v0, Lcom/android/launcher3/folder/controller/FolderFocusListener;

    invoke-direct {v0}, Lcom/android/launcher3/folder/controller/FolderFocusListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mKeyListener:Lcom/android/launcher3/folder/controller/FolderFocusListener;

    const v0, 0x7f11007f

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/PageIndicator;

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    new-instance v0, Lcom/android/launcher3/folder/view/FolderPagedView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/view/FolderPagedView$1;-><init>(Lcom/android/launcher3/folder/view/FolderPagedView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setHintPageWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mHintPageWidth:I

    return-void
.end method

.method public setMarkerScale(F)V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v3}, Lcom/android/launcher3/common/view/PageIndicator;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/common/view/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showAddButton()V
    .locals 6

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->allocateRankForAddButton()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-direct {p0, v4, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    const v5, 0x7f110092

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public showScrollHint(I)V
    .locals 9

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    const v6, -0x4270a3d7    # -0.07f

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v7, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getScrollForPage(I)I

    move-result v0

    add-int v8, v0, v7

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getScrollX()I

    move-result v0

    sub-int v3, v8, v0

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/PageScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getScrollX()I

    move-result v1

    const/16 v5, 0x1f4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/PageScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const v6, 0x3d8f5c29    # 0.07f

    goto :goto_1
.end method

.method public snapToPageSALoggging(Z)V
    .locals 8

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0901a5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const v4, 0x7f090137

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    int-to-long v6, v1

    invoke-virtual {v4, v3, v0, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const v4, 0x7f0901b1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0901a3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    const v4, 0x7f09012e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const v4, 0x7f0901af

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public supportWhiteBg()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->isAppsFolder()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCellDimensions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->updateCellDimensionsIfNeeded()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateCheckBox(Z)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/android/launcher3/common/view/IconView;

    if-eqz v8, :cond_0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v7, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v7, p1}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public updateFolderGrid()V
    .locals 12

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v8

    iget-object v4, v8, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v10

    iput v10, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountX:I

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v10

    iput v10, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountY:I

    iget v10, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountX:I

    iget v11, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountY:I

    mul-int/2addr v10, v11

    iput v10, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_1

    invoke-virtual {v3, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Lcom/android/launcher3/common/view/IconView;

    if-eqz v10, :cond_0

    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v10}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v10, v11}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageTransform(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public verifyVisibleHighResIcons(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/common/view/IconView;

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/view/IconView;->verifyHighRes()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
