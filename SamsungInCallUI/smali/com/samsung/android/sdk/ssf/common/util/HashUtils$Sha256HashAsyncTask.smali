.class public Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/common/util/HashUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sha256HashAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private inputStreams:[Ljava/io/InputStream;

.field private listener:Lcom/samsung/android/sdk/ssf/common/util/HashUtils$HashingListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ssf/common/util/HashUtils$HashingListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->listener:Lcom/samsung/android/sdk/ssf/common/util/HashUtils$HashingListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->inputStreams:[Ljava/io/InputStream;

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->listener:Lcom/samsung/android/sdk/ssf/common/util/HashUtils$HashingListener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->doInBackground([Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v1, "Sha256HashAsyncTask doInBackground"

    const-string v3, "HashUtils"

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->inputStreams:[Ljava/io/InputStream;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->inputStreams:[Ljava/io/InputStream;

    if-nez v1, :cond_0

    const-string v1, "inputStreams is null"

    const-string v2, "HashUtils"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->inputStreams:[Ljava/io/InputStream;

    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    if-nez v6, :cond_1

    const-string v1, "One of inputStreams is null"

    const-string v2, "HashUtils"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException during hashing async task : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HashUtils"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v7, "SHA-256"

    invoke-static {v7}, Lcom/samsung/android/sdk/ssf/common/util/HashUtils;->access$000(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    :goto_2
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v6, v3, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v1, "Cancelled during digest update"

    const-string v2, "HashUtils"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v7, v3, v9, v8}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/sdk/ssf/common/util/HashUtils;->access$100([B)[C

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const-string v0, "Sha256HashAsyncTask onCancelled"

    const-string v1, "HashUtils"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->listener:Lcom/samsung/android/sdk/ssf/common/util/HashUtils$HashingListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$HashingListener;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
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

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "Sha256HashAsyncTask onPostExecute"

    const-string v1, "HashUtils"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :try_start_0
    const-string v0, "hashValues is null"

    const-string v1, "HashUtils"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->listener:Lcom/samsung/android/sdk/ssf/common/util/HashUtils$HashingListener;

    const-string v1, "Illegal state during hashing"

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$HashingListener;->onError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->inputStreams:[Ljava/io/InputStream;

    array-length v1, v1

    if-eq v0, v1, :cond_2

    const-string v0, "hashValues has invalid size"

    const-string v1, "HashUtils"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->listener:Lcom/samsung/android/sdk/ssf/common/util/HashUtils$HashingListener;

    if-nez v0, :cond_3

    const-string v0, "HashingListener instance is null"

    const-string v1, "HashUtils"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$Sha256HashAsyncTask;->listener:Lcom/samsung/android/sdk/ssf/common/util/HashUtils$HashingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/ssf/common/util/HashUtils$HashingListener;->onHashingComplete(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
