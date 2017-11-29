.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4$2;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;

    const/16 v1, -0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File hashing failed"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/LookUpFilesInServerTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method
