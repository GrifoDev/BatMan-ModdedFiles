.class Lcom/android/server/wm/SamsungStartingWindowManager$1;
.super Landroid/view/WindowManagerInternal$AppTransitionListener;
.source "SamsungStartingWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungStartingWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SamsungStartingWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SamsungStartingWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-direct {p0}, Landroid/view/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    iget-object v3, v3, Lcom/android/server/wm/SamsungStartingWindowManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_2

    iget-object v0, v2, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-static {v3, v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->-wrap2(Lcom/android/server/wm/SamsungStartingWindowManager;I)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-static {v3, v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->-wrap2(Lcom/android/server/wm/SamsungStartingWindowManager;I)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->isTransitionFinished:Z

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/SamsungStartingWindowManager;->canExecuteAutoCapture(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/SamsungStartingWindowManager;->executeAutoCapture(Lcom/android/server/wm/AppWindowToken;)Z

    :cond_2
    return-void
.end method

.method public onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    iget-object v3, v3, Lcom/android/server/wm/SamsungStartingWindowManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    const-string/jumbo v3, "SamsungStartingWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAppTransitionFinishedLocked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_0

    iget-object v0, v2, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-static {v3, v6}, Lcom/android/server/wm/SamsungStartingWindowManager;->-wrap2(Lcom/android/server/wm/SamsungStartingWindowManager;I)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-static {v3, v6}, Lcom/android/server/wm/SamsungStartingWindowManager;->-wrap2(Lcom/android/server/wm/SamsungStartingWindowManager;I)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    :cond_0
    return-void
.end method
