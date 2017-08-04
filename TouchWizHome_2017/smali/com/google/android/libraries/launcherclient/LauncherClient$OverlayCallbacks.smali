.class Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;
.super Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;
.source "LauncherClient.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/launcherclient/LauncherClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayCallbacks"
.end annotation


# static fields
.field private static final MSG_UPDATE_SCROLL:I = 0x2

.field private static final MSG_UPDATE_SHIFT:I = 0x3

.field private static final MSG_UPDATE_STATUS:I = 0x4


# instance fields
.field private mClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

.field private final mUIHandler:Landroid/os/Handler;

.field private mWindow:Landroid/view/Window;

.field private mWindowHidden:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowShift:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowHidden:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private hideActivityNonUI(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowHidden:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowHidden:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowManager:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindow:Landroid/view/Window;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    move v1, v3

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-static {v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$800(Lcom/google/android/libraries/launcherclient/LauncherClient;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-static {v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$900(Lcom/google/android/libraries/launcherclient/LauncherClient;)Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v3, v1}, Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;->onOverlayScrollChanged(F)V

    :cond_1
    move v1, v2

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowShift:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v2

    goto :goto_0

    :cond_2
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v3}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$600(Lcom/google/android/libraries/launcherclient/LauncherClient;I)V

    move v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public overlayScrollChanged(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->hideActivityNonUI(Z)V

    :cond_0
    return-void
.end method

.method public overlayStatusChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setClient(Lcom/google/android/libraries/launcherclient/LauncherClient;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-static {p1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$700(Lcom/google/android/libraries/launcherclient/LauncherClient;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindowShift:I

    invoke-static {p1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$700(Lcom/google/android/libraries/launcherclient/LauncherClient;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$OverlayCallbacks;->mWindow:Landroid/view/Window;

    return-void
.end method
