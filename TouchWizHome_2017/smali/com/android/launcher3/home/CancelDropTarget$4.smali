.class Lcom/android/launcher3/home/CancelDropTarget$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CancelDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/CancelDropTarget;->animateScale(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/CancelDropTarget;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/CancelDropTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/CancelDropTarget$4;->this$0:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget$4;->this$0:Lcom/android/launcher3/home/CancelDropTarget;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/home/CancelDropTarget;->access$100(Lcom/android/launcher3/home/CancelDropTarget;Z)V

    return-void
.end method
