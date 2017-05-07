.class public Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;
.super Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
.source "CalendarEventPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$1;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mDateView:Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;

.field private mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

.field private mHolder:Landroid/widget/FrameLayout;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mInformationAreaView:Landroid/view/View;

.field private mListRootView:Landroid/view/View;

.field private mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

.field private mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->updateDate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->updateListViewLayout()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->updateNoEventsLayout()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$1;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$2;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    return-void
.end method

.method private init()V
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->servicebox_today_page_holder:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mHolder:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static launchBaseApplication(Landroid/content/Context;Lcom/android/keyguard/servicebox/KeyguardStatusCallback;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "time"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {p1, v1, v4}, Lcom/android/keyguard/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateDate()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->updateDay()V

    :cond_0
    return-void
.end method

.method private updateListViewLayout()V
    .locals 5

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mIsMKeyboardConnected:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getEventCnt()I

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->servicebox_today_event_3_item_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->servicebox_today_event_1_item_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->servicebox_today_event_2_item_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNoEventsLayout()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mIsMKeyboardConnected:Z

    if-eqz v1, :cond_0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getEventCnt()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->updateViewStyleOnWhiteWallpaper()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateViewStyleOnWhiteWallpaper()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->updateViewStyleOnWhiteWallpaper()V

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    sget v1, Lcom/android/keyguard/R$drawable;->servicebox_today_no_event_ripple_dark:I

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void

    :cond_1
    sget v1, Lcom/android/keyguard/R$drawable;->servicebox_today_no_event_ripple:I

    goto :goto_0
.end method

.method private updateViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->updateViews()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected closeWindow()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->setOutOfBoundItemsVisibility(Landroid/graphics/Rect;I)V

    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->closeWindow()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DP Touch up start service box"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->showServiceBox()V

    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected getContentsView(I)Landroid/view/View;
    .locals 3

    sget v0, Lcom/android/keyguard/R$layout;->servicebox_today_main_small:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :pswitch_0
    sget v0, Lcom/android/keyguard/R$layout;->servicebox_today_main_big:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/keyguard/R$layout;->servicebox_today_main_expand:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "servicebox_calendar"

    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->servicebox_event_information_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->servicebox_event_list_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->servicebox_event_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->getStatusCallback()Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->setStatusCallback(Lcom/android/keyguard/servicebox/KeyguardStatusCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->servicebox_no_events:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->getStatusCallback()Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarNoEventView;->setStatusCallback(Lcom/android/keyguard/servicebox/KeyguardStatusCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->servicebox_today_clock_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->updateNoEventsLayout()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->updateListViewLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->addEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->updateDate()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->updateViews()V

    invoke-super {p0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->removeEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->init()V

    return-void
.end method

.method protected prepareTransition(Lcom/android/keyguard/servicebox/utils/SecTransition;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "servicebox_event_list"

    new-instance v1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-direct {v1}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setClipFace(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    return-void
.end method

.method public refreshViews()V
    .locals 0

    return-void
.end method

.method public updateChildViewsLook()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->updateViewStyleOnWhiteWallpaper()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->updateViewStyleOnWhiteWallpaper()V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->updateViewStyleOnWhiteWallpaper()V

    return-void
.end method
