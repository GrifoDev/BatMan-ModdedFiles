.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;->onHashingComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;

.field final synthetic val$hashValues:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6$1;->val$hashValues:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->isUseInputStream()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction$6$1;->val$hashValues:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsToSamsungCloudTransaction;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Error while resetting input stream"

    const-string v1, "UploadContentsToSamsungCloudTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
