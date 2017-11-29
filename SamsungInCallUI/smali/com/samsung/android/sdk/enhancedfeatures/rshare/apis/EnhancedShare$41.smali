.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$41;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->resumeDownload(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

.field final synthetic val$downloadContentsListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

.field final synthetic val$userData:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$41;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$41;->val$userData:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$41;->val$downloadContentsListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    const/16 v1, -0x2e

    const-string v2, "Security permission error"

    const-string v3, "Security permission error"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$41;->val$userData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setUserData(Landroid/os/Bundle;)V

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setShareId(J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$41;->val$downloadContentsListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    return-void
.end method
