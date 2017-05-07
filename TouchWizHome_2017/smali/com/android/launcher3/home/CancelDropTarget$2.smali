.class Lcom/android/launcher3/home/CancelDropTarget$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CancelDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/CancelDropTarget;->animateCircleView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/CancelDropTarget;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/CancelDropTarget;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/CancelDropTarget$2;->this$0:Lcom/android/launcher3/home/CancelDropTarget;

    iput-object p2, p0, Lcom/android/launcher3/home/CancelDropTarget$2;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget$2;->val$imageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
