.class Lcom/android/server/SdpManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrongAuthTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SdpManagerService$StrongAuthTracker;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStrongAuthRequiredChanged(I)V
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    const-string/jumbo v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStrongAuthRequiredChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/SdpManagerService$StrongAuthTracker;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyEvictionRequired(I)V

    :cond_1
    return-void
.end method
