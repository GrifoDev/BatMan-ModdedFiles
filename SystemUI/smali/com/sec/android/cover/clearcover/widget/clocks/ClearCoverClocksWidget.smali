.class public Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;
.super Landroid/widget/LinearLayout;
.source "ClearCoverClocksWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$1;,
        Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$2;,
        Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;
    }
.end annotation


# static fields
.field private static final synthetic -com-sec-android-cover-clearcover-widget-clocks-ClearCoverClocksWidget$ClockTypeSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClockHolder:Landroid/view/ViewGroup;

.field private mCurrentClockType:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

.field private mCurrentClockWidget:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

.field private mExpanded:Z

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getcom-sec-android-cover-clearcover-widget-clocks-ClearCoverClocksWidget$ClockTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->-com-sec-android-cover-clearcover-widget-clocks-ClearCoverClocksWidget$ClockTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->-com-sec-android-cover-clearcover-widget-clocks-ClearCoverClocksWidget$ClockTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->values()[Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->Dual:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->Single:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->SingleVertical:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->-com-sec-android-cover-clearcover-widget-clocks-ClearCoverClocksWidget$ClockTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->setClockVisibility()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mExpanded:Z

    new-instance v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$1;-><init>(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$2;-><init>(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setClockVisibility()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->updateClockType()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mCurrentClockWidget:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setClockVisibility: inflate new clock for type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mCurrentClockType:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-static {}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->-getcom-sec-android-cover-clearcover-widget-clocks-ClearCoverClocksWidget$ClockTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mCurrentClockType:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    invoke-virtual {v2}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$layout;->clear_cover_single_clock_widget:I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mClockHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mClockHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mClockHolder:Landroid/view/ViewGroup;

    sget v2, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mCurrentClockWidget:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mCurrentClockWidget:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :goto_1
    return-void

    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$layout;->clear_cover_dual_clock_widget:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$layout;->clear_cover_single_vertical_clock_widget:I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setClockVisibility: No need to inflate clock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateClockType()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string/jumbo v4, "dualclock_menu_settings"

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/CoverUtils;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->Dual:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    :goto_1
    sget-object v3, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateClockType: currentType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mCurrentClockType:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " newType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mCurrentClockType:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    if-eq v2, v3, :cond_3

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mCurrentClockType:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    return v7

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v3, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_SERVICE_BOX:Z

    if-eqz v3, :cond_2

    sget-object v2, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->SingleVertical:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->Single:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    goto :goto_1

    :cond_3
    return v6
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->setClockVisibility()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$layout;->clear_cover_clocks_widget:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_clock_root:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mClockHolder:Landroid/view/ViewGroup;

    return-void
.end method

.method public setExpandedState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->mExpanded:Z

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->setClockVisibility()V

    return-void
.end method
