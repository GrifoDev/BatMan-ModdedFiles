.class Lcom/android/launcher3/common/tray/TrayManager$2;
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

    iput-object p1, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDropTarget(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    # invokes: Lcom/android/launcher3/common/tray/TrayManager;->findDropTarget(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;
    invoke-static {v0, p1}, Lcom/android/launcher3/common/tray/TrayManager;->access$400(Lcom/android/launcher3/common/tray/TrayManager;Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method public onChangeStage(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    const/4 v1, -0x1

    # invokes: Lcom/android/launcher3/common/tray/TrayManager;->changeStageWithDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V
    invoke-static {v0, p1, p2, v1}, Lcom/android/launcher3/common/tray/TrayManager;->access$300(Lcom/android/launcher3/common/tray/TrayManager;Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V

    return-void
.end method

.method public onDragEnter(I)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/util/LightingEffectManager;->turnOnEachLight(IZ)V

    return-void
.end method

.method public onDragExit(I)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/util/LightingEffectManager;->turnOnEachLight(IZ)V

    return-void
.end method
