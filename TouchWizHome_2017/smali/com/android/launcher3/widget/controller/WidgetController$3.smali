.class Lcom/android/launcher3/widget/controller/WidgetController$3;
.super Ljava/lang/Object;
.source "WidgetController.java"

# interfaces
.implements Lcom/android/launcher3/proxy/WidgetProxyCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/controller/WidgetController;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/controller/WidgetController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/controller/WidgetController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findWidgetItemInList(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v3, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v3, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findWidgetItemInList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v4, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v4, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/4 v2, 0x0

    iget-object v4, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public enterSearchState()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$800(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-interface {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    return-void
.end method

.method public enterUninstallState()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$800(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-interface {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    return-void
.end method

.method public getWidgetItemsInfoByComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v3}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1200(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/model/WidgetLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/widget/model/WidgetLoader;->getWidgetItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher3/widget/controller/WidgetController$3;->findWidgetItemInList(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getWidgetItemsInfoByTitle(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v3}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1200(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/model/WidgetLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/widget/model/WidgetLoader;->getWidgetItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher3/widget/controller/WidgetController$3;->findWidgetItemInList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getWidgetResultItem()Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v2}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getDisplayItemCount()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v2}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getDisplayItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Text"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$900(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Text"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/controller/WidgetState;->onVoiceSearch(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public search(Ljava/lang/String;)I
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$900(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/widget/controller/WidgetState;->onVoiceSearch(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getDisplayItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getDisplayItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getDisplayItemCount()I

    move-result v1

    goto :goto_0
.end method

.method public uninstallWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1000(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->uninstallable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1100(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/UninstallAppUtils;->startUninstallActivity(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method
