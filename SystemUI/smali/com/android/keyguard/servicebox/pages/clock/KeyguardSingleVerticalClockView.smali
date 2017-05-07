.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSingleVerticalClockView.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

.field private mDateView:Lcom/android/keyguard/KeyguardTextClock;

.field private mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

.field private mTimeHourView:Landroid/widget/TextClock;

.field private mTimeMinView:Landroid/widget/TextClock;

.field private mTimeSet:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-direct {v0, p1}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    :cond_0
    return-void
.end method


# virtual methods
.method public changeHourFormat()V
    .locals 0

    return-void
.end method

.method public getClockCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public hangBackgroudImageOnTheClock()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->theme_single_textclock_bg_image_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->theme_textclock_bg_image:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_vertical_hour_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Landroid/widget/TextClock;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_vertical_min_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Landroid/widget/TextClock;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_vertical_date_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_time_set:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeSet:Landroid/widget/LinearLayout;

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_vertical_shamsi_date_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setElegantTextHeight(Z)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setElegantTextHeight(Z)V

    return-void
.end method

.method public refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    const-string/jumbo v12, ":"

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v12, v3

    const/4 v13, 0x1

    if-gt v12, v13, :cond_4

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    check-cast v12, Ljava/text/SimpleDateFormat;

    invoke-virtual {v12}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v8, "h"

    const/4 v9, 0x0

    :goto_0
    sget-object v12, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->HOUR_PATTERNS:[Ljava/lang/String;

    array-length v12, v12

    if-ge v9, v12, :cond_1

    sget-object v12, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->HOUR_PATTERNS:[Ljava/lang/String;

    aget-object v12, v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->HOUR_PATTERNS:[Ljava/lang/String;

    aget-object v8, v12, v9

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v11, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v11, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mm"

    :goto_1
    const-string/jumbo v12, "KK"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string/jumbo v12, "K"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "K"

    const-string/jumbo v13, "KK"

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_2
    array-length v12, v6

    const/4 v13, 0x1

    if-gt v12, v13, :cond_b

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    check-cast v12, Ljava/text/SimpleDateFormat;

    invoke-virtual {v12}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v8, "h"

    const/4 v9, 0x0

    :goto_3
    sget-object v12, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->HOUR_PATTERNS:[Ljava/lang/String;

    array-length v12, v12

    if-ge v9, v12, :cond_8

    sget-object v12, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->HOUR_PATTERNS:[Ljava/lang/String;

    aget-object v12, v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v12, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->HOUR_PATTERNS:[Ljava/lang/String;

    aget-object v8, v12, v9

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    aget-object v1, v3, v12

    const/4 v12, 0x1

    aget-object v2, v3, v12

    goto :goto_1

    :cond_5
    const-string/jumbo v12, "kk"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string/jumbo v12, "k"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, "k"

    const-string/jumbo v13, "kk"

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    const-string/jumbo v12, "HH"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string/jumbo v12, "H"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string/jumbo v12, "H"

    const-string/jumbo v13, "HH"

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    const-string/jumbo v12, "hh"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string/jumbo v12, "h"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string/jumbo v12, "h"

    const-string/jumbo v13, "hh"

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v11, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v11, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mm"

    :goto_4
    const-string/jumbo v12, "KK"

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    const-string/jumbo v12, "K"

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    const-string/jumbo v12, "K"

    const-string/jumbo v13, "KK"

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_9
    :goto_5
    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v12, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v12, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v12, v4}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v12, v5}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->updateContentDescription()V

    sget-boolean v12, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v13, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-virtual {v13}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;->getDateInPersianCalendar()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void

    :cond_b
    const/4 v12, 0x0

    aget-object v4, v6, v12

    const/4 v12, 0x1

    aget-object v5, v6, v12

    goto :goto_4

    :cond_c
    const-string/jumbo v12, "kk"

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d

    const-string/jumbo v12, "k"

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d

    const-string/jumbo v12, "k"

    const-string/jumbo v13, "kk"

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_d
    const-string/jumbo v12, "HH"

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    const-string/jumbo v12, "H"

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e

    const-string/jumbo v12, "H"

    const-string/jumbo v13, "HH"

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_e
    const-string/jumbo v12, "hh"

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string/jumbo v12, "h"

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string/jumbo v12, "h"

    const-string/jumbo v13, "hh"

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5
.end method

.method public setClockCacheKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setClockVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setVisibility(I)V

    return-void
.end method

.method public setCoverState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public setDateVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    return-void
.end method

.method public updateChildViewsLook()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/util/ViewStyleUtils$FontType;->Clock:Lcom/android/keyguard/util/ViewStyleUtils$FontType;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Landroid/widget/TextClock;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Landroid/widget/TextClock;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateFontTypeface(Lcom/android/keyguard/util/ViewStyleUtils$FontType;[Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v5}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    return-void
.end method

.method protected updateContentDescription()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeSet:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
