.class public Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;
.super Landroid/widget/LinearLayout;
.source "DeepShortcutsContainer.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x19
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;,
        Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UpdateShortcutChild;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutsContainer"

.field private static mDeepShortcutsManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;


# instance fields
.field private mArrow:Landroid/view/View;

.field private mDeferContainerRemoval:Z

.field private mDeferredDragIcon:Lcom/android/launcher3/common/view/IconView;

.field private mIconLastTouchPos:Landroid/graphics/Point;

.field private final mIconShift:Landroid/graphics/Point;

.field private mIsAboveIcon:Z

.field private mIsLeftAligned:Z

.field private mIsOpen:Z

.field private final mIsRtl:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mOpenCloseAnimator:Landroid/animation/Animator;

.field private final mStartDragThreshold:I

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIconShift:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIconLastTouchPos:Landroid/graphics/Point;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mDeepShortcutsManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mStartDragThreshold:I

    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    iput-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsRtl:Z

    return-void
.end method

.method static synthetic access$000()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;
    .locals 1

    sget-object v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mDeepShortcutsManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsAboveIcon:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;I)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getShortcutAt(I)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mOpenCloseAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mDeferContainerRemoval:Z

    return v0
.end method

.method private addArrowView(IIII)Landroid/view/View;
    .locals 7

    const/4 v4, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-boolean v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsLeftAligned:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsAboveIcon:Z

    if-eqz v3, :cond_2

    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_1
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    int-to-float v5, p3

    int-to-float v6, p4

    iget-boolean v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsAboveIcon:Z

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    invoke-static {v5, v6, v3}, Lcom/android/launcher3/graphics/TriangleShape;->create(FFZ)Lcom/android/launcher3/graphics/TriangleShape;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getElevation()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setElevation(F)V

    iget-boolean v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsAboveIcon:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getChildCount()I

    move-result v4

    :cond_0
    invoke-virtual {p0, v1, v4, v2}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v1

    :cond_1
    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method private animateOpen()V
    .locals 22

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->setVisibility(I)V

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsOpen:Z

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getShortcutCount()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d001e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v10, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d001b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v8, v0

    sub-long v6, v10, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d001f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    new-instance v13, Lcom/android/launcher3/util/animation/LogAccelerateInterpolator;

    const/16 v20, 0x64

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v13, v0, v1}, Lcom/android/launcher3/util/animation/LogAccelerateInterpolator;-><init>(II)V

    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v15}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getShortcutAt(I)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;

    move-result-object v5

    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->setVisibility(I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsAboveIcon:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsLeftAligned:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->createOpenAnimation(ZZ)Landroid/animation/Animator;

    move-result-object v2

    new-instance v20, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$2;-><init>(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsAboveIcon:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    sub-int v20, v17, v14

    add-int/lit8 v3, v20, -0x1

    :goto_1
    int-to-long v0, v3

    move-wide/from16 v20, v0

    mul-long v20, v20, v18

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v2, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v20, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v12, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    move v3, v14

    goto :goto_1

    :cond_1
    new-instance v20, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$3;-><init>(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mArrow:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mArrow:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setScaleY(F)V

    new-instance v20, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mArrow:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v20

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v4, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mOpenCloseAnimator:Landroid/animation/Animator;

    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private deferDrag(Lcom/android/launcher3/common/view/IconView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mDeferredDragIcon:Lcom/android/launcher3/common/view/IconView;

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    return-void
.end method

.method private getShortcutAt(I)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsAboveIcon:Z

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;

    return-object v0
.end method

.method private getShortcutCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private isAlignedWithStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsLeftAligned:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsRtl:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsLeftAligned:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsRtl:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private orientAboutIcon(Lcom/android/launcher3/common/view/IconView;I)V
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getMeasuredWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getMeasuredHeight()I

    move-result v20

    add-int v5, v20, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/view/IconView;->getPaddingLeft()I

    move-result v21

    add-int v9, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v20, v20, v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/view/IconView;->getPaddingRight()I

    move-result v21

    sub-int v11, v20, v21

    move/from16 v17, v9

    add-int v20, v9, v16

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/DragLayer;->getRight()I

    move-result v21

    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4}, Lcom/android/launcher3/common/view/DragLayer;->getLeft()I

    move-result v20

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    if-le v11, v0, :cond_5

    const/4 v3, 0x1

    :goto_1
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsRtl:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    if-eqz v3, :cond_1

    :cond_0
    move/from16 v17, v11

    :cond_1
    move/from16 v0, v17

    if-ne v0, v9, :cond_6

    const/16 v20, 0x1

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsLeftAligned:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsRtl:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/DragLayer;->getWidth()I

    move-result v20

    sub-int v20, v20, v16

    sub-int v17, v17, v20

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/view/IconView;->getWidth()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/view/IconView;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/view/IconView;->getPaddingRight()I

    move-result v21

    sub-int v7, v20, v21

    int-to-float v0, v7

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/view/IconView;->getScaleX()F

    move-result v21

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->isAlignedWithStart()Z

    move-result v20

    if-eqz v20, :cond_7

    const v20, 0x7f0a011c

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v20, 0x7f0a011e

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    div-int/lit8 v20, v7, 0x2

    div-int/lit8 v21, v13, 0x2

    sub-int v20, v20, v21

    sub-int v18, v20, v15

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsLeftAligned:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    :goto_4
    add-int v17, v17, v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/view/IconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/view/IconView;->getPaddingTop()I

    move-result v21

    add-int v20, v20, v21

    sub-int v19, v20, v5

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/DragLayer;->getTop()I

    move-result v20

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    const/16 v20, 0x1

    :goto_5
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsAboveIcon:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsAboveIcon:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/view/IconView;->getPaddingTop()I

    move-result v21

    add-int v20, v20, v21

    add-int v19, v20, v6

    :cond_3
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->setX(F)V

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->setY(F)V

    return-void

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_7
    const v20, 0x7f0a011a

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v20, 0x7f0a011d

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    div-int/lit8 v20, v7, 0x2

    div-int/lit8 v21, v12, 0x2

    sub-int v20, v20, v21

    sub-int v18, v20, v14

    goto/16 :goto_3

    :cond_8
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_4

    :cond_9
    const/16 v20, 0x0

    goto :goto_5
.end method

.method public static showForIcon(Lcom/android/launcher3/common/view/IconView;)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;
    .locals 7

    const/4 v0, 0x0

    sget-object v3, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mDeepShortcutsManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v3

    sput-object v3, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mDeepShortcutsManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mDeepShortcutsManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->getOpenShortcutsContainer(Landroid/content/Context;)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->clearFocus()V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v4, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mDeepShortcutsManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->getShortcutIdsForItem(Lcom/android/launcher3/common/base/item/IconInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040020

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->populateAndShow(Lcom/android/launcher3/common/view/IconView;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public animateClose()V
    .locals 26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsOpen:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mOpenCloseAnimator:Landroid/animation/Animator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mOpenCloseAnimator:Landroid/animation/Animator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsOpen:Z

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getShortcutCount()I

    move-result v20

    const/16 v17, 0x0

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v15, v0, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getShortcutAt(I)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->isOpenOrOpening()Z

    move-result v24

    if-eqz v24, :cond_2

    add-int/lit8 v17, v17, 0x1

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0d001c

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v10, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0d001b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v8, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0d001d

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v22, v0

    new-instance v13, Lcom/android/launcher3/util/animation/LogAccelerateInterpolator;

    const/16 v24, 0x64

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v13, v0, v1}, Lcom/android/launcher3/util/animation/LogAccelerateInterpolator;-><init>(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsAboveIcon:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    sub-int v14, v20, v17

    :goto_2
    move v15, v14

    :goto_3
    add-int v24, v14, v17

    move/from16 v0, v24

    if-ge v15, v0, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getShortcutAt(I)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->willDrawIcon()Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsAboveIcon:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsLeftAligned:Z

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->createCloseAnimation(ZZJ)Landroid/animation/Animator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsAboveIcon:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    sub-int v6, v15, v14

    :goto_4
    int-to-long v0, v6

    move-wide/from16 v24, v0

    mul-long v24, v24, v22

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v24, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v12

    int-to-long v0, v6

    move-wide/from16 v24, v0

    mul-long v24, v24, v22

    add-long v24, v24, v8

    move-wide/from16 v0, v24

    invoke-virtual {v12, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    sub-long v24, v10, v8

    move-wide/from16 v0, v24

    invoke-virtual {v12, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v12, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_5
    new-instance v24, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$4;-><init>(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    sub-int v24, v17, v15

    add-int/lit8 v6, v24, -0x1

    goto :goto_4

    :cond_6
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->collapseToIcon()Landroid/animation/Animator;

    move-result-object v4

    const-wide/16 v24, 0x96

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->setPivotX(F)V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->setPivotY(F)V

    const/high16 v18, 0x3f800000    # 1.0f

    new-instance v24, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIconShift:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIconShift:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v24, 0x96

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_5

    :cond_7
    new-instance v24, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mArrow:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v7

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v24, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$5;-><init>(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mOpenCloseAnimator:Landroid/animation/Animator;

    invoke-virtual/range {v19 .. v19}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mOpenCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mOpenCloseAnimator:Landroid/animation/Animator;

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsOpen:Z

    iput-boolean v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mDeferContainerRemoval:Z

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeferredDragIcon()Lcom/android/launcher3/common/view/IconView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mDeferredDragIcon:Lcom/android/launcher3/common/view/IconView;

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getOutlineColor()I
    .locals 1

    const/4 v0, 0x0

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

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsOpen:Z

    return v0
.end method

.method public onDragEnd()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsOpen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mDeferContainerRemoval:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mDeferredDragIcon:Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mDeferContainerRemoval:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->close()V

    goto :goto_0
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->animateClose()V

    const/4 v0, 0x1

    return v0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 0

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

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mDeferContainerRemoval:Z

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->setWillDrawIcon(Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIconShift:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIconShift:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;

    move-result-object v2

    invoke-virtual {v1, v2, p0, v4, v4}, Lcom/android/launcher3/Launcher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->closeFolder()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public populateAndShow(Lcom/android/launcher3/common/view/IconView;Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/view/IconView;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v2, 0x7f0a0122

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v2, 0x7f0a011f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v2, 0x7f0a0120

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v2, 0x7f0a0121

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0124

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_1

    const v2, 0x7f04001f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v13, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;

    add-int/lit8 v2, v14, -0x1

    if-ge v12, v2, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v0, v18

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->addView(Landroid/view/View;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->measure(II)V

    add-int v2, v8, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->orientAboutIcon(Lcom/android/launcher3/common/view/IconView;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11, v8}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->addArrowView(IIII)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mArrow:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mArrow:Landroid/view/View;

    int-to-float v3, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mArrow:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->mIsAboveIcon:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setPivotY(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->animateOpen()V

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->deferDrag(Lcom/android/launcher3/common/view/IconView;)V

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v19

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v6, v15, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v15}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    new-instance v20, Landroid/os/Handler;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;-><init>(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/os/Handler;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    int-to-float v2, v8

    goto :goto_1
.end method
