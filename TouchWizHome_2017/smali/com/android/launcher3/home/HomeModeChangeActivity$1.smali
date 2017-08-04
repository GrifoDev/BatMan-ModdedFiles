.class Lcom/android/launcher3/home/HomeModeChangeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "HomeModeChangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeModeChangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeModeChangeActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeModeChangeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity$1;->this$0:Lcom/android/launcher3/home/HomeModeChangeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.android.launcher.action.CHANGE_HOMEONLYMODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/home/HomeModeChangeActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.launcher.action.CHANGE_HOMEONLYMODE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "homeOnlyeMode"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity$1;->this$0:Lcom/android/launcher3/home/HomeModeChangeActivity;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->access$100(Lcom/android/launcher3/home/HomeModeChangeActivity;Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity$1;->this$0:Lcom/android/launcher3/home/HomeModeChangeActivity;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->access$200(Lcom/android/launcher3/home/HomeModeChangeActivity;)V

    goto :goto_0
.end method
