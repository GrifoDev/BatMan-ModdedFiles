.class Lcom/samsung/android/settings/guide/WifiHelpPage$1;
.super Ljava/lang/Object;
.source "WifiHelpPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/guide/WifiHelpPage;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/guide/WifiHelpPage;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/guide/WifiHelpPage;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/guide/WifiHelpPage$1;->this$0:Lcom/samsung/android/settings/guide/WifiHelpPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v5, p0, Lcom/samsung/android/settings/guide/WifiHelpPage$1;->this$0:Lcom/samsung/android/settings/guide/WifiHelpPage;

    iget-boolean v5, v5, Lcom/samsung/android/settings/guide/WifiHelpPage;->isClicked:Z

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/guide/WifiHelpPage$1;->this$0:Lcom/samsung/android/settings/guide/WifiHelpPage;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/samsung/android/settings/guide/WifiHelpPage;->isClicked:Z

    const-string/jumbo v5, "WiFiConnectPage-Settings"

    const-string/jumbo v6, "onClick() is called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "feature"

    const-string/jumbo v6, "WHLP"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "extra"

    const-string/jumbo v6, "WIFI_HELP_START"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/guide/WifiHelpPage$1;->this$0:Lcom/samsung/android/settings/guide/WifiHelpPage;

    invoke-virtual {v5}, Lcom/samsung/android/settings/guide/WifiHelpPage;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "settings:guide_mode"

    const-string/jumbo v6, "wifi"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v5, 0x8000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/guide/WifiHelpPage$1;->this$0:Lcom/samsung/android/settings/guide/WifiHelpPage;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/guide/WifiHelpPage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
