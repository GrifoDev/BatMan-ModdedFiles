.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, -0x2e

    const-string v1, "No permission for read file"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setRequestToken(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-wide v2, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mMediaId:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setShareId(J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    return-void
.end method
