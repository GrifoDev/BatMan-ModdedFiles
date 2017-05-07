.class Lcom/android/launcher3/allapps/controller/AppsReorderController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsReorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsReorderController;->startDeleteAnimation(Landroid/animation/AnimatorSet;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsReorderController;

.field final synthetic val$page:Lcom/android/launcher3/common/base/view/CellLayout;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsReorderController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;->val$page:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;->val$page:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
