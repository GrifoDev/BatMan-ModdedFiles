.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSingleClockView.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;
    }
.end annotation


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

.field private mDateView:Lcom/android/keyguard/KeyguardTextClock;

.field private mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

.field private mTimeColonView:Landroid/widget/TextClock;

.field private mTimeHourView:Landroid/widget/TextClock;

.field private mTimeMinView:Landroid/widget/TextClock;

.field private mTimeSet:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->observe()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-direct {v0, p1}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    :cond_0
    return-void
.end method

.method static synthetic access$001(Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public changeHourFormat()V
    .locals 0

    return-void
.end method

.method public getClockCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public hangBackgroudImageOnTheClock()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->theme_single_textclock_bg_image_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->theme_textclock_bg_image:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_time_hour_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Landroid/widget/TextClock;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_time_colon_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Landroid/widget/TextClock;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_time_min_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Landroid/widget/TextClock;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_date_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_time_set:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeSet:Landroid/widget/LinearLayout;

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_shamsi_date_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setElegantTextHeight(Z)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Landroid/widget/TextClock;

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setElegantTextHeight(Z)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setElegantTextHeight(Z)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Landroid/widget/TextClock;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    const-string/jumbo v2, "sec-roboto-condensed"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardTextClock;->setAllCaps(Z)V

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    const-string/jumbo v2, "sec-roboto-condensed"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardTextView;->setAllCaps(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Landroid/widget/TextClock;

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Landroid/widget/TextClock;

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-nez v1, :cond_2

    sget v1, Lcom/android/keyguard/R$id;->keyguard_single_time_set:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v1, v3}, Landroid/widget/TextClock;->setTransitionName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Landroid/widget/TextClock;

    invoke-virtual {v1, v3}, Landroid/widget/TextClock;->setTransitionName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v1, v3}, Landroid/widget/TextClock;->setTransitionName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardTextClock;->setTransitionName(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardTextView;->setTransitionName(Ljava/lang/String;)V

    :cond_2
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

    if-gt v12, v13, :cond_3

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

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
    sget-object v12, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HOUR_PATTERNS:[Ljava/lang/String;

    array-length v12, v12

    if-ge v9, v12, :cond_1

    sget-object v12, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HOUR_PATTERNS:[Ljava/lang/String;

    aget-object v12, v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HOUR_PATTERNS:[Ljava/lang/String;

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
    array-length v12, v6

    const/4 v13, 0x1

    if-gt v12, v13, :cond_6

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    check-cast v12, Ljava/text/SimpleDateFormat;

    invoke-virtual {v12}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v8, "h"

    const/4 v9, 0x0

    :goto_2
    sget-object v12, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HOUR_PATTERNS:[Ljava/lang/String;

    array-length v12, v12

    if-ge v9, v12, :cond_4

    sget-object v12, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HOUR_PATTERNS:[Ljava/lang/String;

    aget-object v12, v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    sget-object v12, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HOUR_PATTERNS:[Ljava/lang/String;

    aget-object v8, v12, v9

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    aget-object v1, v3, v12

    const/4 v12, 0x1

    aget-object v2, v3, v12

    goto :goto_1

    :cond_4
    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v11, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v11, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mm"

    :goto_3
    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v12, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v12, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v12, v4}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v12, v5}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->updateContentDescription()V

    sget-boolean v12, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v13, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-virtual {v13}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;->getDateInPersianCalendar()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    :cond_6
    const/4 v12, 0x0

    aget-object v4, v6, v12

    const/4 v12, 0x1

    aget-object v5, v6, v12

    goto :goto_3
.end method

.method public setClockCacheKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setClockVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setVisibility(I)V

    return-void
.end method

.method public setCoverState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public setDateVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    return-void
.end method

.method public updateChildViewsLook()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/util/ViewStyleUtils$FontType;->Clock:Lcom/android/keyguard/util/ViewStyleUtils$FontType;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Landroid/widget/TextClock;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Landroid/widget/TextClock;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Landroid/widget/TextClock;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateFontTypeface(Lcom/android/keyguard/util/ViewStyleUtils$FontType;[Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1, v5}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1, v5}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1, v5}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v6}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    return-void
.end method

.method protected updateContentDescription()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeSet:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
