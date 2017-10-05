.class Lcom/android/launcher3/common/tray/FakeView$2;
.super Ljava/lang/Object;
.source "FakeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/tray/FakeView;->onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
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

    iput-object p1, p0, Lcom/android/launcher3/common/tray/FakeView$2;->this$0:Lcom/android/launcher3/common/tray/FakeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView$2;->this$0:Lcom/android/launcher3/common/tray/FakeView;

    invoke-static {v0}, Lcom/android/launcher3/common/tray/FakeView;->access$300(Lcom/android/launcher3/common/tray/FakeView;)Lcom/android/launcher3/util/alarm/OnAlarmListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/alarm/OnAlarmListener;->onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V

    return-void
.end method
