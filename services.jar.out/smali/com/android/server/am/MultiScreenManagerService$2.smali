.class Lcom/android/server/am/MultiScreenManagerService$2;
.super Ljava/lang/Object;
.source "MultiScreenManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiScreenManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiScreenManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiScreenManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiScreenManagerService$2;->this$0:Lcom/android/server/am/MultiScreenManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService$2;->this$0:Lcom/android/server/am/MultiScreenManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiScreenManagerService;->-get3(Lcom/android/server/am/MultiScreenManagerService;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService$2;->this$0:Lcom/android/server/am/MultiScreenManagerService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiScreenManagerService;->setInputMethodDisplay(I)V

    :cond_0
    return-void
.end method
