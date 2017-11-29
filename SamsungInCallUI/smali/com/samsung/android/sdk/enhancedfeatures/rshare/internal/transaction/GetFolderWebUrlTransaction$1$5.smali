.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction$1$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction$1;

.field final synthetic val$response:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction$1;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction$1$5;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction$1$5;->val$response:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction$1$5;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction$1$5;->val$response:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V

    return-void
.end method
