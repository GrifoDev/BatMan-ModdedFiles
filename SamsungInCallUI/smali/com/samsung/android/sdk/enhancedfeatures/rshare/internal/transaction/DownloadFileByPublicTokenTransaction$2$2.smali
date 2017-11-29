.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2;

    iget-object v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2$2;->val$file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->initFileDownloadedResponse(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2;

    iget-object v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;->onFileDownloaded(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;->onDownloadCompleted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;)V

    return-void
.end method
