.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$86;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->uploadContentsToSamsungCloud(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadSamsungCloudListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadSamsungCloudListener;

.field final synthetic val$nanoTime:J

.field final synthetic val$request:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadSamsungCloudListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$86;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$86;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadSamsungCloudListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$86;->val$request:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;

    iput-wide p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$86;->val$nanoTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$86;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadSamsungCloudListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$86;->val$request:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;->getRequestToken()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$86;->val$nanoTime:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadSamsungCloudListener;->onPreparingUpload(JJ)V

    return-void
.end method
