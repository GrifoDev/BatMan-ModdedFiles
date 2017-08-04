.class Lcom/android/launcher3/folder/FolderTransitionAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderTransitionAnimation;->getDragAnimation(ZLcom/android/launcher3/folder/view/FolderView;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

.field final synthetic val$border:Landroid/view/View;

.field final synthetic val$enter:Z

.field final synthetic val$header:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;ZLandroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->val$enter:Z

    iput-object p3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->val$border:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->val$header:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$202(Lcom/android/launcher3/folder/FolderTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->val$enter:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->val$border:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->val$border:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->val$header:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->val$header:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->val$enter:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->val$border:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->val$border:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->val$header:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$2;->val$header:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
