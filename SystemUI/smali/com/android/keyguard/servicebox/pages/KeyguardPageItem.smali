.class public Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
.super Ljava/lang/Object;
.source "KeyguardPageItem.java"


# instance fields
.field private mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

.field private mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

.field private mPackageName:Ljava/lang/String;

.field private mPageRes:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;ILcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;ILcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPageRes:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    iput-object p2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPageRes:I

    iput-object p4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageView(Landroid/content/Context;ZI)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPageRes:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "pageRes is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPageRes:I

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "page is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    instance-of v1, v0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "item is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->setItem(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-virtual {v0, v1, p2}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setServiceBoxController(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Z)V

    invoke-virtual {v0, p3, v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    return-object v0
.end method
