.class Lcom/android/launcher3/allapps/AppsTransitionAnimation$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/AppsTransitionAnimation;->changeScreenGridBackground(Lcom/android/launcher3/allapps/view/AppsPagedView;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

.field final synthetic val$cl:Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

.field final synthetic val$enter:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;ZLcom/android/launcher3/allapps/view/AppsViewCellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$14;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$14;->val$enter:Z

    iput-object p3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$14;->val$cl:Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$14;->val$enter:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$14;->val$cl:Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    :cond_0
    return-void
.end method
