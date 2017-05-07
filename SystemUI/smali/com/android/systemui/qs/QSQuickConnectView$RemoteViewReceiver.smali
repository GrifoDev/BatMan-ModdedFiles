.class Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QSQuickConnectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSQuickConnectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSQuickConnectView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSQuickConnectView;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.android.systemui.update_qs_remote_views"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "com.sec.android.systemui.UPDATE_REMOTE_VIEWS"

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "QSQuickConnectView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "COLLAPSED"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    const-string/jumbo v3, "EXPANDED"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    const-string/jumbo v3, "QSQuickConnectView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "collapsed ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",  expanded ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-static {v3}, Lcom/android/systemui/qs/QSQuickConnectView;->-get3(Lcom/android/systemui/qs/QSQuickConnectView;)Lcom/android/systemui/qs/QSQuickConnectView$State;

    move-result-object v3

    iput-object v1, v3, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-static {v3}, Lcom/android/systemui/qs/QSQuickConnectView;->-get3(Lcom/android/systemui/qs/QSQuickConnectView;)Lcom/android/systemui/qs/QSQuickConnectView$State;

    move-result-object v3

    iput-object v2, v3, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-static {v3}, Lcom/android/systemui/qs/QSQuickConnectView;->-get3(Lcom/android/systemui/qs/QSQuickConnectView;)Lcom/android/systemui/qs/QSQuickConnectView$State;

    move-result-object v5

    if-eqz v2, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, v5, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    iget-object v3, p0, Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-static {v3}, Lcom/android/systemui/qs/QSQuickConnectView;->-get0(Lcom/android/systemui/qs/QSQuickConnectView;)Lcom/android/systemui/qs/QSQuickConnectView$H;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSQuickConnectView$H;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-static {v3}, Lcom/android/systemui/qs/QSQuickConnectView;->-get0(Lcom/android/systemui/qs/QSQuickConnectView;)Lcom/android/systemui/qs/QSQuickConnectView$H;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-static {v5}, Lcom/android/systemui/qs/QSQuickConnectView;->-get0(Lcom/android/systemui/qs/QSQuickConnectView;)Lcom/android/systemui/qs/QSQuickConnectView$H;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-static {v6}, Lcom/android/systemui/qs/QSQuickConnectView;->-get3(Lcom/android/systemui/qs/QSQuickConnectView;)Lcom/android/systemui/qs/QSQuickConnectView$State;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/qs/QSQuickConnectView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSQuickConnectView$H;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
