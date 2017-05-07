.class Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardClockPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenThemeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-wrap3(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Z)V

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 7

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v4}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-wrap0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v4}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get1(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardRune;->canIgnoreNationalRoamingToShowSingleClock(Landroid/content/Context;)Z

    move-result v1

    const/4 v0, 0x0

    const-string/jumbo v4, "KeyguardClockPage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRefreshCarrierInfo(pre, now): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v6}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get4(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v4}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get4(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Z

    move-result v4

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v4, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-set2(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Z)Z

    const/4 v0, 0x1

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v4}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get3(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Z

    move-result v4

    if-eq v4, v1, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v4, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-set1(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Z)Z

    const/4 v0, 0x1

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v4}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get1(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v4}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get6(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v4, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-set4(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Ljava/util/Locale;)Ljava/util/Locale;

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v4}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-wrap2(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)V

    :cond_3
    return-void
.end method

.method public onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get1(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFMMLock()Z

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get1(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRMMEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get2(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Z

    move-result v3

    if-eq v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v3, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-set0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Z)Z

    const/4 v1, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get5(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Z

    move-result v3

    if-eq v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v3, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-set3(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Z)Z

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-wrap3(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Z)V

    :cond_2
    return-void
.end method
