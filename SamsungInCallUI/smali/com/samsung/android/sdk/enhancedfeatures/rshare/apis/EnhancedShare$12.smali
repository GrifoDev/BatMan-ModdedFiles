.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->updateSharedContents(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

.field final synthetic val$request:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$12;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$12;->val$request:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$12;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, -0x2e

    const-string v1, "Security Permission"

    const-string v2, "Security Permission"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$12;->val$request:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadShareContentsRequest;->getRequestToken()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setRequestToken(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$12;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    return-void
.end method
