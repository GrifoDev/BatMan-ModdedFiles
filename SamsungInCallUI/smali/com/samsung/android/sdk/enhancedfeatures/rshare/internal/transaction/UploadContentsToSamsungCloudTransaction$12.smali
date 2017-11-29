.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->success()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$12;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$12;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadSamsungCloudListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$12;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$12;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadSamsungCloudListener;->onSuccess(JLjava/util/List;)V

    return-void
.end method
