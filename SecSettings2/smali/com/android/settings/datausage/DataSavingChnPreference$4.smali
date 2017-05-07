.class Lcom/android/settings/datausage/DataSavingChnPreference$4;
.super Ljava/lang/Object;
.source "DataSavingChnPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataSavingChnPreference;->updateEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSavingChnPreference;Landroid/net/wifi/WifiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$4;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    iput-object p2, p0, Lcom/android/settings/datausage/DataSavingChnPreference$4;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$4;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$4;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$4;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->-get0(Lcom/android/settings/datausage/DataSavingChnPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$4;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$4;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSavingChnPreference;->setEnabled(Z)V

    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, "updateEnabled(),data compression on pause as WIFI connected/WIFI ap enabled /Mobile network diabled/Tethering."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$4;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSavingChnPreference;->setEnabled(Z)V

    goto :goto_0
.end method
