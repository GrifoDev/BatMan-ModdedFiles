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
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView$1;->this$0:Lcom/android/launcher3/common/tray/FakeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/common/tray/FakeView;->access$002(Lcom/android/launcher3/common/tray/FakeView;Z)Z

    return-void
.end method
