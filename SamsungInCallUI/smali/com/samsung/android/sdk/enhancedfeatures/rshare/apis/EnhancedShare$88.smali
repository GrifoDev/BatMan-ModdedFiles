.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$88;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->stopUploadContentsToSamsungCloud(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

.field final synthetic val$transactionId:J


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$88;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    iput-wide p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$88;->val$transactionId:J

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$88;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>()V

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$88;->val$transactionId:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setShareId(J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$88;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    return-void
.end method
