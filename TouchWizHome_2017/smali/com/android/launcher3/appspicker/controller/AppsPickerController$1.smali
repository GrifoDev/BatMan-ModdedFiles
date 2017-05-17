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

.method public getItem(Landroid/content/ComponentName;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$100(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(Ljava/lang/String;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 6

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    # getter for: Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$100(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    const-string v2, "\\s"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
