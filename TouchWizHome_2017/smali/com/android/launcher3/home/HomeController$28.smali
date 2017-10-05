.class Lcom/android/launcher3/home/HomeController$28;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/item/ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->updateBadgeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$28;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeController$28;->val$updates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$28;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$28;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$28;->this$0:Lcom/android/launcher3/home/HomeController;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$28;->this$0:Lcom/android/launcher3/home/HomeController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    :cond_1
    instance-of v1, p3, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_2

    check-cast p3, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {p3}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    :cond_2
    const/4 v1, 0x0

    return v1
.end method
