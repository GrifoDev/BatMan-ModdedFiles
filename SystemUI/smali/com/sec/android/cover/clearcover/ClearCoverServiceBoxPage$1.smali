.class Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverServiceBoxPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get4(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get0()[Landroid/net/Uri;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get0()[Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get0()[Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get0()[Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "URI changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2, v5}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap6(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get0()[Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_aod_servicebox_page"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Page changed. New page="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " current page key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v4}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap0(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " current page id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v4}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get9(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-virtual {v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2, v1, v6, v5}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap9(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get0()[Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap1(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onChanged() page order = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get5(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onChanged() page order = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-set3(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2, v5}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap6(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)V

    goto/16 :goto_0
.end method

.method public onEmergencyStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap6(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap6(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)V

    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap6(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)V

    return-void
.end method

.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 4

    iget-object v0, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoteViewUpdated : Type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-virtual {v1, p1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->updateRemoteViewContainerVisibility(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get6(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;->setScreenTurnedOn(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-set2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)Z

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap10(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap7(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get6(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;->setScreenTurnedOn(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-set2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)Z

    return-void
.end method

.method public onUserSwitched(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap6(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)V

    return-void
.end method
