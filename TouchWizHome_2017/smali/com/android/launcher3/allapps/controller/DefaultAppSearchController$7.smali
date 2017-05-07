.class Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e00ee

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    # getter for: Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->chooseViewType()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e00f2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    # getter for: Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->startContactUs()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e00f3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    # getter for: Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->onOptionSelectedSearchRecommend()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e00ef

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    # getter for: Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->prepareTidedUpPages()V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e00f4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    # getter for: Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchView()Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setClearRecentAppList()V

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e00f0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    # getter for: Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->startHomeSetting()V

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e00f1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    # getter for: Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->startGalaxyEssentials()V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method
