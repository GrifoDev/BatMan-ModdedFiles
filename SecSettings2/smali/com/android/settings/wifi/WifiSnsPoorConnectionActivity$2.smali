.class Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;
.super Ljava/lang/Object;
.source "WifiSnsPoorConnectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->showSnsPoorConnectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "WifiSnsPoorConnectionActivity"

    const-string/jumbo v3, "CANCEL pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->-get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->-get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string/jumbo v2, "POOR_DIALOG_AGG"

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->finish()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string/jumbo v2, "POOR_DIALOG_ON"

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string/jumbo v2, "POOR_DIALOG_OFF"

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_1
.end method
