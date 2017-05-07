.class Lcom/android/launcher3/allapps/controller/AppsController$11;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/item/ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->disableAppsItemByPackageName(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;

.field final synthetic val$disabledPackages:Ljava/lang/String;

.field final synthetic val$folderIconsToRefresh:Ljava/util/ArrayList;

.field final synthetic val$reason:I

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;ILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->val$disabledPackages:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput p4, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->val$reason:I

    iput-object p5, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    instance-of v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->val$disabledPackages:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, p2

    instance-of v3, v2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    iget v4, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->val$reason:I

    or-int/2addr v3, v4

    iput v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    check-cast v2, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    instance-of v3, p3, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    check-cast p3, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
