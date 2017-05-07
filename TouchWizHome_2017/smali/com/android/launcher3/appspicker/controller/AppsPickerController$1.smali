.class Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;
.super Ljava/lang/Object;
.source "AppsPickerController.java"

# interfaces
.implements Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addResultApps()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$100(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFilteredAppsList()Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->addResultApps(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Ljava/util/List;)V

    return-void
.end method

.method public getItem(Landroid/content/ComponentName;Z)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 4

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
    invoke-static {v2}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$100(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    if-ne v0, v3, :cond_0

    :goto_1
    return-object v1

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getItem(Ljava/lang/String;Z)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 7

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
    invoke-static {v2}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$100(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    if-ne v0, v3, :cond_0

    const-string v3, "\\s"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    return-object v1

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSearchResultListCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$100(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFilteredAppsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$100(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFilteredAppsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$100(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFilteredAppsList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    goto :goto_0
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Text"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Text"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->setSearchText(Ljava/lang/String;)Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v2, "AppName"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v2, "AppName"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->setSearchText(Ljava/lang/String;)Z

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSearchText(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;
    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;
    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSearchText(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
