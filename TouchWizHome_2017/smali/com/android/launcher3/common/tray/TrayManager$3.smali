.class Lcom/android/launcher3/common/tray/TrayManager$3;
.super Ljava/lang/Object;
.source "TrayManager.java"

# interfaces
.implements Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/tray/TrayManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/tray/TrayManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/tray/TrayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/tray/TrayManager$3;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDropTarget(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager$3;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v0, p1}, Lcom/android/launcher3/common/tray/TrayManager;->access$900(Lcom/android/launcher3/common/tray/TrayManager;Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method public onChangeStage(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager$3;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    const/4 v1, -0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/launcher3/common/tray/TrayManager;->access$800(Lcom/android/launcher3/common/tray/TrayManager;Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V

    return-void
.end method

.method public onDragEnter(I)V
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$3;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2}, Lcom/android/launcher3/common/tray/TrayManager;->access$000(Lcom/android/launcher3/common/tray/TrayManager;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/LightingEffectManager;->turnOnEachLight(IZ)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onDragExit(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$3;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2, v1}, Lcom/android/launcher3/common/tray/TrayManager;->access$002(Lcom/android/launcher3/common/tray/TrayManager;Z)Z

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$3;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2}, Lcom/android/launcher3/common/tray/TrayManager;->access$100(Lcom/android/launcher3/common/tray/TrayManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$3;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2, v1}, Lcom/android/launcher3/common/tray/TrayManager;->access$102(Lcom/android/launcher3/common/tray/TrayManager;Z)Z

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$3;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2}, Lcom/android/launcher3/common/tray/TrayManager;->access$300(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStage(Z)V

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$3;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2}, Lcom/android/launcher3/common/tray/TrayManager;->access$200(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStage(Z)V

    sget-object v1, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$3;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2}, Lcom/android/launcher3/common/tray/TrayManager;->access$400(Lcom/android/launcher3/common/tray/TrayManager;)I

    move-result v2

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    sget-object v2, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/LightingEffectManager;->turnOnEachLight(IZ)V

    goto :goto_0
.end method
