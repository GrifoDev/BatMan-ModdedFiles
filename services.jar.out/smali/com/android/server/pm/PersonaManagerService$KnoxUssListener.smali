.class public final Lcom/android/server/pm/PersonaManagerService$KnoxUssListener;
.super Landroid/os/IUserStateListener$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KnoxUssListener"
.end annotation


# instance fields
.field mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$KnoxUssListener;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/os/IUserStateListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$KnoxUssListener;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxUssListener;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->-wrap46(Lcom/android/server/pm/PersonaManagerService;I)V

    return-void
.end method

.method public onUserStarted(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxUssListener;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->-wrap47(Lcom/android/server/pm/PersonaManagerService;I)V

    return-void
.end method

.method public onUserStopped(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxUssListener;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->-wrap48(Lcom/android/server/pm/PersonaManagerService;I)V

    return-void
.end method

.method public onUserUnlocked(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$KnoxUssListener;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->-wrap49(Lcom/android/server/pm/PersonaManagerService;I)V

    return-void
.end method
