.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadWorkerTask$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadWorkerTask;->onPostExecute(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadWorkerTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadWorkerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadWorkerTask$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadWorkerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    const/16 v1, -0x8a

    const-string v2, "unexpected error"

    const-string v3, "unexpected error"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setShareId(J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadWorkerTask$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadWorkerTask;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    return-void
.end method
