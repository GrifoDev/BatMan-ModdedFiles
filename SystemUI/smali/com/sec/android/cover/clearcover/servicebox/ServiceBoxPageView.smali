.class public abstract Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
.super Landroid/widget/FrameLayout;
.source "ServiceBoxPageView.java"


# instance fields
.field protected mIsExpanded:Z

.field protected mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getPageKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public setExpandState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->mIsExpanded:Z

    return-void
.end method

.method public setPageKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->mKey:Ljava/lang/String;

    return-void
.end method
