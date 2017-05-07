.class public Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;
.super Ljava/lang/Object;
.source "ItemBounceAnimation.java"


# instance fields
.field finalDeltaY:F

.field initDeltaY:F

.field mAnimator:Landroid/animation/ValueAnimator;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->initDeltaY:F

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->finalDeltaY:F

    return-void
.end method


# virtual methods
.method public animate()V
    .locals 4

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->mView:Landroid/view/View;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation$1;-><init>(Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation$2;-><init>(Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
