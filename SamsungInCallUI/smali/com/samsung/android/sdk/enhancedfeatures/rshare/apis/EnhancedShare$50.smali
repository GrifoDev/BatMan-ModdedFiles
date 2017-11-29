.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$50;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getFileInformationUsingPublicToken(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;

.field final synthetic val$publicToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$50;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$50;->val$publicToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$50;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v0, -0xd

    const-string v1, "authentication failed"

    const-string v2, "unable to authenticate user"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$50;->val$publicToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setPublicToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$50;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    return-void
.end method
