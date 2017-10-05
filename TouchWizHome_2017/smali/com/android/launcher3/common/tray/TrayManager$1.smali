.class Lcom/android/launcher3/common/tray/TrayManager$1;
.super Ljava/lang/Object;
.source "TrayManager.java"

# interfaces
.implements Lcom/android/launcher3/util/alarm/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/tray/TrayManager;
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

    iput-object p1, p0, Lcom/android/launcher3/common/tray/TrayManager$1;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager$1;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v3, v1}, Lcom/android/launcher3/common/tray/TrayManager;->access$002(Lcom/android/launcher3/common/tray/TrayManager;Z)Z

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager$1;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v3}, Lcom/android/launcher3/common/tray/TrayManager;->access$100(Lcom/android/launcher3/common/tray/TrayManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager$1;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v3}, Lcom/android/launcher3/common/tray/TrayManager;->access$200(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/tray/FakeView;->isDragEntered()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager$1;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v3}, Lcom/android/launcher3/common/tray/TrayManager;->access$300(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/tray/FakeView;->isDragEntered()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager$1;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v1, v2}, Lcom/android/launcher3/common/tray/TrayManager;->access$102(Lcom/android/launcher3/common/tray/TrayManager;Z)Z

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager$1;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v3, v1}, Lcom/android/launcher3/common/tray/TrayManager;->access$102(Lcom/android/launcher3/common/tray/TrayManager;Z)Z

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager$1;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v3}, Lcom/android/launcher3/common/tray/TrayManager;->access$300(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStage(Z)V

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager$1;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v3}, Lcom/android/launcher3/common/tray/TrayManager;->access$200(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStage(Z)V

    sget-object v1, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager$1;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v3}, Lcom/android/launcher3/common/tray/TrayManager;->access$400(Lcom/android/launcher3/common/tray/TrayManager;)I

    move-result v3

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$1;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2}, Lcom/android/launcher3/common/tray/TrayManager;->access$300(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStage(Z)V

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$1;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2}, Lcom/android/launcher3/common/tray/TrayManager;->access$200(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStage(Z)V

    goto :goto_1
.end method
