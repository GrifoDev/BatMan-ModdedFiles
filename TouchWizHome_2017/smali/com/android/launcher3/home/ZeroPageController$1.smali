.class Lcom/android/launcher3/home/ZeroPageController$1;
.super Ljava/lang/Object;
.source "ZeroPageController.java"

# interfaces
.implements Lcom/android/launcher3/util/alarm/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ZeroPageController;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ZeroPageController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ZeroPageController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$1;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Virtual screen thread exit - onAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$1;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->restoreOffset()V

    return-void
.end method
