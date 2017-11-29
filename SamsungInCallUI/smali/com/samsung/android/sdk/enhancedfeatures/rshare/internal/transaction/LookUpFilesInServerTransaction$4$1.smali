.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;->onHashingComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;

.field final synthetic val$hashValues:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4$1;->val$hashValues:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest;->getFileDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->isUseInputStream()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Error while resetting input stream"

    const-string v1, "LookUpFilesInServerTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4$1;->val$hashValues:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
