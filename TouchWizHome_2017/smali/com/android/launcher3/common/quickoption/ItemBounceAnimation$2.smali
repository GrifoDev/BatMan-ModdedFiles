.class Lcom/android/launcher3/common/quickoption/ItemBounceAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ItemBounceAnimation.java"


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

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation$2;->this$0:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation$2;->this$0:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation$2;->this$0:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    iget v1, v1, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->initDeltaY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation$2;->this$0:Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->initDeltaY:F

    return-void
.end method
