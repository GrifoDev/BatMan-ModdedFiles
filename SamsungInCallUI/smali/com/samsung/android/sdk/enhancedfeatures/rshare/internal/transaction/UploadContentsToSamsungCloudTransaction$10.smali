.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->progress(ILcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

.field final synthetic val$uploadContent:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$10;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$10;->val$uploadContent:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$10;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setShareId(J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$10;->val$uploadContent:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setCurrentProgressFileName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$10;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$2200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setOverallProgressBytes(J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$10;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setOverallTotalBytes(J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$10;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setRequestToken(J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$10;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadSamsungCloudListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$10;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadSamsungCloudListener;->onProgress(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;)V

    return-void
.end method
