.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 6

    const/16 v0, 0xc8

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_1

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse;->getSupportedServices()[Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/PolicyDBMgr;->setPolicies([Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse;->getItv()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-string v2, "update_check_time_interval"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    :goto_0
    const-string v0, "last_policy_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->access$200()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyTransaction;->registerAlarm(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->stopSelf()V

    return-void

    :cond_1
    const-string v0, "Policy response was not proper..."

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyJob;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    goto :goto_0
.end method
