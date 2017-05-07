.class public Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;
.super Landroid/widget/LinearLayout;
.source "CalendarEventListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$1;,
        Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$CalendarEventCoverOpenAction;,
        Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;,
        Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;

.field private mAlreadyUpdated:Z

.field private mCalenderInfoUpdateCompleteListener:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;

.field private mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClearCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mAlreadyUpdated:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$1;-><init>(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->addEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->updateCalendarInfo()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->removeEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public updateCalendarInfo()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getCachedEvents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->updateCalendarInfo(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateCalendarInfo(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v6, 0x0

    :try_start_0
    iput-boolean v6, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mAlreadyUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    if-nez p1, :cond_0

    sget-object v5, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "There\'s no event"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v5, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;

    invoke-direct {v5, p0, p1}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;-><init>(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mAdapter:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->removeAllViews()V

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mAdapter:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;

    invoke-virtual {v5}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mAdapter:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;

    invoke-virtual {v5, v2, v7, v7}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mAdapter:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;

    invoke-virtual {v5, v2}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$EventListAdapter;->getEvent(I)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->getCalendarActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    new-instance v5, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$2;

    invoke-direct {v5, p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$2;-><init>(Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;Landroid/content/Intent;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {p0, v3, v5, v6}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->addView(Landroid/view/View;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    const/4 v4, 0x3

    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1, v8, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mCalenderInfoUpdateCompleteListener:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mCalenderInfoUpdateCompleteListener:Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;

    invoke-interface {v5}, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;->onCompleted()V

    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/cover/clearcover/servicebox/calendar/CalendarEventListView;->mAlreadyUpdated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v6

    return-void

    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5
.end method
