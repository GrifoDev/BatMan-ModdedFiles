.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$1;->refreshInputStream(Landroid/os/Bundle;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;

    move-result-object v0

    const/16 v1, -0x2e

    const-string v2, "No permission for read file"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    return-void
.end method
