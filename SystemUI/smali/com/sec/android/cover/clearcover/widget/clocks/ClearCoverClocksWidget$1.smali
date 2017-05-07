.class Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverClocksWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dualclock_menu_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DualClockSettingObserver.onChagne : DualClockSetting changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->-wrap0(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;)V

    :cond_0
    return-void
.end method

.method public onRoamingStateChanged(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRoamingStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->-wrap0(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;)V

    return-void
.end method
