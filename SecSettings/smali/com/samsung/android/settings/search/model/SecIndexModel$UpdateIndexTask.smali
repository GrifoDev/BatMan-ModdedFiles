.class Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;
.super Landroid/os/AsyncTask;
.source "SecIndexModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/model/SecIndexModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateIndexTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsRunning:Z

.field final synthetic this$0:Lcom/samsung/android/settings/search/model/SecIndexModel;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/search/model/SecIndexModel;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;->this$0:Lcom/samsung/android/settings/search/model/SecIndexModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;->mIsRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/search/model/SecIndexModel;Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;-><init>(Lcom/samsung/android/settings/search/model/SecIndexModel;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13

    const/4 v12, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;->this$0:Lcom/samsung/android/settings/search/model/SecIndexModel;

    invoke-static {v8}, Lcom/samsung/android/settings/search/model/SecIndexModel;->-wrap0(Lcom/samsung/android/settings/search/model/SecIndexModel;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v8, "Index"

    const-string/jumbo v9, "Cannot update Index as I cannot get a writable database"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/search/model/SearchUtils;->initLogging()V

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v8, p0, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;->this$0:Lcom/samsung/android/settings/search/model/SecIndexModel;

    invoke-static {v8}, Lcom/samsung/android/settings/search/model/SecIndexModel;->-get3(Lcom/samsung/android/settings/search/model/SecIndexModel;)Lcom/samsung/android/settings/search/model/SecMenutree;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/search/model/SecMenutree;->clear()V

    iget-object v8, p0, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;->this$0:Lcom/samsung/android/settings/search/model/SecIndexModel;

    invoke-static {v8}, Lcom/samsung/android/settings/search/model/SecIndexModel;->-get3(Lcom/samsung/android/settings/search/model/SecIndexModel;)Lcom/samsung/android/settings/search/model/SecMenutree;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;->this$0:Lcom/samsung/android/settings/search/model/SecIndexModel;

    invoke-static {v9}, Lcom/samsung/android/settings/search/model/SecIndexModel;->-get2(Lcom/samsung/android/settings/search/model/SecIndexModel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;->this$0:Lcom/samsung/android/settings/search/model/SecIndexModel;

    invoke-static {v10}, Lcom/samsung/android/settings/search/model/SecIndexModel;->-get1(Lcom/samsung/android/settings/search/model/SecIndexModel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/settings/search/model/SecMenutree;->initMainMenues(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v8, "prefs_index"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;->this$0:Lcom/samsung/android/settings/search/model/SecIndexModel;

    invoke-static {v8}, Lcom/samsung/android/settings/search/model/SecIndexModel;->-get3(Lcom/samsung/android/settings/search/model/SecIndexModel;)Lcom/samsung/android/settings/search/model/SecMenutree;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;->this$0:Lcom/samsung/android/settings/search/model/SecIndexModel;

    invoke-static {v9}, Lcom/samsung/android/settings/search/model/SecIndexModel;->-get2(Lcom/samsung/android/settings/search/model/SecIndexModel;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v2, v5}, Lcom/samsung/android/settings/search/model/SecMenutree;->saveSearchItems(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v8, p0, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;->this$0:Lcom/samsung/android/settings/search/model/SecIndexModel;

    invoke-static {v8}, Lcom/samsung/android/settings/search/model/SecIndexModel;->-get2(Lcom/samsung/android/settings/search/model/SecIndexModel;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/settings/search/IndexDatabaseHelper;->setLocaleIndexed(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "Index"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Indexing locale \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' took "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v6, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " millis"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/search/model/SearchUtils;->writeLogFile()V

    :goto_0
    return-object v12

    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    const-string/jumbo v8, "Index"

    const-string/jumbo v9, "Unable to index search, out of space"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;->mIsRunning:Z

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/search/model/SecIndexModel$UpdateIndexTask;->mIsRunning:Z

    return-void
.end method
