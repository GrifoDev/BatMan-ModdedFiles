.class Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->animateOpen(Landroid/animation/AnimatorSet;Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

.field final synthetic val$iconView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$1;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$1;->val$iconView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$1;->val$iconView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$1;->val$iconView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
