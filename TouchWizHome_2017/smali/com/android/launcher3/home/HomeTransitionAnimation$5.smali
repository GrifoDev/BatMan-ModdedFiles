.class Lcom/android/launcher3/home/HomeTransitionAnimation$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

.field final synthetic val$enter:Z

.field final synthetic val$homeContainer:Lcom/android/launcher3/home/HomeContainer;

.field final synthetic val$homePageIndicator:Landroid/view/View;

.field final synthetic val$multiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/common/multiselect/MultiSelectPanel;Landroid/view/View;Lcom/android/launcher3/home/HomeContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$5;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    iput-boolean p2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$5;->val$enter:Z

    iput-object p3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$5;->val$multiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$5;->val$homePageIndicator:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$5;->val$homeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$5;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$302(Lcom/android/launcher3/home/HomeTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$5;->val$enter:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$5;->val$multiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelectSlideVI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$5;->val$multiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$5;->val$homePageIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$5;->val$homeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeContainer;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$5;->val$enter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$5;->val$multiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$5;->val$multiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->bringToFront()V

    :cond_0
    return-void
.end method
