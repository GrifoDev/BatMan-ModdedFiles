.class Lcom/android/launcher3/common/tray/FakeView$1;
.super Ljava/lang/Object;
.source "FakeView.java"

# interfaces
.implements Lcom/android/launcher3/util/alarm/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/tray/FakeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/tray/FakeView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/tray/FakeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/tray/FakeView$1;->this$0:Lcom/android/launcher3/common/tray/FakeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView$1;->this$0:Lcom/android/launcher3/common/tray/FakeView;

    invoke-static {v0}, Lcom/android/launcher3/common/tray/FakeView;->access$000(Lcom/android/launcher3/common/tray/FakeView;)Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView$1;->this$0:Lcom/android/launcher3/common/tray/FakeView;

    invoke-static {v0}, Lcom/android/launcher3/common/tray/FakeView;->access$000(Lcom/android/launcher3/common/tray/FakeView;)Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView$1;->this$0:Lcom/android/launcher3/common/tray/FakeView;

    invoke-static {v1}, Lcom/android/launcher3/common/tray/FakeView;->access$100(Lcom/android/launcher3/common/tray/FakeView;)Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/tray/FakeView$1;->this$0:Lcom/android/launcher3/common/tray/FakeView;

    invoke-static {v2}, Lcom/android/launcher3/common/tray/FakeView;->access$200(Lcom/android/launcher3/common/tray/FakeView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;->onChangeStage(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)V

    :cond_0
    return-void
.end method
