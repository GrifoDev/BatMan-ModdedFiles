.class public Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;
.super Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
.source "ClockServiceBoxPageView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClocksWidget:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClearCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->onFinishInflate()V

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_clocks_widget:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;->mClocksWidget:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;->mClocksWidget:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;

    iget-boolean v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->setExpandedState(Z)V

    return-void
.end method

.method public setExpandState(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->setExpandState(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;->mClocksWidget:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;

    iget-boolean v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;->setExpandedState(Z)V

    return-void
.end method
