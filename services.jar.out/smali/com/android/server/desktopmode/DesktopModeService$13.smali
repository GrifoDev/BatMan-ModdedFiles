.class Lcom/android/server/desktopmode/DesktopModeService$13;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->showDialog(I)V
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

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$13;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$13;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get18(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$13;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v1, "1st_mouse"

    invoke-static {v0, v1, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap0(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$13;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v1, "1st_mouse"

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap29(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$13;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap1(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$13;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v1, "1st_dock"

    invoke-static {v0, v1, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap0(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$13;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v1, "1st_dock"

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap29(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V

    goto :goto_0
.end method
