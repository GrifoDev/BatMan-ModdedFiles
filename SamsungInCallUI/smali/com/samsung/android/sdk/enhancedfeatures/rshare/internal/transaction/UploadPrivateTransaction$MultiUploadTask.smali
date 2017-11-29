.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mCts:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

.field private mCursor:Landroid/database/Cursor;

.field private mFile:Ljava/io/File;

.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Landroid/database/Cursor;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCursor:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCts:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mFile:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Landroid/database/Cursor;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;Ljava/io/File;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;Landroid/database/Cursor;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 13

    const-string v0, "MultiUploadTask -> doInBackground"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCursor:Landroid/database/Cursor;

    const-string v2, "chunk_index"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCursor:Landroid/database/Cursor;

    const-string v2, "byte_offset"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCursor:Landroid/database/Cursor;

    const-string v2, "byte_length"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_content_id"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCts:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    iget v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "extra_upload_key"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCts:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extra_chunk_size"

    int-to-long v2, v10

    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0x16

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mFile:Ljava/io/File;

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCts:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    iget-object v7, v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v11}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$2900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v12}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v0 .. v12}, Lcom/samsung/android/sdk/ssf/file/FileManager;->uploadMultiPart(Lcom/samsung/android/sdk/ssf/SsfClient;IILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;IIILcom/samsung/android/sdk/ssf/common/ConnectTimeout;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiUploadTask -> onPostExecute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction$MultiUploadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
