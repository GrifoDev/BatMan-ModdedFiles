.class public abstract Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;
.super Landroid/widget/LinearLayout;
.source "ClearCoverBaseClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$1;,
        Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;
    }
.end annotation


# instance fields
.field private final MSG_CLOCK_UPDATE:I

.field protected final TAG:Ljava/lang/String;

.field private mClockHandler:Landroid/os/Handler;

.field protected mDatePattern:Ljava/lang/CharSequence;

.field protected mIs24HTime:Z

.field protected mTTSDatePattern:Ljava/lang/CharSequence;

.field protected mThemeFontPath:Ljava/lang/String;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onThemeFontChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mIs24HTime:Z

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mThemeFontPath:Ljava/lang/String;

    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->MSG_CLOCK_UPDATE:I

    new-instance v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$1;-><init>(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mClockHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;-><init>(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    return-void
.end method

.method private onThemeFontChanged(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_ELASTIC_PLUGIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/cover/CoverUtils;->setClockFontPath(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mThemeFontPath:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getTTSMessage()Ljava/lang/CharSequence;
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mIs24HTime:Z

    sget-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_ELASTIC_PLUGIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->getClockFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mThemeFontPath:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onTimeChanged()V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->refreshClock()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->getTTSMessage()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected abstract onTimeChanged()V
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onTimeChanged()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected abstract refreshClock()V
.end method
