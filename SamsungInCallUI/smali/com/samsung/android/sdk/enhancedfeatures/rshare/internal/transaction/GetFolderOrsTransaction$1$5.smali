.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$1$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$1$5;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, -0x65

    const-string v1, "No such content token at server"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$1$5;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$1;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setContentToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$1$5;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$1;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    return-void
.end method
