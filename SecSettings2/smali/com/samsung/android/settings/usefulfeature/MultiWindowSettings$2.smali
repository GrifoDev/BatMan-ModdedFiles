.class Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "MultiWindowSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accessibility_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-wrap1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-wrap2(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-wrap1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-wrap2(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    goto :goto_1
.end method
