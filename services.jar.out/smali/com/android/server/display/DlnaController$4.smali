.class Lcom/android/server/display/DlnaController$4;
.super Ljava/lang/Object;
.source "DlnaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DlnaController;->handleSendNotificationStatusChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DlnaController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DlnaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DlnaController$4;->this$0:Lcom/android/server/display/DlnaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DlnaController$4;->this$0:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DlnaController$4;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v0}, Lcom/android/server/display/DlnaController;->-wrap1(Lcom/android/server/display/DlnaController;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DlnaController$4;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v0}, Lcom/android/server/display/DlnaController;->-get4(Lcom/android/server/display/DlnaController;)Landroid/app/NotificationManager;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const v3, 0x1040b1e

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method
