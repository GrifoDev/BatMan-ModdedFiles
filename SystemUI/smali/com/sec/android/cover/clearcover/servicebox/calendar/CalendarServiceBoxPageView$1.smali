.class Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CalendarServiceBoxPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView$1;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 2

    invoke-static {}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onTimeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView$1;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->-wrap0(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;)V

    return-void
.end method
