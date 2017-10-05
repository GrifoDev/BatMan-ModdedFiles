.class Lcom/android/launcher3/home/HomeLoader$49$1;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader$49;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/HomeLoader$49;

.field final synthetic val$hotseatItems:Ljava/util/ArrayList;

.field final synthetic val$needToRemoveItem:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader$49;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->this$1:Lcom/android/launcher3/home/HomeLoader$49;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->val$needToRemoveItem:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->val$hotseatItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->this$1:Lcom/android/launcher3/home/HomeLoader$49;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->this$1:Lcom/android/launcher3/home/HomeLoader$49;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$49;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->val$needToRemoveItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->this$1:Lcom/android/launcher3/home/HomeLoader$49;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$49;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->val$needToRemoveItem:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindItemsRemoved(Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->this$1:Lcom/android/launcher3/home/HomeLoader$49;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$49;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$49$1;->val$hotseatItems:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindHotseatItems(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method
