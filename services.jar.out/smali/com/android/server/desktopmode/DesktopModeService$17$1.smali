.class Lcom/android/server/desktopmode/DesktopModeService$17$1;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/desktopmode/DesktopModeService$17;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService$17;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$17$1;->this$1:Lcom/android/server/desktopmode/DesktopModeService$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$17$1;->this$1:Lcom/android/server/desktopmode/DesktopModeService$17;

    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$17;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap9(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method
