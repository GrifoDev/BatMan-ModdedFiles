.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, -0x1e

    const-string v1, "File hashing failed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    return-void
.end method
