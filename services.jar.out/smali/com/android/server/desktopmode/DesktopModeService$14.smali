.class Lcom/android/server/desktopmode/DesktopModeService$14;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$14;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$14;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v1, "1st_mouse"

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap30(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$14;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v1, "1st_dock"

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap30(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$14;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v1, "hdmi"

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap31(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$14;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap25(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$14;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap23(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$14;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v1, "hdmi"

    invoke-static {v0, v1, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap31(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$14;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap25(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$14;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap23(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$14;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap40(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_0
.end method
