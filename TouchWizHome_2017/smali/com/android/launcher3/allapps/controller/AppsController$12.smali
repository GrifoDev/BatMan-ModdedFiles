.class Lcom/android/launcher3/allapps/controller/AppsController$12;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/item/ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->updateApps(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;

.field final synthetic val$folderIconsToRefresh:Ljava/util/ArrayList;

.field final synthetic val$folderInfosToSort:Ljava/util/ArrayList;

.field final synthetic val$isAlphabeticalMode:Z

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/HashSet;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$12;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsController$12;->val$updates:Ljava/util/HashSet;

    iput-boolean p3, p0, Lcom/android/launcher3/allapps/controller/AppsController$12;->val$isAlphabeticalMode:Z

    iput-object p4, p0, Lcom/android/launcher3/allapps/controller/AppsController$12;->val$folderInfosToSort:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/allapps/controller/AppsController$12;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    instance-of v7, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_0

    instance-of v7, p2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController$12;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v7, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/view/IconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v7, v3, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    if-eqz v7, :cond_1

    check-cast v3, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->hasNotCompleted()Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v7

    if-eq v7, v4, :cond_2

    :goto_1
    invoke-virtual {v2, v1, v5}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;Z)V

    instance-of v5, p3, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher3/allapps/controller/AppsController$12;->val$isAlphabeticalMode:Z

    if-eqz v5, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController$12;->val$folderInfosToSort:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController$12;->val$folderInfosToSort:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_2
    return v6

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    iget v5, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    const/16 v7, 0x9

    if-ge v5, v7, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController$12;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController$12;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    check-cast p3, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
