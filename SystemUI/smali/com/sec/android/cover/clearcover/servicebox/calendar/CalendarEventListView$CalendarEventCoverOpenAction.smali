.class Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$CalendarEventCoverOpenAction;
.super Ljava/lang/Object;
.source "CalendarEventListView.java"

# interfaces
.implements Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarEventCoverOpenAction"
.end annotation


# instance fields
.field private mCalendarEventIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$CalendarEventCoverOpenAction;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$CalendarEventCoverOpenAction;->mCalendarEventIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getActionDescription()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$CalendarEventCoverOpenAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCoverOpened()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$CalendarEventCoverOpenAction;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$CalendarEventCoverOpenAction;->mCalendarEventIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendAppShouldOpen(Landroid/content/Intent;)V

    return-void
.end method
