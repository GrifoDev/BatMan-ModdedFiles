.class Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView$2;
.super Ljava/lang/Object;
.source "CalendarServiceBoxPageView.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;


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

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView$2;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView$2;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->-wrap0(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView$2;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->-wrap1(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;)V

    return-void
.end method
