.class Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ClearCoverServiceBoxPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get3(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-set0(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;I)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap6(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)V

    :cond_0
    return-void
.end method

.method public onUpdateServiceBoxRemoteViews(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap4(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    return-void
.end method
