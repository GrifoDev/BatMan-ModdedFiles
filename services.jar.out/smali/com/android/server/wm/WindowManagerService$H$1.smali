.class Lcom/android/server/wm/WindowManagerService$H$1;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService$H;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/WindowManagerService$H;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService$H;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H$1;->this$1:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "start logging dumpstate_freeze"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "-z -d -o /data/log/dumpstate_freeze"

    invoke-static {v0}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    return-void
.end method
