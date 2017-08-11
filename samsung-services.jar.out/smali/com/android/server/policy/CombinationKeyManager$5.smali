.class Lcom/android/server/policy/CombinationKeyManager$5;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/CombinationKeyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/CombinationKeyManager$5;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager$5;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    iget-object v0, v0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportPowerTriplePress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager$5;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    iget-object v0, v0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendBroadcastForSafetyAssurance()V

    const-string/jumbo v0, "CombinationKeyManager"

    const-string/jumbo v1, "Safety mesage broadcasted by Volume up/down 3sec press"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager$5;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    iget-object v0, v0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager$5;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    iget-object v0, v0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager$5;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    iget-object v0, v0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method
