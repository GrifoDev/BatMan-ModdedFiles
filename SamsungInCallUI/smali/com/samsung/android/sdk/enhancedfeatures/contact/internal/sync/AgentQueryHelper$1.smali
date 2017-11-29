.class final Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteProfileImageFromOrsServer(I[Ljava/lang/String;[Ljava/lang/String;[[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fileId:[Ljava/lang/String;

.field final synthetic val$filePath:[Ljava/lang/String;

.field final synthetic val$image:[[B

.field final synthetic val$imgCount:I


# direct methods
.method constructor <init>(I[Ljava/lang/String;[Ljava/lang/String;[[B)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper$1;->val$imgCount:I

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper$1;->val$fileId:[Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper$1;->val$filePath:[Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper$1;->val$image:[[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper$1;->val$imgCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper$1;->val$fileId:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper$1;->val$fileId:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper$1;->val$filePath:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deleteProfileImageUsingUrl(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper$1;->val$image:[[B

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper$1;->val$filePath:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deleteProfileImageUsingByte([BLjava/lang/String;)Z

    goto :goto_1

    :cond_1
    return-void
.end method
