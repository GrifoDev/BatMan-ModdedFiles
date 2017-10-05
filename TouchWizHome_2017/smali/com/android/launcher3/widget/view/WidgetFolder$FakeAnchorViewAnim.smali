.class Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;
.super Ljava/lang/Object;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/view/WidgetFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeAnchorViewAnim"
.end annotation


# instance fields
.field mAnimView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetFolder;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/widget/view/WidgetFolder;Lcom/android/launcher3/widget/view/WidgetFolder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V

    return-void
.end method

.method private makeLayoutParams()Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    new-instance v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v0, v3, v3}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    iput v2, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    iput v2, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->leftMargin:I

    iput v2, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->leftMargin:I

    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->topMargin:I

    iput v2, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->topMargin:I

    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->setMarginStart(I)V

    return-object v0
.end method

.method private prepareFakeAnchorView(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method public animateClose(Landroid/view/View;Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/animation/AnimatorSet;",
            "Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v9

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$300(Lcom/android/launcher3/widget/view/WidgetFolder;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    new-array v2, v10, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v4, "scaleX"

    new-array v5, v8, [F

    iget-object v6, p3, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v6, v6, v9

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v4, "scaleY"

    new-array v5, v8, [F

    iget-object v6, p3, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v6, v6, v8

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v5, "translationX"

    new-array v6, v8, [F

    iget-object v7, p3, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v7, v7, v9

    int-to-float v7, v7

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v5, "translationY"

    new-array v6, v8, [F

    iget-object v7, p3, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v7, v7, v8

    int-to-float v7, v7

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$300(Lcom/android/launcher3/widget/view/WidgetFolder;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/16 v2, 0x23

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$2;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$2;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public animateOpen(Landroid/view/View;Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/animation/AnimatorSet;",
            "Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v9, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$300(Lcom/android/launcher3/widget/view/WidgetFolder;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v5, "translationX"

    new-array v6, v7, [F

    aput v9, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v5, "translationY"

    new-array v6, v7, [F

    aput v9, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$300(Lcom/android/launcher3/widget/view/WidgetFolder;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/16 v2, 0x23

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    new-instance v2, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$1;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$1;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public prepareAimation(Landroid/view/View;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->prepareFakeAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->makeLayoutParams()Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->prepareFakeAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->makeLayoutParams()Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public removeView()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v1}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$200(Lcom/android/launcher3/widget/view/WidgetFolder;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
