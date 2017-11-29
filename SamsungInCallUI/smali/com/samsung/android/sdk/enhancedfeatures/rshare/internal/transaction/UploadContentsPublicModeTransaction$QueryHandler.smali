.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onApplyBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V
    .locals 13

    invoke-super/range {p0 .. p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onApplyBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "###onApplyBatchComplete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x2

    aget-object v0, p3, v0

    iget-object v0, v0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v1, -0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "media has been removed"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v4, p2

    check-cast v4, Landroid/os/Bundle;

    const-string v0, "extra_content_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "extra_upload_done"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "[TOKEN_DELETE_CHUNK_UPLOADED] upload done"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-boolean v0, v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    if-eqz v0, :cond_4

    const-string v0, "[TOKEN_DELETE_CHUNK_UPLOADED] Already ended"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v10, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)Z

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v11}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v12}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v12

    invoke-static/range {v0 .. v12}, Lcom/samsung/android/sdk/ssf/file/FileManager;->endMultiPartUploadFolderSync(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v3

    iget-object v5, v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/sdk/ssf/file/FileManager;->endMultiPartUpload(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;ZLcom/samsung/android/sdk/ssf/common/ConnectTimeout;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    const/4 v0, 0x1

    aget-object v0, p3, v0

    iget-object v0, v0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v1, -0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "media has been removed"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    check-cast p2, Landroid/os/Bundle;

    const-string v0, "extra_content_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->poll(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content is not found, contentid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remained content num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "group_id"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4500()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_2
    check-cast p2, Landroid/os/Bundle;

    const-string v0, "extra_content_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "group_id"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4500()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_3
    const/4 v0, 0x1

    aget-object v0, p3, v0

    iget-object v0, v0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v1, -0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "media has been removed"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x17 -> :sswitch_3
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "###onQueryComplete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, -0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Cursor is null"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :sswitch_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const-string v1, "folder_token"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const-string v1, "ors_region_url"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cursor is null for groupID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v1, 0x191

    const/16 v2, -0x30

    const-string v3, "No groupID in DB"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;IILjava/lang/String;)V

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_5

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const-string v1, "folder_token"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    if-eqz p2, :cond_4

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    iget v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content$ChunkEntry;->getContentChunkUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "chunk_forced"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3600()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_5
    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Folder Token is null for the group ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v1, 0x191

    const/16 v2, -0x2f

    const-string v3, "No folderToken in DB"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;IILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "this media is not dirty, considering as fresh upload"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v2, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4400()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Z)Z

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_7
    const/4 v0, -0x1

    :try_start_1
    invoke-interface {p3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4300()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;J)J

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1808(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v8, v0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v2, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4400()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Z)Z

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v8

    :cond_8
    :try_start_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "total %d dirtany contents found, with total of %d in size"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :sswitch_3
    :try_start_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, -0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This media is invalid, uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v3, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_9
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, 0x3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSize:J

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, 0x6

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, 0x4

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;J)J

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;J)J

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, 0x5

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$902(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v1, 0x8

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v1, 0xa

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v1, 0xb

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;J)J

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v1, 0xc

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v1, 0xd

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v1, 0xe

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v1, 0xf

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "group_id"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v0

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4500()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_a
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    const/16 v0, 0xc8

    if-ne v9, v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "media is already shared, this transaction is for updating existing share"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "nothing to update"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v2, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->remove(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSize:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    :cond_c
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1902(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Z)Z

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, -0x5

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content to share this media = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v3, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)V

    goto/16 :goto_1

    :cond_e
    const/16 v0, 0xc9

    if-ne v9, v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, -0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start upload. This media was canceled already, media = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v4, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)V

    goto/16 :goto_1

    :cond_f
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Media to upload, size = %d progressReal= %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v4, v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSize:J

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSize:J

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/16 v0, 0xc8

    if-ne v9, v0, :cond_10

    const-string v0, "its already uploaded"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v2, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->remove(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "byte_usage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "quota"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start upload, mi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v6, v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " comcnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " realCnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v6, v10

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " topr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v6, v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSize:J

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v10

    add-long/2addr v6, v10

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    if-ne v9, v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This media is on progress. but coninue to upload. media = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v4, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz v9, :cond_13

    const/16 v0, 0x191

    if-ne v9, v0, :cond_12

    const/16 v0, -0x14

    if-eq v8, v0, :cond_13

    :cond_12
    const/16 v0, 0xc8

    if-ne v9, v0, :cond_14

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSize:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->putQuota(Ljava/lang/Long;Ljava/lang/Long;)Z

    :cond_14
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "status"

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "media_progress"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v3, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4
    const/4 v0, -0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, -0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No file in content table"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_15
    :goto_4
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v1, 0xa

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_15

    const/4 v2, 0x3

    if-eq v1, v2, :cond_15

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;-><init>()V

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v1, "content"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    :try_start_5
    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v5, v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-wide v6

    if-eqz v1, :cond_16

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_16
    :goto_5
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gtz v1, :cond_19

    if-eqz p3, :cond_17

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, -0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onQueryComplete. close. "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v4, -0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete. close. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_18

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_18
    :goto_6
    throw v0

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete. close. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_19
    const-string v1, "file"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Ljava/io/File;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1c

    :cond_1a
    if-eqz p3, :cond_1b

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v1, -0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not exists "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    const/4 v1, 0x4

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput-object v3, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->filename:Ljava/lang/String;

    int-to-long v4, v1

    iput-wide v4, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    const/4 v1, 0x3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->chunkSize:I

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    const/4 v1, 0x7

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->chunkCnt:I

    const/16 v1, 0x8

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentType:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressReal:J

    iget-wide v4, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressReal:J

    iput-wide v4, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    const/16 v1, 0xb

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->tag:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->add(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;)V

    goto/16 :goto_4

    :cond_1d
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d of %d contents to be uploaded"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :sswitch_5
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "already paused get_or_create_chunks"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1e
    move-object v3, p2

    check-cast v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    const/4 v0, -0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->pendingChunkCount:I

    iget v0, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->pendingChunkCount:I

    if-nez v0, :cond_20

    if-eqz p3, :cond_1f

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1f
    const-string v0, "pending chunk count 0, already uploaded, start end upload again"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_content_id"

    iget v3, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "extra_upload_done"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_20
    new-instance v4, Ljava/io/File;

    iget-object v0, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_22

    if-eqz p3, :cond_21

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_21
    const-string v0, "File not exists , path = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v2, -0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)V

    goto/16 :goto_0

    :cond_22
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$MultiUploadTask;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v5, 0x0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$MultiUploadTask;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Landroid/database/Cursor;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;Ljava/io/File;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$MultiUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_4
        0x3 -> :sswitch_5
        0x1d -> :sswitch_2
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 11

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateComplete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaUri:Landroid/net/Uri;

    const-string v1, "content"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "_id ASC"

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    check-cast p2, Landroid/os/Bundle;

    const-string v0, "extra_upload_key"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_content_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v5

    if-eqz v5, :cond_0

    iput-object v0, v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    int-to-long v0, v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content$ChunkEntry;->getContentChunkUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "chunk_forced"

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3600()[Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v0

    const/16 v1, 0x1e

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v3, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaUri:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0x18 -> :sswitch_0
        0x1b -> :sswitch_2
    .end sparse-switch
.end method
