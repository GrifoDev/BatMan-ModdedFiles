.class Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;
.super Landroid/os/AsyncTask;
.source "CapturePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/capture/CapturePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
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
.field bitmap:Landroid/graphics/Bitmap;

.field captureTime:J

.field final synthetic this$0:Lcom/android/launcher3/util/capture/CapturePreview;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/capture/CapturePreview;Landroid/graphics/Bitmap;J)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    iput-wide p3, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->captureTime:J

    return-void
.end method

.method private getTargetFile(Z)Ljava/io/File;
    .locals 5

    iget-object v3, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    iget-object v4, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-static {v4}, Lcom/android/launcher3/util/capture/CapturePreview;->access$100(Lcom/android/launcher3/util/capture/CapturePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher3/util/capture/CapturePreview;->access$300(Lcom/android/launcher3/util/capture/CapturePreview;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    const-string v3, "/homescreenPreviewLand.png"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "/homescreenPreview.png"

    goto :goto_1
.end method

.method private saveCapturedBitmap(Landroid/graphics/Bitmap;J)Z
    .locals 10

    const/4 v4, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-nez p1, :cond_1

    const-string v4, "CapturePreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to save because bitmap was wrong : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v5

    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v6, "CapturePreview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start save : compress capture bitmap : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_2

    const-string v4, "CapturePreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to save because size was too small : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v6, v6, v9

    if-lez v6, :cond_5

    move v2, v4

    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->saveToFileCaptureScreen(Ljava/io/ByteArrayOutputStream;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_6

    const-string v0, "homescreenPreview_capturetime"

    :goto_2
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-static {v5}, Lcom/android/launcher3/util/capture/CapturePreview;->access$100(Lcom/android/launcher3/util/capture/CapturePreview;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-static {v5}, Lcom/android/launcher3/util/capture/CapturePreview;->access$100(Lcom/android/launcher3/util/capture/CapturePreview;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, p2, p3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    iget-object v5, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-static {v5}, Lcom/android/launcher3/util/capture/CapturePreview;->access$200(Lcom/android/launcher3/util/capture/CapturePreview;)I

    move-result v7

    if-eqz v2, :cond_7

    const/4 v5, -0x3

    :goto_4
    and-int/2addr v5, v7

    invoke-static {v6, v5}, Lcom/android/launcher3/util/capture/CapturePreview;->access$202(Lcom/android/launcher3/util/capture/CapturePreview;I)I

    :cond_4
    move v5, v4

    goto/16 :goto_0

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    const-string v0, "homescreenPreview_capturetime_land"

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v5, "CapturePreview"

    const-string v6, "fail to write the capture time to setting db"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    const/4 v5, -0x2

    goto :goto_4
.end method

.method private saveToFileCaptureScreen(Ljava/io/ByteArrayOutputStream;Z)Z
    .locals 9

    const/4 v5, 0x0

    invoke-direct {p0, p2}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->getTargetFile(Z)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/launcher3/util/capture/CapturePreview;->access$402(Lcom/android/launcher3/util/capture/CapturePreview;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->getTargetFile(Z)Ljava/io/File;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz p1, :cond_1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    const-string v6, "CapturePreview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save result :  path : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return v5

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "CapturePreview"

    const-string v7, "IOException OutputStream.flush : "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    const-string v6, "CapturePreview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v6, "CapturePreview"

    const-string v7, "IOException OutputStream.flush : "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_3
    :try_start_5
    const-string v6, "CapturePreview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException ByteArrayOutputStream.writeTo : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    const-string v6, "CapturePreview"

    const-string v7, "IOException OutputStream.flush : "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_5
    throw v5

    :catch_5
    move-exception v0

    const-string v6, "CapturePreview"

    const-string v7, "IOException OutputStream.flush : "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v3, v4

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    iget-wide v2, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->captureTime:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->saveCapturedBitmap(Landroid/graphics/Bitmap;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 2

    const-string v0, "CapturePreview"

    const-string v1, "cancelled capturetask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CapturePreview"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/capture/CapturePreview$SaveTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
