.class Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getScreenGridEnterExitAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

.field final synthetic val$appsScreenGridTopContainer:Landroid/view/View;

.field final synthetic val$appsScreengridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

.field final synthetic val$screengridAlphaValue:F

.field final synthetic val$searchBarAlphaValue:F

.field final synthetic val$searchBarContainerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/view/View;FLcom/android/launcher3/allapps/AppsScreenGridPanel;FLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$searchBarContainerView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$searchBarAlphaValue:F

    iput-object p4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsScreengridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    iput p5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$screengridAlphaValue:F

    iput-object p6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsScreenGridTopContainer:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/allapps/AppsTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$302(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$searchBarContainerView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$searchBarAlphaValue:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsScreengridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    iget v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$screengridAlphaValue:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsScreenGridTopContainer:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$screengridAlphaValue:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
