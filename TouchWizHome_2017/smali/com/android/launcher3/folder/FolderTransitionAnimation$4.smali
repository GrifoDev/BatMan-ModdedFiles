.class Lcom/android/launcher3/folder/FolderTransitionAnimation$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderTransitionAnimation;->animateAddItemStart(Landroid/animation/AnimatorSet;Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

.field final synthetic val$appIcon:Landroid/view/View;

.field final synthetic val$scaleX:F

.field final synthetic val$scaleY:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;Landroid/view/View;FF)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$4;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$4;->val$appIcon:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$4;->val$scaleX:F

    iput p4, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$4;->val$scaleY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$4;->val$appIcon:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$4;->val$scaleX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$4;->val$appIcon:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$4;->val$scaleY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
