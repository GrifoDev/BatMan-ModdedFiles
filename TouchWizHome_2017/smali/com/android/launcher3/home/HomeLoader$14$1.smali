.class Lcom/android/launcher3/home/HomeLoader$14$1;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/HomeLoader$14;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader$14;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$14$1;->this$1:Lcom/android/launcher3/home/HomeLoader$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$14$1;->this$1:Lcom/android/launcher3/home/HomeLoader$14;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$14;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$700(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$14$1;->this$1:Lcom/android/launcher3/home/HomeLoader$14;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$14;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$14$1;->this$1:Lcom/android/launcher3/home/HomeLoader$14;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$14;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$6500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindAppsButton(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
