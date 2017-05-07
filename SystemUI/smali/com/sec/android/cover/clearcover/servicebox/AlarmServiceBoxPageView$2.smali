.class Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "AlarmServiceBoxPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$2;->this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$2;->this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->-wrap1(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)V

    :cond_0
    return-void
.end method

.method public onDateFormatChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$2;->this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->-wrap1(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$2;->this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->-wrap1(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)V

    return-void
.end method

.method public onUserSwitched(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$2;->this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->-wrap1(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)V

    return-void
.end method
