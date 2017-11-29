.class Lcom/android/launcher3/allapps/controller/AppsReorderController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsReorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsReorderController;->startDeleteAnimation(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsReorderController;

.field final synthetic val$deleteAnimator:Landroid/animation/AnimatorSet;

.field final synthetic val$page:Lcom/android/launcher3/common/base/view/CellLayout;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsReorderController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;->val$page:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;->val$v:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;->val$deleteAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->access$100(Lcom/android/launcher3/allapps/controller/AppsReorderController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;->val$deleteAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;->val$page:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
