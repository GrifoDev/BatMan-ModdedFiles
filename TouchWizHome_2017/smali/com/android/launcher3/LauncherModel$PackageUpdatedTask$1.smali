.class Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

.field final synthetic val$currentItems:Ljava/util/ArrayList;

.field final synthetic val$gameHomeManager:Lcom/android/launcher3/gamehome/GameHomeManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lcom/android/launcher3/gamehome/GameHomeManager;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$1;->this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$1;->val$gameHomeManager:Lcom/android/launcher3/gamehome/GameHomeManager;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$1;->val$currentItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$1;->val$gameHomeManager:Lcom/android/launcher3/gamehome/GameHomeManager;

    invoke-virtual {v2}, Lcom/android/launcher3/gamehome/GameHomeManager;->isGameHomeHidden()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$1;->val$currentItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isGameApp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$1;->this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/launcher3/LauncherModel;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager;->getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/gamehome/GameHomeManager;->resetGameHomeHiddenValue()V

    :cond_2
    return-void
.end method
