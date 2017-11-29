.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/common/util/HashUtils$HashingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHashingComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
