.class public Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    }
.end annotation


# instance fields
.field mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mBaseBottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mBaseInitialBottomOffset:I

.field private mBaseInitialTopOffset:I

.field private mBaseSideMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mBaseTopMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

.field mContext:Landroid/content/Context;

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mFocusState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedBottomPeekHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedCurve:Landroid/graphics/Path;

.field private mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mFocusedDimCurve:Landroid/graphics/Path;

.field private mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mFocusedRange:Lcom/android/systemui/recents/views/Range;

.field private mFocusedTopPeekHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

.field public mFreeformRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFreeformStackGap:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFrontMostTaskP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mFullMinScrollP:F

.field private mInitialBottomOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mInitialScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInitialTopOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInitializeInterpolator:Z

.field private mInsetForCloseAllMargin:I

.field private mLayoutInset:I

.field mMaxScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mMaxTranslationZ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mMinMargin:I

.field mMinScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mMinTranslationZ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mNaviBarHeight:I

.field mNumFreeformTasks:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mNumStackTasks:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mSplitMinScrollP:F

.field public mStackActionButtonRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackBottomOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mStackRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

.field public mSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskIndexMap:Landroid/util/SparseIntArray;

.field private mTaskIndexOverrideMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mTaskRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskViewFullScaleInset:F

.field private mTaskViewSplitScaleInset:F

.field private mUnfocusedCurve:Landroid/graphics/Path;

.field private mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mUnfocusedDimCurve:Landroid/graphics/Path;

.field private mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

.field private mUnfocusedScaleCurve:Landroid/graphics/Path;

.field private mUnfocusedScaleCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->SPLIT:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplayRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    new-instance v2, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-direct {v2, p1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    const v2, 0x7f0d0356

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const v2, 0x7f0d035a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseBottomMargin:I

    const v2, 0x7f0d036c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformStackGap:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    new-instance v2, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v2, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v2, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v2, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedScaleCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNaviBarHeight:I

    return-void
.end method

.method private constructFocusedCurve()Landroid/graphics/Path;
    .locals 9

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedBottomPeekHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v4, v6, v3

    invoke-virtual {v2, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v4, v4, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    div-float v4, v8, v4

    sub-float v4, v6, v4

    sub-float v5, v6, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v2
.end method

.method private constructFocusedDimCurve()Landroid/graphics/Path;
    .locals 4

    const/4 v1, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v2, 0x3e800000    # 0.25f

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v1, v1, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    div-float v1, v3, v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method private constructUnfocusedCurve()Landroid/graphics/Path;
    .locals 28

    const v16, 0x3ecccccd    # 0.4f

    const v17, 0x3f79999a    # 0.975f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v27, v2, v3

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mLayoutInset:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v27, v2, v3

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v27

    const v3, 0x3f79999a    # 0.975f

    sub-float/2addr v2, v3

    const v3, 0x3dcccccc    # 0.099999994f

    div-float v26, v2, v3

    const v2, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v26

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v25, v3, v2

    const v21, 0x3f266666    # 0.65f

    const v2, 0x3f266666    # 0.65f

    mul-float v2, v2, v26

    add-float v12, v2, v25

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v6, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v7

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const v3, 0x3a83126f    # 0.001f

    add-float v5, v2, v3

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    return-object v1

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v27

    sub-float/2addr v2, v7

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v27

    sub-float v10, v2, v7

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move-object v8, v1

    move v9, v6

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v6, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v7

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const v3, 0x3a83126f    # 0.001f

    add-float v5, v2, v3

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v27

    sub-float/2addr v2, v7

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v27

    sub-float v10, v2, v7

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move-object v8, v1

    move v9, v6

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v27

    sub-float/2addr v2, v7

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v27

    sub-float v10, v2, v7

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move-object v8, v1

    move v9, v6

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v6, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v7

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const v3, 0x3a83126f    # 0.001f

    add-float v5, v2, v3

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v6, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v7

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const v3, 0x3a83126f    # 0.001f

    add-float v5, v2, v3

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    :cond_8
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v19, v2, v27

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f000000    # 0.5f

    move-object v13, v1

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v20, v2, v27

    const/high16 v19, 0x3f000000    # 0.5f

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    move-object/from16 v18, v1

    move/from16 v22, v12

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_0
.end method

.method private constructUnfocusedDimCurve()Landroid/graphics/Path;
    .locals 14

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    const v11, 0x3e19999a    # 0.15f

    const/4 v6, 0x0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v5

    sub-float v1, v12, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float v8, v5, v1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v5

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v3, v5

    const/high16 v4, 0x3e400000    # 0.1875f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v7, v0

    move v9, v6

    move v10, v8

    move v13, v11

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v0
.end method

.method private constructUnfocusedScaleCurve()Landroid/graphics/Path;
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method public static getDimensionForDevice(Landroid/content/Context;III)I
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    return v0
.end method

.method public static getDimensionForDevice(Landroid/content/Context;IIIIII)I
    .locals 5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isXLargeScreen:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v2, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move p6, p5

    goto :goto_1

    :cond_2
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    :cond_3
    move p4, p3

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    :goto_3
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    :cond_5
    move p2, p1

    goto :goto_3
.end method

.method private getNormalizedXFromFocusedY(FI)F
    .locals 3

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    return v2

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private getNormalizedXFromUnfocusedY(FI)F
    .locals 3

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    return v2

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I
    .locals 3

    if-nez p5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v0

    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x1

    if-ne p5, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v0

    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_1
    return p3
.end method

.method private isInvalidOverrideX(FFF)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v3, p3}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v3, p3}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    cmpl-float v3, p2, p1

    if-ltz v3, :cond_3

    cmpl-float v3, p1, p3

    if-ltz v3, :cond_3

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    cmpg-float v3, p2, p1

    if-gtz v3, :cond_4

    cmpg-float v3, p1, p3

    if-lez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private updateFrontBackTransforms()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v2, v2, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v3, v3, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    invoke-static {v0, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v2, v2, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v3, v3, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    invoke-static {v0, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v11

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move v3, v11

    move v4, v11

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    return-void
.end method


# virtual methods
.method public addUnfocusedTaskOverride(Lcom/android/systemui/recents/model/Task;F)V
    .locals 7

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v4

    add-float v3, p2, v4

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addUnfocusedTaskOverride(Lcom/android/systemui/recents/views/TaskView;F)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, v6

    int-to-float v5, v2

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromFocusedY(FI)F

    move-result v0

    int-to-float v5, v2

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, v3}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v5

    add-float v4, p2, v5

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-nez v5, :cond_0

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v6, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clearUnfocusedTaskOverrides()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-gt v3, v5, :cond_0

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;II)V

    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;II)V

    return-object v3

    :cond_1
    new-instance v8, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v8}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v3

    int-to-float v3, v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {v12, v3}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableLowerAppbarHeight:Z

    if-eqz v3, :cond_4

    const v21, 0x7f0d037b

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v18

    const/high16 v19, 0x4f000000

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v14, v3, -0x1

    :goto_2
    if-ltz v14, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/recents/model/Task;

    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v3, :cond_5

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    :goto_3
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    goto :goto_0

    :cond_4
    const v21, 0x7f0d0375

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v4

    invoke-virtual {v12, v4}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v3, :cond_6

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v15

    :goto_4
    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move v5, v4

    invoke-virtual/range {v3 .. v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    iget-object v3, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    sub-float v3, v19, v20

    move/from16 v0, v23

    int-to-float v5, v0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    const/4 v13, 0x1

    :goto_5
    if-eqz v13, :cond_8

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v19, v20

    goto :goto_3

    :cond_6
    const/4 v15, 0x1

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    goto :goto_5

    :cond_8
    move/from16 v16, v14

    :goto_6
    if-ltz v16, :cond_b

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v4

    invoke-virtual {v12, v4}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_9
    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    :cond_a
    if-nez v15, :cond_2

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_b
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;II)V

    return-object v3
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "TaskStackLayoutAlgorithm"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " numStackTasks="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->write(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "insets="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " stack="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " task="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " freeform="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " actionButton="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "minScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v5, " maxScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v5, " initialScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "focusState="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "taskId= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " x= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v5, " overrideX= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBackOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public getDeltaPForY(II)F
    .locals 3

    sub-int v1, p2, p1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getArcLength()F

    move-result v2

    mul-float v0, v1, v2

    neg-float v1, v0

    return v1
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplayRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFocusState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    return v0
.end method

.method public getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public getInitialFocusState()I
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method getStackScrollForTaskAtInitialOffset(Lcom/android/systemui/recents/model/Task;)F
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v1, v1

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method getStackScrollForTaskIgnoreOverrides(Lcom/android/systemui/recents/model/Task;)F
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getStackState()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    return-object v0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->isTransformAvailable(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v0, p1, p4, p0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->getTransform(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object p4

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-ne v9, v0, :cond_2

    :cond_1
    invoke-virtual {p4}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    return-object p4

    :cond_2
    if-eqz p7, :cond_3

    int-to-float v1, v9

    :goto_0
    int-to-float v2, v9

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    return-object p4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v1

    goto :goto_0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8

    const/4 v6, 0x0

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V
    .locals 33

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v11

    if-nez p8, :cond_0

    if-eqz v23, :cond_6

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v30, v0

    move/from16 v0, p3

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v29, v0

    const v30, -0x800001

    move/from16 v0, p3

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->width()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v30

    sub-int v29, v29, v30

    div-int/lit8 v26, v29, 0x2

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v29

    if-nez v29, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    if-eqz p7, :cond_7

    :cond_1
    const/16 v24, 0x0

    sget-boolean v29, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v29, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolationOnLandscape(F)F

    move-result v29

    const/high16 v30, 0x3f800000    # 1.0f

    sub-float v29, v30, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v24, v0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v29

    const/high16 v30, 0x3f800000    # 1.0f

    sub-float v29, v30, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_2

    const/16 v29, 0x0

    cmpl-float v29, p2, v29

    if-nez v29, :cond_2

    const/high16 v29, 0x3f000000    # 0.5f

    cmpl-float v29, v4, v29

    if-ltz v29, :cond_9

    const/16 v21, 0x0

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v12

    move/from16 v32, v0

    invoke-static/range {v30 .. v32}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    add-int v27, v29, v30

    const v29, 0x3e99999a    # 0.3f

    add-float v29, v29, v3

    invoke-static/range {v29 .. v29}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinTranslationZ:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-static/range {v29 .. v31}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v28

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v21

    invoke-static {v0, v1, v9}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v8

    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v29

    const/16 v30, 0x0

    const/high16 v31, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v31}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v25

    :goto_2
    sget-boolean v29, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v29, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewFullScaleInset:F

    move/from16 v18, v0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    move/from16 v29, v0

    if-eqz v29, :cond_a

    const v18, 0x3f6e147b    # 0.93f

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedScaleCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v17

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v29, v29, v18

    const/high16 v30, 0x3f800000    # 1.0f

    sub-float v30, v30, v17

    mul-float v30, v30, v29

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v29, v29, v17

    const/16 v31, 0x0

    cmpl-float v29, v29, v31

    if-lez v29, :cond_b

    const/high16 v29, 0x3f800000    # 1.0f

    :goto_4
    mul-float v29, v29, v30

    add-float v29, v29, v18

    const v30, 0x3f75c28f    # 0.96f

    mul-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    :goto_5
    const/high16 v29, 0x3f800000    # 1.0f

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    sget-boolean v29, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v29, :cond_1a

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    move/from16 v29, v0

    if-eqz v29, :cond_d

    const/high16 v7, 0x3e800000    # 0.25f

    :goto_6
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f

    cmpl-float v29, v8, v7

    if-lez v29, :cond_f

    const v29, 0x3d4ccccd    # 0.05f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/16 v30, 0x0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_e

    const/16 v29, 0x0

    :goto_7
    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    :goto_8
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    move/from16 v29, v0

    if-eqz v29, :cond_4

    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    move/from16 v29, v0

    const v30, 0x3e99999a    # 0.3f

    mul-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    :cond_4
    const/high16 v29, 0x40800000    # 4.0f

    div-float v29, v28, v29

    const/high16 v30, 0x40400000    # 3.0f

    mul-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    move-object/from16 v0, p5

    iput v8, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    move/from16 v0, v25

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_1c

    if-eqz p6, :cond_5

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v29, v0

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    cmpl-float v29, v29, v30

    if-eqz v29, :cond_1b

    :cond_5
    const/16 v29, 0x1

    :goto_9
    move/from16 v0, v29

    move-object/from16 v1, p5

    iput-boolean v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    return-void

    :cond_6
    if-nez v11, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v29, v0

    sub-float v29, v29, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v20, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v31

    sub-int v30, v30, v31

    div-int/lit8 v30, v30, 0x2

    add-int v6, v29, v30

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v29

    add-int v27, v6, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v28, v0

    const/4 v8, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v29

    const/high16 v30, 0x3f800000    # 1.0f

    sub-float v29, v30, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v24, v0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v29, v0

    const/high16 v30, 0x3f000000    # 0.5f

    invoke-virtual/range {v29 .. v30}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v16

    sub-float v21, v21, v16

    const/high16 v29, 0x3e800000    # 0.25f

    sub-float v29, v29, v16

    const/high16 v30, 0x3e800000    # 0.25f

    div-float v29, v30, v29

    mul-float v21, v21, v29

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewSplitScaleInset:F

    move/from16 v18, v0

    goto/16 :goto_3

    :cond_b
    const/high16 v29, 0x41880000    # 17.0f

    goto/16 :goto_4

    :cond_c
    const/high16 v29, 0x3f800000    # 1.0f

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    goto/16 :goto_5

    :cond_d
    const v7, 0x3e570a3d    # 0.21f

    goto/16 :goto_6

    :cond_e
    const v29, 0x3d4ccccd    # 0.05f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/high16 v30, 0x41a00000    # 20.0f

    mul-float v29, v29, v30

    goto/16 :goto_7

    :cond_f
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v29, v0

    if-nez v29, :cond_11

    cmpl-float v29, v8, v7

    if-lez v29, :cond_11

    const v29, 0x3d4ccccd    # 0.05f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/16 v30, 0x0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_10

    const/16 v29, 0x0

    :goto_a
    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto/16 :goto_8

    :cond_10
    const v29, 0x3d4ccccd    # 0.05f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/high16 v30, 0x41a00000    # 20.0f

    mul-float v29, v29, v30

    goto :goto_a

    :cond_11
    const/high16 v29, 0x3f800000    # 1.0f

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto/16 :goto_8

    :cond_12
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v29, v0

    if-eqz v29, :cond_13

    const v7, 0x3e6b851f    # 0.23f

    :goto_b
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v29, v0

    if-eqz v29, :cond_17

    cmpl-float v29, v8, v7

    if-lez v29, :cond_17

    const v29, 0x3d23d70a    # 0.04f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/16 v30, 0x0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_16

    const/16 v29, 0x0

    :goto_c
    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto/16 :goto_8

    :cond_13
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    move/from16 v29, v0

    if-eqz v29, :cond_14

    const/high16 v7, 0x3e800000    # 0.25f

    goto :goto_b

    :cond_14
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    move/from16 v29, v0

    if-eqz v29, :cond_15

    const/high16 v7, 0x3e800000    # 0.25f

    goto :goto_b

    :cond_15
    const v7, 0x3e8a3d71    # 0.27f

    goto :goto_b

    :cond_16
    const v29, 0x3d23d70a    # 0.04f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/high16 v30, 0x41c80000    # 25.0f

    mul-float v29, v29, v30

    goto :goto_c

    :cond_17
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v29, v0

    if-nez v29, :cond_19

    cmpl-float v29, v8, v7

    if-lez v29, :cond_19

    const v29, 0x3d4ccccd    # 0.05f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/16 v30, 0x0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_18

    const/16 v29, 0x0

    :goto_d
    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto/16 :goto_8

    :cond_18
    const v29, 0x3d4ccccd    # 0.05f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/high16 v30, 0x41a00000    # 20.0f

    mul-float v29, v29, v30

    goto :goto_d

    :cond_19
    const/high16 v29, 0x3f800000    # 1.0f

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto/16 :goto_8

    :cond_1a
    const/high16 v29, 0x3f800000    # 1.0f

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto/16 :goto_8

    :cond_1b
    const/16 v29, 0x0

    goto/16 :goto_9

    :cond_1c
    const/16 v29, 0x0

    goto/16 :goto_9
.end method

.method public getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 9

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v8

    invoke-virtual {p0, v8, p5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d03a0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isMobileKeyboardEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d03a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    :cond_0
    :goto_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    add-int/2addr v2, v9

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p4

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p5, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v7

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v2, v7, 0x2

    sub-int v8, v0, v2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v2, v6, 0x2

    sub-int/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/graphics/Rect;->inset(II)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d03a6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d01ee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v0, v2, :cond_4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d03a0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d01ef

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d01ee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/lit8 v9, v0, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d03a0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v0, v2, :cond_6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isMobileKeyboardEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d01ef

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d03a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d01ee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v0, v2, :cond_8

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d03a0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d01ef

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d01ee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/lit8 v9, v0, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    goto/16 :goto_0
.end method

.method public getUntransformedTaskViewBounds()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getYForDeltaP(FF)I
    .locals 4

    sub-float v1, p2, p1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getArcLength()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    neg-int v1, v0

    return v1
.end method

.method public initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v10

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseBottomMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v7

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialTopOffset:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialBottomOffset:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialBottomOffset:I

    iput-object p4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformStackGap:I

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    move-object v0, p4

    move-object v3, p3

    move v4, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->computeRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v10

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    sub-int v8, v0, v1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInsetForCloseAllMargin:I

    sub-int v8, v0, v1

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitializeInterpolator:Z

    if-eqz v0, :cond_3

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNaviBarHeight:I

    sub-int/2addr v8, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructUnfocusedCurve()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    new-instance v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructFocusedCurve()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurve:Landroid/graphics/Path;

    new-instance v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurve:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructUnfocusedDimCurve()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurve:Landroid/graphics/Path;

    new-instance v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructFocusedDimCurve()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurve:Landroid/graphics/Path;

    new-instance v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructUnfocusedScaleCurve()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedScaleCurve:Landroid/graphics/Path;

    new-instance v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedScaleCurve:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedScaleCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitializeInterpolator:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFrontBackTransforms()V

    goto :goto_1
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reloadOnConfigurationChange(Landroid/content/Context;)V
    .locals 10

    const v5, 0x7f0d035c

    const v4, 0x7f0d0358

    const/4 v9, 0x2

    const v8, 0x7f0d0369

    const v3, 0x7f0d0368

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x7f0c0045

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const v2, 0x7f0c0046

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v0, :cond_1

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    :goto_1
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v9, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x7f0c0050

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const v2, 0x7f0c0051

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    :goto_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isMobileKeyboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0c004b

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInsetForCloseAllMargin:I

    :goto_3
    const v0, 0x7f0c004c

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewFullScaleInset:F

    const v0, 0x7f0c004d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewSplitScaleInset:F

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const v0, 0x7f0d0361

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    const v0, 0x7f0d0362

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedBottomPeekHeight:I

    const v0, 0x7f0d036a

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinTranslationZ:I

    const v0, 0x7f0d036b

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    const v1, 0x7f0d0364

    const v2, 0x7f0d0366

    move-object v0, p1

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialTopOffset:I

    const v1, 0x7f0d0365

    const v2, 0x7f0d0367

    move-object v0, p1

    move v3, v8

    move v4, v8

    move v5, v8

    move v6, v8

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialBottomOffset:I

    const v0, 0x7f0d0363

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mLayoutInset:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v9, :cond_6

    const v0, 0x7f0c0058

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFullMinScrollP:F

    const v0, 0x7f0c005d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSplitMinScrollP:F

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    return-void

    :cond_0
    const v0, 0x7f0d0357

    const v1, 0x7f0d0359

    invoke-static {p1, v0, v4, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;III)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f0d035b

    const v1, 0x7f0d035f

    invoke-static {p1, v0, v5, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;III)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    goto/16 :goto_1

    :cond_2
    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x7f0c004e

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const v2, 0x7f0c004f

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0c004a

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInsetForCloseAllMargin:I

    goto/16 :goto_3

    :cond_4
    const v0, 0x7f0c0049

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInsetForCloseAllMargin:I

    goto/16 :goto_3

    :cond_5
    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x7f0c0047

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const v2, 0x7f0c0048

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    goto/16 :goto_4

    :cond_6
    const v0, 0x7f0c0057

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFullMinScrollP:F

    const v0, 0x7f0c005c

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSplitMinScrollP:F

    goto :goto_5
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    return-void
.end method

.method public resetInitializeInterpolator()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitializeInterpolator:Z

    return-void
.end method

.method public setFocusState(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFrontBackTransforms()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;->onFocusStateChanged(II)V

    :cond_0
    return-void
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTaskOverridesForInitialState(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 13

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v10, :cond_1

    iget-boolean v7, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v10

    if-nez v10, :cond_0

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    if-nez p2, :cond_2

    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v10, :cond_0

    if-eqz v7, :cond_2

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialBottomOffset:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v11

    sget-boolean v10, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    if-eqz v10, :cond_3

    const v10, 0x3cf5c28f    # 0.03f

    :goto_1
    sub-float v5, v11, v10

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v4

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v11, 0x2

    if-gt v10, v11, :cond_4

    const/4 v10, 0x2

    new-array v2, v10, [F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/4 v11, 0x0

    aput v10, v2, v11

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v10

    const/4 v11, 0x1

    aput v10, v2, v11

    :goto_2
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_3
    if-ltz v0, :cond_0

    sub-int v10, v8, v0

    add-int/lit8 v1, v10, -0x1

    array-length v10, v2

    if-ge v1, v10, :cond_0

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    aget v12, v2, v1

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v11

    add-float v6, v10, v11

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    iget-object v10, v10, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    const/4 v10, 0x2

    new-array v2, v10, [F

    const/4 v10, 0x0

    aput v5, v2, v10

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v10

    const/4 v11, 0x1

    aput v10, v2, v11

    goto :goto_2
.end method

.method public transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 4

    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method update(Lcom/android/systemui/recents/model/TaskStack;Landroid/util/ArraySet;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskStack;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v12

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontMostTaskP:F

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/model/Task;

    iget-object v0, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v17, :cond_2

    invoke-virtual {v14}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v15, :cond_4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->update(Ljava/util/List;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    if-eqz v7, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v8

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    add-int v10, v17, v18

    int-to-float v0, v10

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromFocusedY(FI)F

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    sub-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    iget-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    int-to-float v0, v8

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    :goto_4
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v17, v0

    add-int/lit8 v8, v17, -0x1

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v17, v8, -0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4

    :cond_8
    invoke-virtual {v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    add-int v10, v17, v18

    int-to-float v0, v10

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v17, :cond_c

    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v17, :cond_c

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSplitMinScrollP:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    :goto_6
    iget-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    iget-boolean v11, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    :goto_7
    iget-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v17, :cond_a

    iget-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    :cond_a
    int-to-float v0, v8

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFullMinScrollP:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    goto :goto_5

    :cond_c
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    sub-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    goto :goto_6

    :cond_d
    const/4 v11, 0x1

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v20, v0

    add-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    :cond_f
    if-eqz v11, :cond_10

    int-to-float v0, v8

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    :cond_10
    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v20, v0

    add-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    sub-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4
.end method

.method public updateFocusStateOnScroll(FFF)F
    .locals 11

    const/4 v10, 0x0

    cmpl-float v8, p2, p3

    if-nez v8, :cond_0

    return p2

    :cond_0
    sub-float v0, p2, p3

    sub-float v1, p2, p1

    move v4, p2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v8, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_0
    if-ltz v2, :cond_6

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    int-to-float v7, v8

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float v3, v5, v0

    invoke-direct {p0, v7, v5, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInvalidOverrideX(FFF)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    cmpl-float v8, v5, v7

    if-ltz v8, :cond_3

    cmpg-float v8, v0, v10

    if-gtz v8, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    cmpg-float v8, v5, v7

    if-gtz v8, :cond_4

    cmpl-float v8, v0, v10

    if-gez v8, :cond_2

    :cond_4
    move v4, p3

    sub-float v3, v5, v1

    invoke-direct {p0, v7, v5, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInvalidOverrideX(FFF)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    return v4
.end method
