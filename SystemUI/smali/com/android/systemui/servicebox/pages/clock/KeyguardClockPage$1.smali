.class Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardClockPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get1(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get1(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get0(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get1(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get1(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get1(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get1(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get2(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get2(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onUpdateAdaptiveColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 2

    const-string/jumbo v0, "KeyguardClockPage"

    const-string/jumbo v1, "onUpdateAdaptiveColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-wrap0(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method
