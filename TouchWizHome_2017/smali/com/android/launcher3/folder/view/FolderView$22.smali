.class Lcom/android/launcher3/folder/view/FolderView$22;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->animateDismiss(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;

.field final synthetic val$keepLayout:Z

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$22;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderView$22;->val$targetView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/launcher3/folder/view/FolderView$22;->val$keepLayout:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$22;->val$targetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$22;->val$targetView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView$22;->val$keepLayout:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
