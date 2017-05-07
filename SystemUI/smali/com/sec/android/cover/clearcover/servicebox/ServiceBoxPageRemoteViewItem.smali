.class public Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageRemoteViewItem;
.super Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;
.source "ServiceBoxPageRemoteViewItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mServiceBoxRemoteViewsItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClearCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageRemoteViewItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageRemoteViewItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;-><init>(ILjava/lang/String;Z)V

    iput-object p4, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageRemoteViewItem;->mServiceBoxRemoteViewsItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    return-void
.end method


# virtual methods
.method public getPage(Landroid/content/Context;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getPage(Landroid/content/Context;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageRemoteViewItem;->mServiceBoxRemoteViewsItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->setRemoteViewItem(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    return-object v0
.end method

.method public updateServiceBoxItem(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageRemoteViewItem;->mServiceBoxRemoteViewsItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->copyFrom(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    return-void
.end method
