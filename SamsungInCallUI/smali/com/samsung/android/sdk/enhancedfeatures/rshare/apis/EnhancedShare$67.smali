.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$67;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getSharePolicy(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/GetSharePolicyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

.field final synthetic val$getSharePolicyListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/GetSharePolicyListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/GetSharePolicyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$67;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$67;->val$getSharePolicyListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/GetSharePolicyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v0, -0xd

    const-string v1, "Security Exception"

    const-string v2, "Security Exception"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$67;->val$getSharePolicyListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/GetSharePolicyListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/GetSharePolicyListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    return-void
.end method
