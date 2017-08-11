.class Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;
.super Landroid/content/BroadcastReceiver;
.source "QuickStatusBarHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->registerBadgeCountUpdateReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "com.sec.intent.action.BADGE_COUNT_UPDATE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get4(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getExpandedState()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get1(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->unregisterBadgeCountUpdateReceiver()V

    return-void

    :cond_0
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v0, "com.android.settings.Settings"

    const-string/jumbo v5, "badge_count_package_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "badge_count_class_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "com.android.settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "com.android.settings.Settings"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/os/AsyncTask;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/os/AsyncTask;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/os/AsyncTask;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    const-string/jumbo v6, "badge_count"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-set1(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;I)I

    const-string/jumbo v5, "QuickStatusBarHeader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BadgeCountUpdateReceiver getSettingsBadgeCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get7(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateBadgeState()V

    :cond_2
    return-void
.end method
