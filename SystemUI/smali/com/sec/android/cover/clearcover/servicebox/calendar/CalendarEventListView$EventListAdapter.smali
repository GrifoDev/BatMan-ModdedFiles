.class Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarEventListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventListAdapter"
.end annotation


# instance fields
.field mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEvent(I)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

    invoke-static {v4}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->-get0(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$layout;->clear_cover_servicebox_calendar_event_item:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v4, Lcom/sec/android/sviewcover/R$id;->servicebox_today_event_time:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->servicebox_today_event_title:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    if-eqz v0, :cond_3

    sget-object v4, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getView event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    sget-object v4, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting time view to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

    invoke-virtual {v6}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

    invoke-virtual {v4}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v3, :cond_3

    iget-object v2, v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

    invoke-virtual {v4}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$string;->servicebox_event_my_event:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    sget-object v4, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting title view to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-object p2
.end method
