.class final synthetic Lcom/android/server/pm/PersonaManagerService$-void_handleUserUnlocked_int_userId_LambdaImpl0;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_handleUserUnlocked_int_userId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/pm/PersonaManagerService;

.field private synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$-void_handleUserUnlocked_int_userId_LambdaImpl0;->val$this:Lcom/android/server/pm/PersonaManagerService;

    iput p2, p0, Lcom/android/server/pm/PersonaManagerService$-void_handleUserUnlocked_int_userId_LambdaImpl0;->val$userId:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$-void_handleUserUnlocked_int_userId_LambdaImpl0;->val$this:Lcom/android/server/pm/PersonaManagerService;

    iget v1, p0, Lcom/android/server/pm/PersonaManagerService$-void_handleUserUnlocked_int_userId_LambdaImpl0;->val$userId:I

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->-com_android_server_pm_PersonaManagerService_lambda$1(ILandroid/os/UserManager;)V

    return-void
.end method
