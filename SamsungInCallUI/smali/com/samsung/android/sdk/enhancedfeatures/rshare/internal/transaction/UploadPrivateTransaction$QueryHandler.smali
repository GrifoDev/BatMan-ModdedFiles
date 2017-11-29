.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onApplyBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V
    .locals 9

    const/16 v2, -0x21

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onApplyBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "###onApplyBatchComplete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p2

    check-cast v4, Landroid/os/Bundle;

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;I)I

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

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "media has been removed"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "extra_content_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "extra_upload_done"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "[TOKEN_DELETE_CHUNK_UPLOADED] upload done"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-boolean v0, v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    if-eqz v0, :cond_4

    const-string v0, "[TOKEN_DELETE_CHUNK_UPLOADED] Already ended"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iput-boolean v6, v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v3

    iget-object v5, v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/sdk/ssf/file/FileManager;->endMultiPartUpload(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;ZLcom/samsung/android/sdk/ssf/common/ConnectTimeout;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    aget-object v0, p3, v6

    iget-object v0, v0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "media has been removed"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "extra_content_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->poll(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content is not found, contentid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remained content num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "extra_content_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v2

    if-eqz v2, :cond_1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content$ChunkEntry;->getContentChunkUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "chunk_forced"

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3200()[Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    aget-object v0, p3, v6

    iget-object v0, v0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "media has been removed"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

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

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;I)I

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const/4 v1, -0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Cursor is null"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const/4 v1, -0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This media is invalid, uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-object v3, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "this media is not dirty, considering as fresh upload"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-wide v2, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mMediaId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3700()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Z)Z

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :goto_1
    :try_start_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v2

    const-string v1, "file_size"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;J)J

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1908(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dirtany contents found, with total of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-wide v2, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mMediaId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3700()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Z)Z

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v8

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const-string v1, "content_count"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const-string v1, "size"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;J)J

    const-string v0, "error"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const-string v2, "cid"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "status"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Z)Z

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const-string v3, "media_progress_real"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$902(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;J)J

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;J)J

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const-string v3, "complete_count"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;I)I

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const-string v3, "dir"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const-string v3, "req_token"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, "media is already shared, this transaction is for updating existing share"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)I

    move-result v2

    if-nez v2, :cond_6

    const-string v0, "nothing to update"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)I

    move-result v2

    if-nez v2, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const/4 v1, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content to share this media = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-object v3, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)V

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0xc9

    if-ne v1, v2, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const/4 v1, -0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start upload. This media was canceled already, media = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-wide v4, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mMediaId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)V

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media to upload, size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " progressReal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_9

    const-string v0, "its already uploaded"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    :cond_a
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Z)Z

    :cond_b
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string v3, "byte_usage"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v3, "quota"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start upload, mi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-wide v8, v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mMediaId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " comcnt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " realCnt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " topr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " uq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " tq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->getOrcaDuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x64

    if-ne v1, v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This media is on progress. but coninue to upload. media = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-wide v6, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mMediaId:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v1, :cond_e

    const/16 v2, 0x191

    if-ne v1, v2, :cond_d

    const/16 v2, -0x14

    if-eq v0, v2, :cond_e

    :cond_d
    const/16 v0, 0xc8

    if-ne v1, v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->putQuota(Ljava/lang/Long;Ljava/lang/Long;)Z

    :cond_f
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "status"

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "media_progress"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-object v3, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mMediaUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const/4 v1, -0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No file in content table"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_10
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "status"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_10

    const/4 v2, 0x3

    if-eq v1, v2, :cond_10

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;-><init>()V

    const-string v1, "path"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v1, "content"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    :try_start_4
    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-object v5, v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const-string v5, "file_size"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-wide v6

    if-eqz v1, :cond_11

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_11
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_13

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

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

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

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

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_6
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

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

    invoke-static {v2, v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

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

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_8
    const-string v0, "Security exception reading file "

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    :catch_4
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

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_12

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_12
    :goto_4
    throw v0

    :catch_5
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

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_13
    const-string v1, "file"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Ljava/io/File;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_14

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_15

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

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

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const-string v1, "file_size"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput-object v3, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    const-string v3, "filename"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->filename:Ljava/lang/String;

    int-to-long v4, v1

    iput-wide v4, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    const-string v1, "upload_key"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    const-string v1, "chunk_size"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->chunkSize:I

    const-string v1, "_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    const-string v1, "chunk_count"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->chunkCnt:I

    const-string v1, "content_type"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentType:Ljava/lang/String;

    const-string v1, "progress_real"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressReal:J

    const-string v1, "tag"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->tag:Ljava/lang/String;

    iget-wide v4, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressReal:J

    iput-wide v4, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->add(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;)V

    goto/16 :goto_2

    :cond_16
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contents to be uploaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "already paused get_or_create_chunks"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    move-object v3, p2

    check-cast v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->pendingChunkCount:I

    iget v0, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->pendingChunkCount:I

    if-nez v0, :cond_18

    const-string v0, "pending chunk count 0, already uploaded, start end upload again"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Landroid/os/Handler;

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

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_18
    new-instance v4, Ljava/io/File;

    iget-object v0, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File not exists , path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const/4 v2, -0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)V

    goto/16 :goto_0

    :cond_19
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    const/4 v5, 0x0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Landroid/database/Cursor;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;Ljava/io/File;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x3 -> :sswitch_3
        0x1d -> :sswitch_1
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

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;I)I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mMediaUri:Landroid/net/Uri;

    const-string v1, "content"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "_id ASC"

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    check-cast p2, Landroid/os/Bundle;

    const-string v0, "extra_upload_key"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_content_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3200()[Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Share Complete m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-wide v4, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mMediaId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Already Paused,no need to return response"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$4100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-wide v4, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mMediaId:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->remove(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$4200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$4200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[WakeLock] release pm lock"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$4200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;

    move-result-object v3

    const/16 v4, 0x20

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->mMediaUri:Landroid/net/Uri;

    move-object v5, p2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->stop()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_2
        0x18 -> :sswitch_1
        0x1b -> :sswitch_0
        0x1f -> :sswitch_3
    .end sparse-switch
.end method
