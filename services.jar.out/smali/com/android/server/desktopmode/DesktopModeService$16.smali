.class Lcom/android/server/desktopmode/DesktopModeService$16;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->createLaunchConfirmationDialog(ZZ)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;

.field final synthetic val$externalDisplayConnected:Z


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$16;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/DesktopModeService$16;->val$externalDisplayConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$16;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/AlertDialog;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$16;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap10(Lcom/android/server/desktopmode/DesktopModeService;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$16;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap39(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$16;->val$externalDisplayConnected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$16;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get22(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->dismissExternal(I)V

    :cond_1
    return-void
.end method
