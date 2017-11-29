.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v2, -0x1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;-><init>()V

    invoke-virtual {v0, v2, v3, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->initDownloadStartedResponse(JJ)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$1;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadFileByPublicTokenTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;->onDownloadStarted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V

    return-void
.end method
