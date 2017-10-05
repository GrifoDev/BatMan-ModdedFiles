.class public Lcom/android/launcher3/home/WorkspaceCellLayout;
.super Lcom/android/launcher3/common/base/view/CellLayout;
.source "WorkspaceCellLayout.java"


# static fields
.field private static final DISABLE_BUTTON_ALPHA:F = 0.4f

.field private static final ENABLE_BUTTON_ALPHA:F = 1.0f

.field private static final PAGE_FULL_VI_DURATION:J = 0xc8L

.field static final TAG:Ljava/lang/String; = "WorkspaceCellLayout"


# instance fields
.field private mAlignButtonBottom:Landroid/widget/ImageView;

.field private mAlignButtonTop:Landroid/widget/ImageView;

.field private mAlignLayoutBottom:Landroid/widget/LinearLayout;

.field private mAlignLayoutHeight:I

.field private mAlignLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mAlignLayoutTop:Landroid/widget/LinearLayout;

.field public mBackupItems:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/launcher3/home/BackupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultPadding:I

.field private mDividerBottom:Landroid/view/View;

.field private mDividerTop:Landroid/view/View;

.field private mDragBackground:Landroid/graphics/drawable/Drawable;

.field public mGridChanged:Z

.field private mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

.field private mNeedCustomLayout:Z

.field protected mOccupiedForGrid:[[Z

.field public mOutSideItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOverviewShrinkFactorReverse:F

.field private mPageDeleteBtn:Landroid/widget/ImageView;

.field private mPageFullVI:Landroid/animation/ValueAnimator;

.field private mPageFullVI_Started:Z

.field public mRestoredItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenGridHeightPadding:I

.field private mScreenGridShrinkFactorReverse:F

.field private mSlop:F

.field private mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

.field public mTempPage:Z

.field private mZeroPageSwitch:Landroid/widget/Switch;

.field private mZeroPageSwitchHeight:I

.field private mZeroPageSwitchLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mRestoredItems:Ljava/util/List;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempPage:Z

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mGridChanged:Z

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    new-instance v0, Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/event/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    new-instance v0, Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupOverviewLayout()V

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupScreenGridLayout()V

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->changeColorForBg(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/WorkspaceCellLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDragBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/WorkspaceCellLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    return v0
.end method

.method private clearOccupied()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->clearOccupiedCells()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private gridSizeChanged(Z)V
    .locals 5

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    check-cast v4, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->setGridChangeState(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    check-cast v4, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->makePreviousRectMap(Landroid/view/View;)V

    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private reset(III)V
    .locals 17

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->clearOccupied()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v14

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-le v1, v6, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    :cond_0
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    add-int v2, v1, p2

    :cond_1
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-le v1, v6, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    const/4 v1, 0x2

    move/from16 v0, p1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    add-int v3, v1, p3

    :cond_3
    if-nez p1, :cond_5

    add-int v1, v2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-gt v1, v6, :cond_4

    add-int v1, v3, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-gt v1, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_4
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    add-int/lit8 v1, p2, -0x1

    if-le v2, v1, :cond_4

    add-int v1, v3, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-gt v1, v6, :cond_4

    sub-int v7, v2, p2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_7

    add-int v1, v2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-gt v1, v6, :cond_4

    add-int/lit8 v1, p3, -0x1

    if-le v3, v1, :cond_4

    sub-int v8, v3, p3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move v7, v2

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    :cond_7
    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    add-int/lit8 v1, p2, -0x1

    if-le v2, v1, :cond_4

    add-int/lit8 v1, p3, -0x1

    if-le v3, v1, :cond_4

    sub-int v7, v2, p2

    sub-int v8, v3, p3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method private setupAlignLayout(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f020071

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p2, p5}, Lcom/android/launcher3/Utilities;->setHoverPopupContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/launcher3/home/HomeFocusHelper;->ALIGN_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0e0027

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, p2, v3}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method private setupOverviewLayout()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private setupScreenGridLayout()V
    .locals 3

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridShrinkFactorReverse:F

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridShrinkFactorReverse:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridHeightPadding:I

    return-void
.end method

.method private setupZeroPageSwitchLayout()V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v6, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    sub-int v2, v6, v7

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v7, v2, 0x2

    sub-int/2addr v6, v7

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v1}, Landroid/widget/Switch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    iget v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v4, v6

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00bc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00bd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_0

    move v6, v3

    :goto_0
    add-int/2addr v6, v4

    sget-boolean v8, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v8, :cond_1

    :goto_1
    add-int v8, v5, v4

    invoke-virtual {v7, v6, v9, v8, v9}, Landroid/widget/Switch;->setPadding(IIII)V

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    const v7, 0x7f0f0023

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setTextAppearance(I)V

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    iget v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setMinHeight(I)V

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    iget v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setScaleX(F)V

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    iget v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setScaleY(F)V

    return-void

    :cond_0
    move v6, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1
.end method

.method private updateIconViews()V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageChildCount()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    :goto_0
    if-ltz v6, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    instance-of v13, v2, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v13, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle()V

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    instance-of v13, v2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v13, :cond_2

    move-object v7, v2

    check-cast v7, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v7, v13}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_2
    instance-of v13, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v13, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v8, :cond_0

    iget v13, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellWidth:I

    mul-int/2addr v14, v13

    iget v13, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    const/4 v15, 0x2

    if-lt v13, v15, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mWidthGap:I

    iget v15, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    add-int/lit8 v15, v15, -0x1

    mul-int/2addr v13, v15

    :goto_2
    add-int v11, v14, v13

    iget v13, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellHeight:I

    mul-int/2addr v14, v13

    iget v13, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    const/4 v15, 0x2

    if-lt v13, v15, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mHeightGap:I

    iget v15, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    add-int/lit8 v15, v15, -0x1

    mul-int/2addr v13, v15

    :goto_3
    add-int v10, v14, v13

    iget v13, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget v14, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v13, v14, v11, v10}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->calculateWidgetSize(IIII)Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v9

    move-object v13, v2

    check-cast v13, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {v13, v9}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setResizeScaleResult(Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v13}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher3/Launcher;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeViewInLayout(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v8}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->unbind()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v12}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    iget-wide v14, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    const-wide/16 v16, -0x1

    cmp-long v13, v14, v16

    if-eqz v13, :cond_5

    iget-wide v14, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    cmp-long v13, v14, v4

    if-nez v13, :cond_5

    invoke-virtual {v12, v8}, Lcom/android/launcher3/home/Workspace;->createAndBindWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    goto/16 :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v12, v8}, Lcom/android/launcher3/home/Workspace;->addWidgetsToBind(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    goto/16 :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method addAlignLayoutBottom(Landroid/view/View$OnClickListener;)V
    .locals 7

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutBottom:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutBottom:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f02009c

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f090013

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupAlignLayout(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method addAlignLayoutTop(Landroid/view/View$OnClickListener;)V
    .locals 7

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutTop:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutTop:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f02009d

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f090014

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupAlignLayout(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected addCrossHairView()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method addPageDeleteBtn(Landroid/view/View$OnClickListener;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f02008e

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f020071

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->setHoverPopupContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/launcher3/home/HomeFocusHelper;->PAGE_DELETE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method addZeroPageSwitch(Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupZeroPageSwitchLayout()V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    sget-object v1, Lcom/android/launcher3/home/HomeFocusHelper;->ZERO_PAGE_SWITCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0e0027

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-static {v0, v1, v4}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    return-void
.end method

.method public callRefreshLiveIcon()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->callRefreshLiveIcon()V

    goto :goto_0
.end method

.method changeColorForBg(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->changeCrossHairFliter(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    return-void
.end method

.method endPageFullVI()V
    .locals 5

    iget-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI_Started:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-ne v1, v2, :cond_3

    const-string v1, "backgroundAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/home/WorkspaceCellLayout$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/WorkspaceCellLayout$1;-><init>(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI_Started:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDragBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDragBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setPadding(IIII)V

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method findNearestVacantAreaWithCell(IIII[IZ)V
    .locals 9

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-eqz p6, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    :goto_0
    move-object v0, p5

    move v1, p3

    move v2, p4

    move v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToLeftTop([IIIII[[ZII)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-eqz p6, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    :goto_2
    move-object v0, p5

    move v1, p3

    move v2, p4

    move v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToRightBottom([IIIII[[ZII)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, p5, v1

    aput v2, p5, v0

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    goto :goto_2
.end method

.method getAlignLayoutList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentIconSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getContentTop()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getContentTop()I

    move-result v0

    return v0
.end method

.method getOutSideItems(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/launcher3/util/ScreenGridUtilities;->getPairOutSideItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPageDeleteBtn()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getTopPaddingCustomPage()I
    .locals 5

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isVisibleGridPanel()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getZeroPageSwitch()Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method getZeroPageSwitchLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected initChildren(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-direct {v0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    return-void
.end method

.method isPageFullVIStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI_Started:Z

    return v0
.end method

.method markCellsForGrid(IIII)V
    .locals 7

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mSlop:F

    return-void
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupOverviewLayout()V

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupScreenGridLayout()V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCellDimensions()V

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->updateIconViews()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupZeroPageSwitchLayout()V

    goto :goto_0
.end method

.method public onDragEnter()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragEnter()V

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/Workspace;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isInScrollArea()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isScrolling()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->startPageFullVI()V

    :cond_0
    return-void
.end method

.method public onDragExit()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragExit()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->endPageFullVI()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/CellLayout;->onLayout(ZIIII)V

    iget-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a00b8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v2, v4

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v1, v2

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_4

    move v4, v1

    :goto_1
    invoke-virtual {v5, v2, v3, v4, v1}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutTop:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutBottom:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutTop:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    sub-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutBottom:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, v3, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->isGridChanging()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->requestLayout()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    sub-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isVisibleGridPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridHeightPadding:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/event/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xc8

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->setLongPressTimeout(I)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x12c

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method restoreGridSize(II)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iput p2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    invoke-direct {p0, v2, v2, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->reset(III)V

    const-string v0, "WorkspaceCellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreGridSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method setBgImage(IZ)V
    .locals 4

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImageResource(IZZ)V

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setPadding(IIII)V

    return-void
.end method

.method setBgImageResource(IZZ)V
    .locals 5

    const v1, 0x7f020082

    const v2, 0x7f020081

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p3}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p3}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_3

    const v1, 0x7f020084

    :goto_1
    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v1, 0x7f020083

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p3, :cond_5

    :goto_2
    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_7

    const v1, 0x7f0200f1

    :goto_3
    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_7
    const v1, 0x7f0200f0

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p3, :cond_9

    :goto_4
    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_9
    move v1, v2

    goto :goto_4
.end method

.method public setCellDimensions()V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v6

    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mFixedCellWidth:I

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellWidth:I

    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mFixedCellHeight:I

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellHeight:I

    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mHeightGap:I

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mWidthGap:I

    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    array-length v0, v0

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setCellDimensions(IIIII)V

    return-void
.end method

.method protected setChildrenLayout(IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    sub-int/2addr p4, v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isVisibleGridPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridHeightPadding:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridHeightPadding:I

    sub-int/2addr p4, v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenLayout(IIII)V

    return-void
.end method

.method setCustomFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    return-void
.end method

.method setEnabledOnAlignButton(Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_2

    :cond_3
    move v4, v3

    goto :goto_3
.end method

.method setEnabledOnAlignButton(ZZ)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method setGridSizeForScreenGrid(IIZIII)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->gridSizeChanged(Z)V

    :cond_0
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iput p2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    add-int/lit8 v0, p5, 0x1

    add-int/lit8 v1, p6, 0x1

    invoke-direct {p0, p4, v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->reset(III)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->requestLayout()V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->invalidate()V

    :cond_1
    return-void
.end method

.method spanToPixel(II)[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellWidth()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getWidthGap()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellHeight()I

    move-result v2

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getHeightGap()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method startPageFullVI()V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/Workspace;

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI_Started:Z

    if-eqz v7, :cond_2

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v8

    if-ne v7, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getBackgroundAlpha()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    iput-boolean v9, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI_Started:Z

    :cond_2
    iget-boolean v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI_Started:Z

    if-nez v7, :cond_0

    new-array v1, v11, [I

    const/4 v3, 0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v7, v7, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-nez v7, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v7, v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v7, :cond_4

    :cond_3
    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v7

    iget-object v5, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v3, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanX:I

    iget v4, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanY:I

    :cond_4
    invoke-virtual {p0, v1, v3, v4, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->findCellForSpan([IIIZ)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200d3

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDragBackground:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200d2

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDragBackground:Landroid/graphics/drawable/Drawable;

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v8, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v9, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v10, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setPadding(IIII)V

    const-string v7, "backgroundAlpha"

    new-array v8, v11, [F

    fill-array-data v8, :array_0

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI_Started:Z

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public touchPageDeleteBtn()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    return-void
.end method

.method updateItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setupLp(Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;)V

    :cond_0
    return-void
.end method

.method updateOccupied()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    :cond_0
    return-void
.end method

.method public visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_1

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    if-ltz p6, :cond_0

    if-gez p5, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->startPageFullVI()V

    :cond_1
    :goto_0
    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/common/base/view/CellLayout;->visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->endPageFullVI()V

    goto :goto_0
.end method
