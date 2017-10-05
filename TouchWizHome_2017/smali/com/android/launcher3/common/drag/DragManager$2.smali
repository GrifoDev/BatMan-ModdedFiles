.class Lcom/android/launcher3/common/drag/DragManager$2;
.super Ljava/lang/Object;
.source "DragManager.java"

# interfaces
.implements Lcom/android/launcher3/util/alarm/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/drag/DragManager;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FLandroid/graphics/drawable/Drawable;ZZ)Lcom/android/launcher3/common/drag/DragView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/drag/DragManager;

.field final synthetic val$source:Lcom/android/launcher3/common/drag/DragSource;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragSource;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager$2;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    iput-object p2, p0, Lcom/android/launcher3/common/drag/DragManager$2;->val$source:Lcom/android/launcher3/common/drag/DragSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$2;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    invoke-static {v0}, Lcom/android/launcher3/common/drag/DragManager;->access$000(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$2;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    invoke-static {v0}, Lcom/android/launcher3/common/drag/DragManager;->access$000(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$2;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    invoke-static {v0}, Lcom/android/launcher3/common/drag/DragManager;->access$000(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$2;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    invoke-static {v0}, Lcom/android/launcher3/common/drag/DragManager;->access$000(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager$2;->val$source:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->changeStageWithDrag(Lcom/android/launcher3/common/drag/DragSource;)V

    :cond_0
    return-void
.end method
