.class Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$3;
.super Landroid/content/BroadcastReceiver;
.source "TaskBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->registerReceiverAndObserverAsUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get3(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "com.sec.intent.extra.PROMOTION_BANNER_REMOTEVIEW"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    const-string/jumbo v6, "com.sec.intent.extra.PROMOTION_BANNER_REQUESTER"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "com.sec.intent.action.SHOW_PROMOTION_BANNER_ON_APPS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get3(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showKnoxDesktopAppsBanner(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v6, "com.sec.intent.action.HIDE_PROMOTION_BANNER_ON_APPS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get3(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->hideKnoxDesktopAppsBanner(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "com.sec.intent.action.UNINSTALL_APPLIST"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get3(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getAllAppsLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "com.sec.intent.extra.UNINSTALL_APPLIST_TITLE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "com.sec.intent.extra.UNINSTALL_APPLIST_COMPONENT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v6, "com.sec.intent.extra.UNINSTALL_APPLIST_USER"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v6, v7, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "appList and userList do not have same size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->-get3(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getAllAppsLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    move-result-object v6

    invoke-virtual {v6, v4, v1, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->callUninstallDialogForList(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
