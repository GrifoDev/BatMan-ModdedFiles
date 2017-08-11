.class public final Lcom/android/server/SdpManagerService$SdpUssListener;
.super Landroid/os/IUserStateListener$Stub;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SdpUssListener"
.end annotation


# instance fields
.field mSdpManagerService:Lcom/android/server/SdpManagerService;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpUssListener;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Landroid/os/IUserStateListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/SdpManagerService$SdpUssListener;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    return-void
.end method


# virtual methods
.method public onStartUser(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onStopUser(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUserStarted(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpUssListener;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService;->-wrap14(Lcom/android/server/SdpManagerService;I)V

    return-void
.end method

.method public onUserStopped(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUserUnlocked(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
