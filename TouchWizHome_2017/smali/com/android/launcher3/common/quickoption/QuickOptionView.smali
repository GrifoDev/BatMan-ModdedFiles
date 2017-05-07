.class public Lcom/android/launcher3/common/quickoption/QuickOptionView;
.super Landroid/widget/LinearLayout;
.source "QuickOptionView.java"


# static fields
.field public static final STATE_REMOVED:I = 0x1

.field public static final STATE_SHOWING:I


# instance fields
.field private mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

.field private mArrow:Landroid/widget/ImageView;

.field private mHasDrawn:Z

.field private mHideAnim:Landroid/animation/AnimatorSet;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mListViewHeight:I

.field private mQuickOptionListView:Landroid/widget/ListView;

.field private mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field private mShowAnim:Landroid/animation/AnimatorSet;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mListViewHeight:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mState:I

    iput-boolean v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDrawn:Z

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/common/quickoption/QuickOptionView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDrawn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/common/quickoption/QuickOptionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private adjustPosition(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/common/view/DragLayer;->getWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/common/view/DragLayer;->getHeight()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getPopupWidth()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getPopupHeight()I

    move-result v7

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getEdgeMargin(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v13, :cond_3

    const v13, 0x7f080049

    :goto_0
    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080137

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080128

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-virtual {v13}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getAnchorRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v13, v1, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    int-to-float v14, v9

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v4, v13, v14

    int-to-float v13, v6

    cmpg-float v13, v4, v13

    if-gez v13, :cond_4

    int-to-float v4, v6

    iget v13, v1, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    int-to-float v14, v6

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotX(F)V

    :goto_1
    iget v13, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v7

    sub-int/2addr v13, v8

    int-to-float v5, v13

    int-to-float v13, v12

    cmpg-float v13, v5, v13

    if-gez v13, :cond_6

    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v8

    int-to-float v5, v13

    int-to-float v13, v7

    add-float/2addr v13, v5

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    sub-int v13, v10, v7

    sub-int/2addr v13, v8

    int-to-float v5, v13

    :cond_0
    const v13, 0x7f0e00b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/widget/ImageView;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotY(F)V

    :goto_2
    iget v13, v1, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    sub-float/2addr v13, v4

    int-to-float v14, v3

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v2, v13, v14

    sget-boolean v13, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v13, :cond_1

    sub-int v13, v9, v3

    int-to-float v13, v13

    sub-float/2addr v2, v13

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v13, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v13, :cond_2

    sub-int v13, v11, v9

    int-to-float v13, v13

    sub-float/2addr v4, v13

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setTranslationX(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setTranslationY(F)V

    return-void

    :cond_3
    const v13, 0x7f080129

    goto/16 :goto_0

    :cond_4
    int-to-float v13, v9

    add-float/2addr v13, v4

    sub-int v14, v11, v6

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_5

    sub-int v13, v11, v9

    sub-int/2addr v13, v6

    int-to-float v4, v13

    iget v13, v1, Landroid/graphics/Rect;->right:I

    sub-int v13, v11, v13

    sub-int/2addr v13, v6

    sub-int v13, v9, v13

    int-to-float v13, v13

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotX(F)V

    goto/16 :goto_1

    :cond_5
    int-to-float v13, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotX(F)V

    goto/16 :goto_1

    :cond_6
    const v13, 0x7f0e00b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/widget/ImageView;

    int-to-float v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotY(F)V

    goto/16 :goto_2
.end method

.method private applyBG(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 9

    const/4 v2, 0x0

    const v8, 0x3f733333    # 0.95f

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    new-instance v0, Landroid/graphics/LightingColorFilter;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v0, v3, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method

.method private getEdgeMargin(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 10

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    iget-object v5, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v4

    add-int/2addr v4, v2

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v8, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/launcher3/home/HomeController;->getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellWidth()I

    move-result v5

    iget-object v6, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_0

    :cond_2
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    iget-object v5, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_0

    :cond_3
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    iget-object v5, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_0
.end method

.method private getPopupHeight()I
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget v7, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mListViewHeight:I

    if-lez v7, :cond_2

    iget v6, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mListViewHeight:I

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v7, v8, v6}, Landroid/widget/ListView;->measure(II)V

    iget-object v6, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v4

    iget-object v6, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v6

    add-int v7, v5, v4

    sub-int v2, v6, v7

    iget-object v6, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v6}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->getCount()I

    move-result v1

    iget-object v6, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v3

    iget-object v6, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080127

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int v6, v2, v1

    add-int/2addr v6, v5

    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    add-int/2addr v6, v0

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mListViewHeight:I

    iget v6, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mListViewHeight:I

    goto :goto_0
.end method

.method private getPopupWidth()I
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private hideAnimation(Ljava/lang/Runnable;)V
    .locals 8

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    :cond_0
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;

    invoke-direct {v3, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showAnimation()V
    .locals 8

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleX(F)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleY(F)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setAlpha(F)V

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x14d

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/util/ElasticEaseOut;

    const v5, 0x3fb33333    # 1.4f

    invoke-direct {v4, v6, v5}, Lcom/android/launcher3/util/ElasticEaseOut;-><init>(FF)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/android/launcher3/common/quickoption/QuickOptionView$2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView$2;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method

.method public getHideAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getShowAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mState:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDrawn:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Runnable;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mState:I

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->clearItemBounceAnimation()V

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->hideAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public show(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    if-eqz v1, :cond_0

    iput v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mState:I

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    const v1, 0x7f0e00b8

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptions(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->setItems(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->adjustPosition(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->applyBG(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->showAnimation()V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertQuickViewEventLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V

    :cond_0
    return-void
.end method
