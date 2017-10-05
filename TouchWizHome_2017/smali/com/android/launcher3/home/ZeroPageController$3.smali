.class Lcom/android/launcher3/home/ZeroPageController$3;
.super Ljava/lang/Object;
.source "ZeroPageController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ZeroPageController;->animatePage(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ZeroPageController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ZeroPageController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$3;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$3;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$3;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$1100(Lcom/android/launcher3/home/ZeroPageController;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController$3;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v4}, Lcom/android/launcher3/home/ZeroPageController;->access$1400(Lcom/android/launcher3/home/ZeroPageController;)J

    move-result-wide v4

    sub-long v4, v6, v4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/home/ZeroPageController;->access$1500(Lcom/android/launcher3/home/ZeroPageController;IIZJ)V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$3;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v0, v6, v7}, Lcom/android/launcher3/home/ZeroPageController;->access$1402(Lcom/android/launcher3/home/ZeroPageController;J)J

    return-void

    :cond_0
    move v3, v2

    goto :goto_0
.end method
