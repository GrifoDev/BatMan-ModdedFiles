.class public Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;
.super Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
.source "ServiceBoxAlarmPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final CLOCK_FORMAT_12_SKEL:Ljava/lang/String;

.field private final CLOCK_FORMAT_24_SKEL:Ljava/lang/String;

.field private mAlarmClickListener:Landroid/view/View$OnClickListener;

.field private mAlarmHolder:Landroid/widget/FrameLayout;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAmpmLeftView:Landroid/widget/TextView;

.field private mAmpmRightView:Landroid/widget/TextView;

.field private mDowView:Landroid/widget/TextView;

.field private mNextAlarmView:Landroid/widget/TextView;

.field private mNoAlarmView:Landroid/widget/TextView;

.field private mTimeContainerView:Landroid/view/View;

.field private mTimeView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;)Lcom/android/keyguard/servicebox/KeyguardStatusCallback;
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->getKeyguardStatusCallback()Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage$1;-><init>(Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAlarmClickListener:Landroid/view/View$OnClickListener;

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->clock_12hr_format:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->CLOCK_FORMAT_12_SKEL:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->clock_24hr_format:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->CLOCK_FORMAT_24_SKEL:Ljava/lang/String;

    return-void
.end method

.method private getTimeByFormat(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p3, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 18

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeContainerView:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNoAlarmView:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v15, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "refreshAlarmStatus() alarm is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v16, 0x240c8400

    add-long v16, v16, v6

    cmp-long v15, v2, v16

    if-gtz v15, :cond_1

    const/4 v5, 0x1

    :goto_0
    sget-object v15, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "refreshAlarmStatus() beforeOneWeek = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", alarmTime = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", currentTime = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v16

    invoke-static/range {v15 .. v16}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v11

    const-string/jumbo v15, "EEE,"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v15}, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->getTimeByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->CLOCK_FORMAT_24_SKEL:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v15, "a"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v12}, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->getTimeByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v4, ""

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmLeftView:Landroid/widget/TextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmRightView:Landroid/widget/TextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mDowView:Landroid/widget/TextView;

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmLeftView:Landroid/widget/TextView;

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmRightView:Landroid/widget/TextView;

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeContainerView:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNoAlarmView:Landroid/widget/TextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v15, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "refreshAlarmStatus() alarm = ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "], is24Hour = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->CLOCK_FORMAT_12_SKEL:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v15, "a"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v15}, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->getTimeByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    const-string/jumbo v16, "hma"

    invoke-static/range {v15 .. v16}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmLeftView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v14, :cond_4

    const/4 v15, 0x0

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmRightView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v14, :cond_5

    const/16 v15, 0x8

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    const/16 v15, 0x8

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeContainerView:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNoAlarmView:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v15, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "refreshAlarmStatus() there is no alarm in next 7 days"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method protected getContentsView(I)Landroid/view/View;
    .locals 3

    sget v0, Lcom/android/keyguard/R$layout;->servicebox_alarm_page_small:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :pswitch_0
    sget v0, Lcom/android/keyguard/R$layout;->servicebox_alarm_page_expand:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAlarmHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "servicebox_alarm"

    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->servicebox_alarm_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNextAlarmView:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_alarm_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeView:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_alarm_time_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeContainerView:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_alarm_no_alarm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNoAlarmView:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_alarm_dow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mDowView:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_alarm_ampm_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmLeftView:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_alarm_ampm_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmRightView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->refreshViews()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->updateChildViewsLook()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->refreshViews()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    sget v0, Lcom/android/keyguard/R$id;->servicebox_alarm_page_holder:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAlarmHolder:Landroid/widget/FrameLayout;

    return-void
.end method

.method public refreshViews()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V

    return-void
.end method

.method public updateChildViewsLook()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNextAlarmView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mDowView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmLeftView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mAmpmRightView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/alarm/ServiceBoxAlarmPage;->mNoAlarmView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    return-void
.end method
