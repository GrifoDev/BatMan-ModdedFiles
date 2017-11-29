.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadBinayTransaction$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadBinayTransaction$3;->onProgress(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadBinayTransaction$3;

.field final synthetic val$bytes:I


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadBinayTransaction$3;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadBinayTransaction$3$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadBinayTransaction$3;

    iput p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadBinayTransaction$3$2;->val$bytes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadBinayTransaction$3$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadBinayTransaction$3;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadBinayTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadBinayTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadBinayTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadBinayTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadBinaryListener;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadBinayTransaction$3$2;->val$bytes:I

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadBinaryListener;->onProgress(I)V

    return-void
.end method
