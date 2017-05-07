.class Lcom/android/launcher3/common/quickoption/ItemBounceAnimation$1;
.super Ljava/lang/Object;
.source "ItemBounceAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation$1;->this$0:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation$1;->this$0:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    iget v2, v2, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->finalDeltaY:F

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation$1;->this$0:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    iget v4, v4, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->initDeltaY:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation$1;->this$0:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    iget-object v2, v2, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
