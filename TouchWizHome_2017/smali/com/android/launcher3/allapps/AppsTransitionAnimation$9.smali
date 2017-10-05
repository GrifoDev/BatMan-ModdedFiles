.class Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getViewInOutAnimator(Ljava/util/HashMap;ILcom/android/launcher3/common/stage/StageEntry;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

.field final synthetic val$animateViews:Ljava/util/ArrayList;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$entry:Lcom/android/launcher3/common/stage/StageEntry;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;Ljava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->val$entry:Lcom/android/launcher3/common/stage/StageEntry;

    iput-object p3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->val$animateViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->val$animateViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$300(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->val$entry:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionBy(Lcom/android/launcher3/common/stage/StageEntry;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->val$animationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$9;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
