.class Lcom/android/server/input/InputManagerService$4;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    const-string/jumbo v0, "InputManager"

    const-string/jumbo v1, "received KNOXDESKTOP_MODE enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-get7(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    invoke-static {v0, v1, v4, v2}, Lcom/android/server/input/InputManagerService;->-wrap11(JII)V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-get7(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    const/4 v2, -0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/input/InputManagerService;->-wrap11(JII)V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->-set3(Lcom/android/server/input/InputManagerService;I)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-get7(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->-wrap8(JZ)V

    sput-boolean p1, Landroid/view/PointerIcon;->mDesktopMode:Z

    invoke-static {}, Landroid/view/PointerIcon;->clearSystemIcons()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    return-void

    :cond_0
    const-string/jumbo v0, "InputManager"

    const-string/jumbo v1, "received KNOXDESKTOP_MODE disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, v2}, Lcom/android/server/input/InputManagerService;->-set3(Lcom/android/server/input/InputManagerService;I)I

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-get7(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    invoke-static {v0, v1, v4, v3}, Lcom/android/server/input/InputManagerService;->-wrap11(JII)V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-get7(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    const/4 v2, 0x3

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/input/InputManagerService;->-wrap11(JII)V

    goto :goto_0
.end method
