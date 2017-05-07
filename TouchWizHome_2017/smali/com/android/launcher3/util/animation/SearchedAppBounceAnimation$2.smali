.class Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchedAppBounceAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation$2;->this$0:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "JYK"

    const-string v1, "SearchedAppBounceAnimation end "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation$2;->this$0:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    iget-object v0, v0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation$2;->this$0:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    iget v1, v1, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->initDeltaY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation$2;->this$0:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->initDeltaY:F

    return-void
.end method
