.class public Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;
.super Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;
.source "ClearCoverSingleVerticalClockWidget.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mIsCover2:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mMonthandDayShamsi:Landroid/widget/TextView;

.field private mPersianCalendarUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

.field private mTimeHours:Landroid/widget/TextView;

.field private mTimeMinutes:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-direct {v0, p1}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mPersianCalendarUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    :cond_0
    return-void
.end method

.method private setThemeFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTimeHours:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTimeMinutes:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getTTSMessage()Ljava/lang/CharSequence;
    .locals 6

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mPersianCalendarUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-virtual {v4}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;->getDateInPersianCalendar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mIs24HTime:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "kk:mm"

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v3, "h:mm"

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    sget v1, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mClockView:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/android/sviewcover/R$id;->digital_clock_time_hours:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTimeHours:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->digital_clock_time_minutes:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTimeMinutes:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->digital_month_day:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mMonthandDay:Landroid/widget/TextView;

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/sec/android/sviewcover/R$id;->digital_month_day_shamsi:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mMonthandDayShamsi:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mMonthandDayShamsi:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mIsCover2:Z

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mThemeFontPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->setThemeFontTypeFace(Landroid/graphics/Typeface;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->refreshClock()V

    return-void
.end method

.method protected onTimeChanged()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initClock() : TimeZone ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mIs24HTime:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "kk"

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mIsCover2:Z

    if-eqz v5, :cond_1

    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_1

    :try_start_0
    const-string/jumbo v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTimeHours:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const-string/jumbo v5, "mm"

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTimeMinutes:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    :cond_4
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mMonthandDay:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v5, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mMonthandDayShamsi:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mPersianCalendarUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-virtual {v6}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;->getDateInPersianCalendar()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->getTTSMessage()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v5, "ja_JP"

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "KK"

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_7
    const-string/jumbo v5, "hh"

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected refreshClock()V
    .locals 0

    return-void
.end method
