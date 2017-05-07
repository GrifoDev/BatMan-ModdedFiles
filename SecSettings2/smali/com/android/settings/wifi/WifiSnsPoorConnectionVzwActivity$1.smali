.class Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$1;
.super Ljava/lang/Object;
.source "WifiSnsPoorConnectionVzwActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    const-string/jumbo v2, "WifiSnsPoorConnectionVzwActivity"

    const-string/jumbo v3, "Ok pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->finish()V

    return-void

    :cond_2
    const/4 v2, -0x2

    if-ne p2, v2, :cond_1

    const-string/jumbo v2, "WifiSnsPoorConnectionVzwActivity"

    const-string/jumbo v3, "go settings pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->-get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiSnsPoorConnectionVzwActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
