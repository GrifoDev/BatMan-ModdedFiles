.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->fileUploaded(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

.field final synthetic val$fileUploadedResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$11;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$11;->val$fileUploadedResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$11;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadSamsungCloudListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$11;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$11;->val$fileUploadedResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;

    invoke-interface {v0, v2, v3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadSamsungCloudListener;->onFileUploaded(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;)V

    return-void
.end method
