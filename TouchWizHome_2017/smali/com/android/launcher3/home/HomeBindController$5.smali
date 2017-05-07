.class Lcom/android/launcher3/home/HomeBindController$5;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeBindController;->bindItems(Ljava/util/ArrayList;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeBindController;

.field final synthetic val$anim:Landroid/animation/AnimatorSet;

.field final synthetic val$bounceAnims:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$5;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeBindController$5;->val$anim:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeBindController$5;->val$bounceAnims:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController$5;->val$anim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController$5;->val$bounceAnims:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController$5;->val$anim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
