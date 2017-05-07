.class public Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;
.super Ljava/lang/Object;
.source "FolderProxyCallbacksImpl.java"

# interfaces
.implements Lcom/android/launcher3/proxy/FolderProxyCallbacks;


# instance fields
.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/controller/FolderController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    return-void
.end method


# virtual methods
.method public addFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_0
    return-void
.end method

.method public changeBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->setIconBackgroundColor(I)V

    return-void
.end method

.method public changeTitle(Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->onTitleChanged(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getEditTextRegion()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    return-void
.end method

.method public getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getItemViewByComponentName(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewByComponentName(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->findIconView(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/base/view/PagedView;->findIconViews(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    instance-of v4, v1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method public getPagedView()Lcom/android/launcher3/common/base/view/PagedView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    goto :goto_0
.end method

.method public movePage(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0

    return-void
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Text"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->changeTitle(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openBackgroundColorView()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->toggleColorPicker()V

    :cond_0
    return-void
.end method

.method public removeFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_1
    return-void
.end method

.method public selectItem(Lcom/android/launcher3/common/view/IconView;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/controller/FolderController;->onCheckedChanged(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public unSelectItem(Lcom/android/launcher3/common/view/IconView;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/controller/FolderController;->onCheckedChanged(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
