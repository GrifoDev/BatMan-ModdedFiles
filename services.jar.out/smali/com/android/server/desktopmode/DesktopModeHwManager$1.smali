.class Lcom/android/server/desktopmode/DesktopModeHwManager$1;
.super Ljava/lang/Object;
.source "DesktopModeHwManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeHwManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get6(Lcom/android/server/desktopmode/DesktopModeHwManager;)I

    move-result v2

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-wrap1(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get13(Lcom/android/server/desktopmode/DesktopModeHwManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onDisplayChanged(ZZ)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get8(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get13(Lcom/android/server/desktopmode/DesktopModeHwManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onDisplayUpdated()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get6(Lcom/android/server/desktopmode/DesktopModeHwManager;)I

    move-result v2

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-wrap1(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get13(Lcom/android/server/desktopmode/DesktopModeHwManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    invoke-virtual {v0, v3, v3}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onDisplayChanged(ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method
