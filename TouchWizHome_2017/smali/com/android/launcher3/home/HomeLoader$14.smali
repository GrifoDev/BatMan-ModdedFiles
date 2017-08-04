.class Lcom/android/launcher3/home/HomeLoader$14;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->removeAppsButton(Lcom/android/launcher3/common/base/item/IconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$14;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$14;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$14;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$14;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->access$6400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$14;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$14;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v1, Lcom/android/launcher3/home/HomeLoader$14$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeLoader$14$1;-><init>(Lcom/android/launcher3/home/HomeLoader$14;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->access$6600(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    return-void
.end method
