.class public Lcom/android/launcher3/widget/view/WidgetFolder;
.super Landroid/widget/LinearLayout;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;,
        Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetFolder"


# instance fields
.field private mAnimDuration:J

.field private mIconAnim:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

.field private mIndicatorWrapper:Landroid/widget/FrameLayout;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPageIndicatorHeight:I

.field private mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

.field private mStageAnimator:Landroid/animation/AnimatorSet;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleHight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/view/WidgetFolder;)Lcom/android/launcher3/widget/view/WidgetFolderPagedView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/view/WidgetFolder;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/widget/view/WidgetFolder;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mAnimDuration:J

    return-wide v0
.end method

.method private animateClose(Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "alpha"

    new-array v3, v7, [F

    const/4 v4, 0x0

    aput v4, v3, v8

    invoke-static {p0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mAnimDuration:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    iget-object v5, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v5, v5, v8

    aput v5, v4, v8

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "scaleY"

    new-array v4, v7, [F

    iget-object v5, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v5, v5, v7

    aput v5, v4, v8

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    const-string v4, "translationX"

    new-array v5, v7, [F

    iget-object v6, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v6, v6, v8

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "translationY"

    new-array v5, v7, [F

    iget-object v6, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v6, v6, v7

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-wide v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mAnimDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/16 v2, 0x23

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Lcom/android/launcher3/widget/view/WidgetFolder$3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/view/WidgetFolder$3;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private animateOpen(Landroid/animation/AnimatorSet;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v5, v3, v7

    invoke-static {p0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mAnimDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    new-array v4, v6, [F

    aput v5, v4, v7

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "scaleY"

    new-array v4, v6, [F

    aput v5, v4, v7

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "translationX"

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {p0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "translationY"

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {p0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-wide v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mAnimDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/16 v2, 0x23

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Lcom/android/launcher3/widget/view/WidgetFolder$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/view/WidgetFolder$4;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private cleanupAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private getAnimationInfo(Landroid/view/View;)Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;
    .locals 13

    const/4 v6, 0x2

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;

    invoke-direct {v0}, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-array v2, v6, [I

    new-array v1, v6, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v6, v1, v9

    iget v7, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    add-int/2addr v6, v7

    aput v6, v1, v9

    aget v6, v1, v10

    iget v7, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    add-int/2addr v6, v7

    aput v6, v1, v10

    aget v6, v2, v9

    aget v7, v1, v9

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v12

    sub-float/2addr v6, v7

    float-to-int v4, v6

    aget v6, v2, v10

    aget v7, v1, v10

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v12

    sub-float/2addr v6, v7

    float-to-int v5, v6

    iget-object v6, v0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aput v4, v6, v9

    iget-object v6, v0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aput v5, v6, v10

    iget-object v6, v0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v11

    iget v8, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    aput v7, v6, v9

    iget-object v6, v0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v11

    iget v8, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    aput v7, v6, v10

    goto :goto_0
.end method

.method private getContentAreaHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getDesiredHeight()I

    move-result v0

    return v0
.end method

.method private getFolderHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getContentAreaHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getFolderHeight(I)I

    move-result v0

    return v0
.end method

.method private getFolderHeight(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitleHight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPageIndicatorHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getPageIndicatorHeight()I
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIndicatorWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIndicatorWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTitleBarHeight()I
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private prepareOpenAnimation(Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->setTranslationX(F)V

    iget-object v0, p1, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->setTranslationY(F)V

    iget-object v0, p1, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->setScaleX(F)V

    iget-object v0, p1, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->setScaleY(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->setAlpha(F)V

    return-void
.end method

.method private setItemsAndBind(Landroid/view/View;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    instance-of v5, p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-nez v5, :cond_0

    const-string v5, "WidgetFolder"

    const-string v7, "no anchorView for bind"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    :goto_0
    return v5

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/widget/view/WidgetItemView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetItemView;->getWidgets()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher3/widget/view/WidgetFolder;->setTitle(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->setWidgetItems(Ljava/util/List;)V

    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->setDataReady()V

    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    invoke-virtual {v5, v7, v7}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->prepareInOut(IZ)V

    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIndicatorWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v5, v7

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public centerAboutIcon()V
    .locals 10

    const/4 v9, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/android/launcher3/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    new-instance v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v3, v9, v9}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    iget v7, v0, Landroid/graphics/Point;->x:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p0, v6, v9}, Lcom/android/launcher3/widget/view/WidgetFolder;->measure(II)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getFolderHeight()I

    move-result v1

    iget v7, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v1

    div-int/lit8 v4, v7, 0x2

    iget v7, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v5

    div-int/lit8 v2, v7, 0x2

    iput v5, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    iput v1, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    iput v2, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    iput v4, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    iput v4, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->topMargin:I

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->setMarginStart(I)V

    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/view/WidgetFolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public changeColorForBg(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    return-void
.end method

.method public close(Landroid/view/View;ZLjava/util/HashMap;)Landroid/animation/AnimatorSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->cleanupAnimation()V

    const-string v3, "WidgetFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close anchorview : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder;->getAnimationInfo(Landroid/view/View;)Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v1, v0, p3}, Lcom/android/launcher3/widget/view/WidgetFolder;->animateClose(Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIconAnim:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->prepareAimation(Landroid/view/View;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Z)V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIconAnim:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p1, v2, v0, p3}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->animateClose(Landroid/view/View;Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetFolder;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIconAnim:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->removeView()V

    goto :goto_1
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {p0, v6, v6, v3, v6}, Lcom/android/launcher3/widget/view/WidgetFolder;->setPadding(IIII)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->onConfigurationChangedIfNeeded()V

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0057

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getTitleBarHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitleHight:I

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIndicatorWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getPageIndicatorHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPageIndicatorHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->centerAboutIcon()V

    return-void

    :cond_1
    iget v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {p0, v6, v6, v6, v3}, Lcom/android/launcher3/widget/view/WidgetFolder;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    const v0, 0x7f110104

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f110105

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    const v0, 0x7f110107

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIndicatorWrapper:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getPageIndicatorHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPageIndicatorHeight:I

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getTitleBarHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitleHight:I

    new-instance v0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder;Lcom/android/launcher3/widget/view/WidgetFolder$1;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIconAnim:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mAnimDuration:J

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v6, p1}, Lcom/android/launcher3/widget/view/WidgetFolder;->getDefaultSize(II)I

    move-result v3

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getContentAreaHeight()I

    move-result v2

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v6, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitleHight:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->measure(II)V

    iget-object v6, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    invoke-virtual {v6, v1, v0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->measure(II)V

    iget-object v6, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIndicatorWrapper:Landroid/widget/FrameLayout;

    iget v7, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPageIndicatorHeight:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/widget/FrameLayout;->measure(II)V

    move v5, v3

    invoke-direct {p0, v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->getFolderHeight(I)I

    move-result v4

    invoke-virtual {p0, v5, v4}, Lcom/android/launcher3/widget/view/WidgetFolder;->setMeasuredDimension(II)V

    return-void
.end method

.method public open(Landroid/view/View;ZLjava/util/HashMap;)Landroid/animation/AnimatorSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->cleanupAnimation()V

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder;->setItemsAndBind(Landroid/view/View;)Z

    const-string v5, "WidgetFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open anchorview : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->centerAboutIcon()V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder;->getAnimationInfo(Landroid/view/View;)Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->prepareOpenAnimation(Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;)V

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v2, p3}, Lcom/android/launcher3/widget/view/WidgetFolder;->animateOpen(Landroid/animation/AnimatorSet;Ljava/util/HashMap;)V

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIconAnim:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    invoke-virtual {v2, p1, v0, v3}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->prepareAimation(Landroid/view/View;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Z)V

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIconAnim:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p1, v3, v0, p3}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->animateOpen(Landroid/view/View;Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetFolder;->setVisibility(I)V

    new-instance v2, Lcom/android/launcher3/widget/view/WidgetFolder$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/view/WidgetFolder$1;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->post(Ljava/lang/Runnable;)Z

    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/launcher3/widget/view/WidgetFolder$2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/widget/view/WidgetFolder$2;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    :cond_2
    move v2, v4

    goto :goto_0
.end method
