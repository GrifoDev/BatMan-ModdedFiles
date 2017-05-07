.class Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$2;
.super Ljava/lang/Object;
.source "CalendarEventListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->updateCalendarInfo(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

.field final synthetic val$calendarEventIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$2;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

    iput-object p2, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$2;->val$calendarEventIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$CalendarEventCoverOpenAction;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$2;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$2;->val$calendarEventIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$CalendarEventCoverOpenAction;-><init>(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$2;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverOpenActionManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverOpenActionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/manager/CoverOpenActionManager;->setCoverOpenAction(Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$2;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_view_detail:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    return-void
.end method
