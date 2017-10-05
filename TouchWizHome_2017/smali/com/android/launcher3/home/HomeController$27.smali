.class Lcom/android/launcher3/home/HomeController$27;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/item/ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->updateShortcuts(Ljava/util/ArrayList;Lcom/android/launcher3/common/model/IconCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$folderIconsToRefresh:Ljava/util/ArrayList;

.field final synthetic val$iconCache:Lcom/android/launcher3/common/model/IconCache;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;Lcom/android/launcher3/common/model/IconCache;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$27;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeController$27;->val$updates:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeController$27;->val$iconCache:Lcom/android/launcher3/common/model/IconCache;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeController$27;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    instance-of v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_0

    instance-of v6, p2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController$27;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v6, v2, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    if-eqz v6, :cond_1

    check-cast v2, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->hasNotCompleted()Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController$27;->val$iconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v7

    if-eq v7, v3, :cond_2

    :goto_1
    invoke-virtual {v1, v0, v6, v4}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;Z)V

    instance-of v4, p3, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_0

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    const/16 v6, 0x9

    if-ge v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController$27;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController$27;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    check-cast p3, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return v5

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method
