.class public Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;
.super Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
.source "CalendarServiceBoxPageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView$1;,
        Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDateView:Lcom/sec/android/cover/clearcover/servicebox/calendar/TodayDateView;

.field private mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

.field private mListRootView:Landroid/view/View;

.field private mListView:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

.field private mNoEventsView:Landroid/view/View;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->updateDate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->updateNoEventsLayout()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClearCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView$1;-><init>(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView$2;-><init>(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateDate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mDateView:Lcom/sec/android/cover/clearcover/servicebox/calendar/TodayDateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mDateView:Lcom/sec/android/cover/clearcover/servicebox/calendar/TodayDateView;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/TodayDateView;->updateDay()V

    :cond_0
    return-void
.end method

.method private updateNoEventsLayout()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getEventCnt()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mListRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mListRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mNoEventsView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mNoEventsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mNoEventsView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mNoEventsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mListRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mListRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected initViews()V
    .locals 1

    sget v0, Lcom/sec/android/sviewcover/R$id;->servicebox_event_list_root:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mListRootView:Landroid/view/View;

    sget v0, Lcom/sec/android/sviewcover/R$id;->servicebox_event_list:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mListView:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->servicebox_no_events:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mNoEventsView:Landroid/view/View;

    sget v0, Lcom/sec/android/sviewcover/R$id;->today_date_root:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/servicebox/calendar/TodayDateView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mDateView:Lcom/sec/android/cover/clearcover/servicebox/calendar/TodayDateView;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->addEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->updateDate()V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->updateNoEventsLayout()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->removeEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarServiceBoxPageView;->initViews()V

    return-void
.end method
