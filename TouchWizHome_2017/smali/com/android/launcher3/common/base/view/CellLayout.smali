.class public abstract Lcom/android/launcher3/common/base/view/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;,
        Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;,
        Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final BADGE_SCALE_ANIM_DURATION:I = 0xc8

.field private static final CREATE_FOLDER_SCALE:F = 0.3f

.field private static final CREATE_FOLDER_SCALE_DURATION:I = 0x14d

.field static final TAG:Ljava/lang/String; = "CellLayout"

.field private static sCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private mBackgroundAlpha:F

.field protected mCellHeight:I

.field protected mCellWidth:I

.field protected mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

.field protected mCountX:I

.field protected mCountY:I

.field protected mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

.field private final mDragCell:[I

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private mDragOutlines:[Landroid/graphics/Rect;

.field private final mDragSpan:[I

.field private mDragging:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field protected mFixedCellHeight:I

.field protected mFixedCellWidth:I

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private mFolderOuterRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeightGap:I

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field protected mOccupied:[[Z

.field private mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempLocation:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field protected final mTempRectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpPoint:[I

.field protected mWidthGap:I

.field private targetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/base/view/CellLayout;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/base/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTmpPoint:[I

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempLocation:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    iput v3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedWidth:I

    iput v3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedHeight:I

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAlphas:[F

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v1, v1

    new-array v1, v1, [Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    iput v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    iput-boolean v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragging:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->targetView:Landroid/view/View;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setClipToPadding(Z)V

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/Launcher;

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->initChildren(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->setCellDimensions()V

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    aput v3, v2, v10

    aput v3, v1, v5

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    aput v3, v2, v10

    aput v3, v1, v5

    const/4 v7, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v7, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v1, 0x7f0d0021

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAlphas:[F

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([FF)V

    const/4 v7, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    array-length v1, v1

    if-ge v7, v1, :cond_1

    new-instance v0, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    int-to-long v2, v6

    const/high16 v5, 0x437f0000    # 255.0f

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move v9, v7

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/common/base/view/CellLayout$1;

    invoke-direct {v2, p0, v0, v9}, Lcom/android/launcher3/common/base/view/CellLayout$1;-><init>(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/common/base/view/CellLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/common/base/view/CellLayout$2;-><init>(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    aput-object v0, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-direct {v1, p0, p1, p0}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;-><init>(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/content/Context;Lcom/android/launcher3/common/base/view/CellLayout;)V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    sget-object v1, Lcom/android/launcher3/common/base/view/CellLayout;->sCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    const v1, 0x7f02006e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/common/base/view/CellLayout;->sCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/base/view/CellLayout;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/base/view/CellLayout;)[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/base/view/CellLayout;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/android/launcher3/common/base/view/CellLayout;->sCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private cellToPoint(III[I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v2

    sget-boolean v3, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    sub-int/2addr v3, p1

    sub-int v1, v3, p3

    :goto_0
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    add-int/2addr v4, v0

    aput v4, p4, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    aput v4, p4, v3

    return-void

    :cond_0
    move v1, p1

    goto :goto_0
.end method

.method private createFolderVI(Landroid/view/View;)V
    .locals 8

    const/4 v6, 0x1

    const v7, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    const/16 v3, 0xc8

    const-wide/16 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateBadge(ZIJZ)V

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    const-wide/16 v4, 0xc8

    move v3, v2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateTitleView(ZIJZ)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/common/base/view/CellLayout$3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout$3;-><init>(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private findNearestArea(IIIIIIZ[I[I)[I
    .locals 30

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->lazyInitTempRectStack()V

    sget-boolean v26, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v26, :cond_1

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int/lit8 v28, p5, -0x1

    mul-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 p1, v0

    :goto_0
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int/lit8 v28, p6, -0x1

    mul-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 p2, v0

    if-eqz p8, :cond_2

    move-object/from16 v7, p8

    :goto_1
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    new-instance v6, Landroid/graphics/Rect;

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v21, Ljava/util/Stack;

    invoke-direct/range {v21 .. v21}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    if-lez p6, :cond_0

    move/from16 v0, p5

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    move/from16 v0, p6

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    :cond_0
    :goto_2
    return-object v7

    :cond_1
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int/lit8 v28, p5, -0x1

    mul-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 p1, v0

    goto/16 :goto_0

    :cond_2
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v7, v0, [I

    goto :goto_1

    :cond_3
    const/16 v24, 0x0

    :goto_3
    add-int/lit8 v26, p4, -0x1

    sub-int v26, v11, v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_1f

    const/16 v22, 0x0

    :goto_4
    add-int/lit8 v26, p3, -0x1

    sub-int v26, v10, v26

    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_1e

    const/16 v25, -0x1

    const/16 v23, -0x1

    if-eqz p7, :cond_17

    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_7

    const/16 v19, 0x0

    :goto_6
    move/from16 v0, v19

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    move-object/from16 v26, v0

    add-int v27, v22, v17

    aget-object v26, v26, v27

    add-int v27, v24, v19

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_5

    :cond_4
    :goto_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    :cond_7
    move/from16 v23, p3

    move/from16 v25, p4

    const/16 v18, 0x1

    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_b

    const/4 v13, 0x1

    :goto_8
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_c

    const/16 v16, 0x1

    :goto_9
    if-eqz v13, :cond_8

    if-nez v16, :cond_16

    :cond_8
    if-eqz v18, :cond_f

    if-nez v13, :cond_f

    const/16 v19, 0x0

    :goto_a
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    add-int v26, v22, v23

    add-int/lit8 v27, v10, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    move-object/from16 v26, v0

    add-int v27, v22, v23

    aget-object v26, v26, v27

    add-int v27, v24, v19

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_a

    :cond_9
    const/4 v13, 0x1

    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    :cond_b
    const/4 v13, 0x0

    goto :goto_8

    :cond_c
    const/16 v16, 0x0

    goto :goto_9

    :cond_d
    if-nez v13, :cond_e

    add-int/lit8 v23, v23, 0x1

    :cond_e
    :goto_b
    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_13

    const/16 v26, 0x1

    :goto_c
    or-int v13, v13, v26

    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_14

    const/16 v26, 0x1

    :goto_d
    or-int v16, v16, v26

    if-nez v18, :cond_15

    const/16 v18, 0x1

    :goto_e
    goto :goto_9

    :cond_f
    if-nez v16, :cond_e

    const/16 v17, 0x0

    :goto_f
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_12

    add-int v26, v24, v25

    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    move-object/from16 v26, v0

    add-int v27, v22, v17

    aget-object v26, v26, v27

    add-int v27, v24, v25

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_11

    :cond_10
    const/16 v16, 0x1

    :cond_11
    add-int/lit8 v17, v17, 0x1

    goto :goto_f

    :cond_12
    if-nez v16, :cond_e

    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    :cond_13
    const/16 v26, 0x0

    goto :goto_c

    :cond_14
    const/16 v26, 0x0

    goto :goto_d

    :cond_15
    const/16 v18, 0x0

    goto :goto_e

    :cond_16
    const/16 v18, 0x1

    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_1d

    const/4 v13, 0x1

    :goto_10
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_17

    :cond_17
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTmpPoint:[I

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher3/common/base/view/CellLayout;->cellToCenterPoint(II[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRectStack:Ljava/util/Stack;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    add-int v26, v22, v23

    add-int v27, v24, v25

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v9, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_18
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_19

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Rect;

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_18

    const/4 v9, 0x1

    :cond_19
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v26, 0x0

    aget v26, v8, v26

    sub-int v26, v26, p1

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const/16 v28, 0x1

    aget v28, v8, v28

    sub-int v28, v28, p2

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    cmpg-double v26, v14, v4

    if-gtz v26, :cond_1a

    if-eqz v9, :cond_1b

    :cond_1a
    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v26

    if-eqz v26, :cond_4

    :cond_1b
    move-wide v4, v14

    const/16 v26, 0x0

    aput v22, v7, v26

    const/16 v26, 0x1

    aput v24, v7, v26

    if-eqz p9, :cond_1c

    const/16 v26, 0x0

    aput v23, p9, v26

    const/16 v26, 0x1

    aput v25, p9, v26

    :cond_1c
    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_7

    :cond_1d
    const/4 v13, 0x0

    goto/16 :goto_10

    :cond_1e
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3

    :cond_1f
    const-wide v26, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v26, v4, v26

    if-nez v26, :cond_20

    const/16 v26, 0x0

    const/16 v27, -0x1

    aput v27, v7, v26

    const/16 v26, 0x1

    const/16 v27, -0x1

    aput v27, v7, v26

    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->recycleTempRects(Ljava/util/Stack;)V

    goto/16 :goto_2
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected addCrossHairView()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z
    .locals 3

    move-object v0, p4

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    iput v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    :cond_0
    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    iput v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[ZILjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ[[ZILjava/lang/Runnable;)Z
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    if-nez p6, :cond_0

    move-object/from16 v9, p8

    :cond_0
    if-nez v9, :cond_1

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v13, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    iget v15, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    if-eqz p7, :cond_3

    iget v5, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v6, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v7, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iget v8, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsForView(IIII[[ZZ)V

    iget v7, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iget v8, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v10, 0x1

    move-object/from16 v4, p0

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz p6, :cond_6

    move/from16 v0, p2

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move/from16 v0, p3

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    if-eqz v19, :cond_4

    move/from16 v0, p2

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, p3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    :cond_4
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setupLp(Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;)V

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v4, :cond_5

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {v4}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getResizeResult()Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v20

    if-eqz v20, :cond_5

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    iput v4, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    iput v4, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    :cond_5
    const/4 v4, 0x0

    iput-boolean v4, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget v4, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    add-int v14, p9, v4

    iget v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    move/from16 v16, v0

    iput v13, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    iput v15, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    if-ne v13, v14, :cond_7

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    if-nez p10, :cond_7

    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    move/from16 v0, p2

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    move/from16 v0, p3

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1

    :cond_7
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v21

    move/from16 v0, p4

    int-to-long v4, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v4, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/launcher3/common/base/view/CellLayout$4;

    move-object/from16 v11, p0

    move-object/from16 v17, p1

    invoke-direct/range {v10 .. v17}, Lcom/android/launcher3/common/base/view/CellLayout$4;-><init>(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/launcher3/common/base/view/CellLayout$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    invoke-direct {v4, v0, v12, v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout$5;-><init>(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Landroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 v0, p5

    int-to-long v4, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual/range {v21 .. v21}, Landroid/animation/ValueAnimator;->start()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildHardwareLayer()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->buildLayer()V

    return-void
.end method

.method public callRefreshLiveIcon()V
    .locals 0

    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->regionToCenterPoint(IIII[I)V

    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 14

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget v9, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v7

    sget-boolean v12, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v12, :cond_0

    iget v12, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    sub-int/2addr v12, p1

    sub-int v6, v12, p3

    :goto_0
    mul-int v12, p3, v2

    add-int/lit8 v13, p3, -0x1

    mul-int/2addr v13, v9

    add-int v8, v12, v13

    mul-int v12, p4, v1

    add-int/lit8 v13, p4, -0x1

    mul-int/2addr v13, v5

    add-int v4, v12, v13

    add-int v12, v2, v9

    mul-int/2addr v12, v6

    add-int v10, v3, v12

    add-int v12, v1, v5

    mul-int v12, v12, p2

    add-int v11, v7, v12

    add-int v12, v10, v8

    add-int v13, v11, v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    move v6, p1

    goto :goto_0
.end method

.method protected changeCrossHairFliter(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/common/base/view/CellLayout;->sCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->animateOut()V

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    aput v3, v2, v5

    aput v3, v1, v4

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    aput v3, v2, v5

    aput v3, v1, v4

    return-void
.end method

.method public clearOccupiedCells()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

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

.method public enableHardwareLayer(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    sget-object v2, Lcom/android/launcher3/common/base/view/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findCellForSpan([IIIZ)Z
    .locals 12

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v10, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    add-int/lit8 v11, p2, -0x1

    sub-int v0, v10, v11

    iget v10, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    add-int/lit8 v11, p3, -0x1

    sub-int v1, v10, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p4, :cond_8

    iget v10, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    add-int/lit8 v9, v10, -0x1

    :goto_0
    if-ltz v9, :cond_2

    if-nez v3, :cond_2

    iget v10, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    add-int/lit8 v8, v10, -0x1

    :goto_1
    if-ltz v8, :cond_0

    iget-object v10, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    aget-object v10, v10, v8

    aget-boolean v10, v10, v9

    if-eqz v10, :cond_1

    move v6, v8

    move v7, v9

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_2
    move v9, v7

    :goto_2
    if-ge v9, v1, :cond_e

    if-nez v2, :cond_e

    move v8, v6

    :goto_3
    if-ge v8, v0, :cond_7

    const/4 v4, 0x0

    :goto_4
    if-ge v4, p2, :cond_5

    const/4 v5, 0x0

    :goto_5
    if-ge v5, p3, :cond_4

    iget-object v10, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    add-int v11, v8, v4

    aget-object v10, v10, v11

    add-int v11, v9, v5

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_3

    add-int/2addr v8, v4

    const/4 v6, 0x0

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_6

    const/4 v10, 0x0

    aput v8, p1, v10

    const/4 v10, 0x1

    aput v9, p1, v10

    :cond_6
    const/4 v2, 0x1

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v1, :cond_e

    if-nez v2, :cond_e

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v0, :cond_d

    const/4 v4, 0x0

    :goto_8
    if-ge v4, p2, :cond_b

    const/4 v5, 0x0

    :goto_9
    if-ge v5, p3, :cond_a

    iget-object v10, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    add-int v11, v8, v4

    aget-object v10, v10, v11

    add-int v11, v9, v5

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_9

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_b
    if-eqz p1, :cond_c

    const/4 v10, 0x0

    aput v8, p1, v10

    const/4 v10, 0x1

    aput v9, p1, v10

    :cond_c
    const/4 v2, 0x1

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_e
    return v2
.end method

.method public findNearestArea(IIII[I)[I
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public findNearestVacantArea(IIIIII[I[I)[I
    .locals 10

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public findNearestVacantArea(IIII[I)[I
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getCellHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    return-object v0
.end method

.method public getCellWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentIconSize()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getContentTop()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCountX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    return v0
.end method

.method public getCountY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDistanceFromCell(FF[I)F
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget v0, p3, v3

    aget v1, p3, v4

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->cellToCenterPoint(II[I)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTmpPoint:[I

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTmpPoint:[I

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getHeightGap()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    return v0
.end method

.method protected getItemPositionDescription(II)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOccupied()[[Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    return-object v0
.end method

.method public getPageChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected getTopPaddingCustomPage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWidthGap()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    return v0
.end method

.method public hasTargetView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->targetView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideFolderAccept(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->invalidate()V

    return-void
.end method

.method protected initChildren(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    return-void
.end method

.method public isOccupied(II)Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position exceeds the bound of this CellLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReorderAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v1, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v1, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method protected markCellsForView(IIII[[ZZ)V
    .locals 3

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    move v0, p1

    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_0

    move v1, p2

    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_2

    aget-object v2, p5, v0

    aput-boolean p6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDragEnter()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragging:Z

    return-void
.end method

.method public onDragExit()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragging:Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    aput v3, v1, v4

    aput v3, v0, v2

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    aput v3, v1, v4

    aput v3, v0, v2

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->animateOut()V

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    if-ge v8, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAlphas:[F

    aget v1, v12, v8

    const/4 v12, 0x0

    cmpl-float v12, v1, v12

    if-lez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    aget-object v10, v12, v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v12}, Lcom/android/launcher3/Utilities;->rectAboutCenter(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    aget-object v12, v12, v8

    invoke-virtual {v12}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable;

    float-to-int v12, v1

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget v12, v6, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellX:I

    iget v13, v6, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellY:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempLocation:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/launcher3/common/base/view/CellLayout;->cellToPoint(III[I)V

    iget v12, v6, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellX:I

    iget v13, v6, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempLocation:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    div-int/lit8 v13, v13, 0x2

    add-int v2, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getContentIconSize()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getContentTop()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    add-int v3, v12, v13

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->getInnerRingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->getInnerRingSize()F

    move-result v12

    float-to-int v11, v12

    move v7, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-int/lit8 v12, v11, 0x2

    sub-int v12, v2, v12

    int-to-float v12, v12

    div-int/lit8 v13, v11, 0x2

    sub-int v13, v3, v13

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13, v11, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public onDropChild(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->dropped:Z

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingBottom()I

    move-result v0

    sub-int v4, p4, p2

    sub-int/2addr v4, v2

    sub-int v5, p5, p3

    sub-int/2addr v5, v0

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenLayout(IIII)V

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    sub-int v5, p4, p2

    sub-int/2addr v5, v2

    sub-int v6, p5, p3

    sub-int/2addr v6, v0

    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v10, v18, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v9, v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedCellWidth:I

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedCellHeight:I

    if-gez v2, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    invoke-static {v10, v2, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellWidthOrHeight(III)I

    move-result v11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    invoke-static {v9, v2, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellWidthOrHeight(III)I

    move-result v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    if-ne v11, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    if-eq v8, v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setCellDimensions(IIIII)V

    :cond_2
    move/from16 v17, v10

    move/from16 v16, v9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedWidth:I

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedHeight:I

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedHeight:I

    move/from16 v16, v0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v16

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measure(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getMeasuredWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedWidth:I

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedHeight:I

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/android/launcher3/common/base/view/CellLayout;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_4
    if-eqz v19, :cond_5

    if-nez v13, :cond_3

    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/android/launcher3/common/base/view/CellLayout;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public pointToCellExact(III[I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v1

    sub-int v4, p1, v0

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p4, v7

    sub-int v4, p2, v1

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p4, v8

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    aget v5, p4, v7

    sub-int/2addr v4, v5

    sub-int/2addr v4, p3

    aput v4, p4, v7

    :cond_0
    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    aget v4, p4, v7

    if-gez v4, :cond_1

    aput v7, p4, v7

    :cond_1
    aget v4, p4, v7

    if-lt v4, v2, :cond_2

    add-int/lit8 v4, v2, -0x1

    aput v4, p4, v7

    :cond_2
    aget v4, p4, v8

    if-gez v4, :cond_3

    aput v7, p4, v8

    :cond_3
    aget v4, p4, v8

    if-lt v4, v3, :cond_4

    add-int/lit8 v4, v3, -0x1

    aput v4, p4, v8

    :cond_4
    return-void
.end method

.method public regionToCenterPoint(IIII[I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v2

    sget-boolean v3, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    sub-int/2addr v3, p1

    sub-int v1, v3, p3

    :goto_0
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    mul-int/2addr v5, p3

    add-int/lit8 v6, p3, -0x1

    iget v7, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    aput v4, p5, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    mul-int/2addr v5, p4

    add-int/lit8 v6, p4, -0x1

    iget v7, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    aput v4, p5, v3

    return-void

    :cond_0
    move v1, p1

    goto :goto_0
.end method

.method public regionToRect(IIIILandroid/graphics/Rect;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v4

    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    sub-int/2addr v5, p1

    sub-int v2, v5, p3

    :goto_0
    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v2

    add-int v1, v0, v5

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, p2

    add-int v3, v4, v5

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    mul-int/2addr v5, p3

    add-int/lit8 v6, p3, -0x1

    iget v7, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    mul-int/2addr v6, p4

    add-int/lit8 v7, p4, -0x1

    iget v8, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    invoke-virtual {p5, v1, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    move v2, p1

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->clearOccupiedCells()V

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeAllViews()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->clearOccupiedCells()V

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeAllViewsInLayout()V

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->targetView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->createFolderVI(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->targetView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->createFolderVI(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeViews(II)V
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeViewsInLayout(II)V

    return-void
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CellLayout"

    const-string v2, "Ignoring an error while restoring a view instance state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mBackgroundAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 3

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mBackgroundAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mBackgroundAlpha:F

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mBackgroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method protected abstract setCellDimensions()V
.end method

.method public setCellDimensions(IIII)V
    .locals 6

    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedCellWidth:I

    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedCellHeight:I

    iput p3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    iput p4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setCellDimensions(IIIII)V

    return-void
.end method

.method public setChildrenDrawingCacheEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method public setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method protected setChildrenLayout(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->layout(IIII)V

    return-void
.end method

.method public setCrossHairAnimatedVisibility(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    new-instance v1, Lcom/android/launcher3/common/base/view/CellLayout$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout$6;-><init>(Lcom/android/launcher3/common/base/view/CellLayout;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->setRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->addCrossHairView()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->setAnimate(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->supportWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->changeCrossHairFliter(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->changeCrossHairFliter(Z)V

    goto :goto_1
.end method

.method public setFixedSize(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedWidth:I

    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFixedHeight:I

    return-void
.end method

.method public setGridSize(II)V
    .locals 6

    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mOccupied:[[Z

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setCellDimensions(IIIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->requestLayout()V

    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/CellLayout;->targetView:Landroid/view/View;

    return-void
.end method

.method public showFolderAccept(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected supportWhiteBg()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected updateChildIfReorderAnimationCancel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v13, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    const/4 v6, 0x1

    aget v14, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    const/4 v6, 0x0

    aget v15, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    const/4 v6, 0x1

    aget v16, v5, v6

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move/from16 v0, p3

    if-ne v0, v13, :cond_2

    move/from16 v0, p4

    if-ne v0, v14, :cond_2

    move/from16 v0, p5

    if-ne v0, v15, :cond_2

    move/from16 v0, p6

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aput p3, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragCell:[I

    const/4 v6, 0x1

    aput p4, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    const/4 v6, 0x0

    aput p5, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragSpan:[I

    const/4 v6, 0x1

    aput p6, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mTmpPoint:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->cellToPoint(III[I)V

    const/4 v5, 0x0

    aget v12, v20, v5

    const/4 v5, 0x1

    aget v19, v20, v5

    const/16 v18, -0x1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isAppOrShortcutType()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getContentTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getContentIconSize()I

    move-result v21

    move/from16 v11, v21

    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    mul-int v5, v5, p5

    add-int/lit8 v6, p5, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    sub-int v5, v5, v21

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v12, v5

    const/4 v5, -0x1

    move/from16 v0, v18

    if-eq v0, v5, :cond_5

    add-int v19, v19, v18

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    aget-object v5, v5, v17

    invoke-virtual {v5}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->animateOut()V

    add-int/lit8 v5, v17, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v6, v6

    rem-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    aget-object v10, v5, v6

    add-int v5, v12, v21

    add-int v6, v19, v11

    move/from16 v0, v19

    invoke-virtual {v10, v12, v0, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p7, :cond_4

    move-object/from16 v5, p0

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/common/base/view/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    aget-object v5, v5, v6

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mDragOutlineCurrent:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->animateIn()V

    sget-object v5, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getItemPositionDescription(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    mul-int v5, v5, p6

    add-int/lit8 v6, p6, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    sub-int/2addr v5, v11

    div-int/lit8 v5, v5, 0x2

    add-int v19, v19, v5

    goto :goto_1
.end method
