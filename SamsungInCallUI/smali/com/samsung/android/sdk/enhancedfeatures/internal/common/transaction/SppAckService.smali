.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$SppAckSenderStopListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SppAckService"


# instance fields
.field private mSppAckSender:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$SppAckSenderStopListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mSppAckSender:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mSppAckSender:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->create()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "SERVICE DESTROYED"

    const-string v1, "SppAckService"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mSppAckSender:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->destroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->mSppAckSender:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;

    const-string v1, "notificationId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->start(Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public stop(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STOP SERVICE startId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SppAckService"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckService;->stopSelf(I)V

    return-void
.end method
