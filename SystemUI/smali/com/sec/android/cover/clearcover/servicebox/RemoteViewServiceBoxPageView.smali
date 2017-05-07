.class public Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;
.super Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
.source "RemoteViewServiceBoxPageView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAttachedToWindow:Z

.field private mRemoteViewItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

.field private mRemoteViewRoot:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClearCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->mAttachedToWindow:Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->mAttachedToWindow:Z

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->refreshRemoteView()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->mAttachedToWindow:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->onFinishInflate()V

    sget v0, Lcom/sec/android/sviewcover/R$id;->servicebox_remote_view_root:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->mRemoteViewRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method public refreshRemoteView()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->mRemoteViewRoot:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "refreshRemoteView, root view null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->mRemoteViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-boolean v1, p0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->mAttachedToWindow:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->mRemoteViewItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->mRemoteViewRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->mRemoteViewItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v2, v2, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error inflating RemoteViews"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRemoteViewItem(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->mRemoteViewItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->refreshRemoteView()V

    return-void
.end method
