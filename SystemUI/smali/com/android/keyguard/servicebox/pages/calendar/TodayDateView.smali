.class public Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;
.super Landroid/widget/LinearLayout;
.source "TodayDateView.java"


# instance fields
.field private mDayView:Landroid/widget/TextView;

.field private mWeekDayView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initViews()V
    .locals 3

    sget v0, Lcom/android/keyguard/R$id;->servicebox_today_clock_day:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_today_clock_week_day:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    const-string/jumbo v1, "clock2017L"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->initViews()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->updateDay()V

    return-void
.end method

.method public updateDay()V
    .locals 6

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "d"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "EEEE"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->updateViewStyleOnWhiteWallpaper()V

    return-void
.end method

.method public updateViewStyleOnWhiteWallpaper()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    :cond_1
    return-void
.end method
