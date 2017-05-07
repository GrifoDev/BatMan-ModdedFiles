.class Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;
.super Ljava/lang/Thread;
.source "SamsungStartingWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungStartingWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveCapturedScreenshot"
.end annotation


# instance fields
.field mStartingWindowTag:Ljava/lang/String;

.field scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

.field scHeight:I

.field scKey:Ljava/lang/String;

.field scRot:I

.field scTaskUserId:I

.field scTempBitmap:Landroid/graphics/Bitmap;

.field scWidth:I

.field final synthetic this$0:Lcom/android/server/wm/SamsungStartingWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SamsungStartingWindowManager;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    iput v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scRot:I

    iput v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTaskUserId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/SamsungStartingWindowManager;Ljava/lang/String;Landroid/graphics/Bitmap;II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    iput v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scRot:I

    iput v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTaskUserId:I

    invoke-static {p1, v0}, Lcom/android/server/wm/SamsungStartingWindowManager;->-wrap2(Lcom/android/server/wm/SamsungStartingWindowManager;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    invoke-static {v0}, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->-get0(Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->mStartingWindowTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    iput-object p0, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->captureSavingThread:Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;

    iput-object p2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scRot:I

    iput-object p3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTaskUserId:I

    return-void
.end method

.method private removeOldestCaptureFiles()V
    .locals 12

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-static {v6}, Lcom/android/server/wm/SamsungStartingWindowManager;->-wrap1(Lcom/android/server/wm/SamsungStartingWindowManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v5, "SamsungStartingWindowManager"

    const-string/jumbo v6, "CustomStartingWindow There are no folders to delete"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get6()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v7, v2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v3, v2, v6

    if-nez v4, :cond_2

    move-object v4, v3

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get7()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v6, v2

    :goto_2
    if-ge v5, v6, :cond_6

    aget-object v3, v2, v5

    if-nez v4, :cond_5

    move-object v4, v3

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_4

    move-object v4, v3

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-static {v5, v4}, Lcom/android/server/wm/SamsungStartingWindowManager;->-wrap4(Lcom/android/server/wm/SamsungStartingWindowManager;Ljava/io/File;)V

    :cond_7
    const-string/jumbo v5, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CustomStartingWindow oldest file deleted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    iput-object v1, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->captureSavingThread:Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;

    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 48

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v36, 0x0

    const/16 v27, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string/jumbo v4, "SamsungStartingWindowManager"

    const-string/jumbo v6, "CustomStartingWindow there is no component. skip saving"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->clear()V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    array-length v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v41, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v6, v41, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    aget-object v6, v41, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->mStartingWindowTag:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    const-string/jumbo v4, "SamsungStartingWindowManager"

    const-string/jumbo v6, "CustomStartingWindow there is no Bitmap. skip saving"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->clear()V

    return-void

    :cond_1
    const-string/jumbo v4, "SamsungStartingWindowManager"

    const-string/jumbo v6, "CustomStartingWindow key is invalid. skip saving"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    if-nez v4, :cond_3

    const-string/jumbo v4, "SamsungStartingWindowManager"

    const-string/jumbo v6, "CustomStartingWindow there is no matched customStartingWindowData. skip saving"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->clear()V

    return-void

    :cond_3
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v6, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v22

    const/16 v29, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_6

    const/16 v30, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    move/from16 v0, v22

    if-eq v4, v0, :cond_5

    const/4 v12, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    add-int v29, v29, v4

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    add-int v30, v30, v4

    goto :goto_1

    :cond_6
    if-eqz v12, :cond_7

    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow Black screen. skip capture saving "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    sub-long v44, v44, v14

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow NORMAL CASE : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    sub-long v44, v44, v14

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    iget-object v4, v4, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    iget-object v4, v4, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    iget v4, v4, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->numHole:I

    if-lez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    iget-object v4, v4, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    iget-object v4, v4, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->hole:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    iget-object v4, v4, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    iget-object v4, v4, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->hole:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    iget-object v4, v4, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    iget-object v4, v4, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->hole:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    iget-object v4, v4, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    iget-object v4, v4, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->hole:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v39, v0

    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow ("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ")"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    sub-int v7, v39, v8

    sub-int v11, v13, v9

    add-int v4, v8, v7

    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v4, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v7, v4, v8

    :cond_8
    add-int v4, v9, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v4, v6, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v11, v4, v9

    :cond_9
    if-lez v7, :cond_f

    if-lez v11, :cond_f

    mul-int v4, v7, v11

    new-array v5, v4, [I

    const/16 v40, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/16 v27, 0x1

    :goto_2
    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow set transparent pixels "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    sub-long v44, v44, v14

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_3
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scRot:I

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    :goto_4
    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow ImageRotation "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    sub-long v44, v44, v14

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-static {}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get5()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v44

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    invoke-static {}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get5()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v46

    move-wide/from16 v0, v46

    long-to-double v0, v0

    move-wide/from16 v46, v0

    div-double v44, v44, v46

    const-wide/high16 v46, 0x4059000000000000L    # 100.0

    mul-double v32, v44, v46

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    cmpg-double v4, v32, v44

    if-gez v4, :cond_b

    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow there is only "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, "% space. remove oldest capture"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->removeOldestCaptureFiles()V

    :cond_b
    const/16 v25, 0x0

    const/16 v23, 0x0

    const/16 v34, 0x0

    const/16 v42, 0x0

    const/16 v37, 0x0

    :try_start_3
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v4, v6, :cond_14

    new-instance v35, Ljava/io/File;

    invoke-static {}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get6()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v34, v35

    :goto_6
    if-eqz v27, :cond_15

    new-instance v28, Ljava/io/File;

    const-string/jumbo v4, "hole"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->mkdirs()Z

    :cond_c
    new-instance v43, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ".tmp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v38, Ljava/io/File;

    move-object/from16 v0, v38

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/SamsungStartingWindowManager;->encodeImageToRawFile(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v37, v38

    move-object/from16 v42, v43

    :goto_7
    :try_start_6
    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow write "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scRot:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    sub-long v44, v44, v14

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->delete()Z

    :cond_d
    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v4, v6, :cond_17

    sget-object v4, Lcom/android/server/wm/SamsungStartingWindowManager;->mCapturedScreensLandFile:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v36, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->clear()V

    if-eqz v25, :cond_e

    :try_start_7
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_e
    :goto_9
    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow copy "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scRot:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    sub-long v44, v44, v14

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    return-void

    :cond_f
    :try_start_8
    const-string/jumbo v4, "SamsungStartingWindowManager"

    const-string/jumbo v6, "CustomStartingWindow set transparent hole information is invalid"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    :catch_0
    move-exception v19

    :try_start_9
    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow e : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow width  : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ", height : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v20

    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_5

    :cond_10
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    iget-object v4, v4, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scCustomStartingWindowData:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    iget-object v4, v4, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    iget-boolean v4, v4, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->isBlur:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v6}, Lcom/android/server/wm/SamsungStartingWindowManager;->-wrap0(Lcom/android/server/wm/SamsungStartingWindowManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow make blur bitmap"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    sub-long v44, v44, v14

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scRot:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scRot:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {v4, v6, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v36

    :goto_b
    new-instance v31, Landroid/graphics/Matrix;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scRot:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scHeight:I

    move-object/from16 v0, v31

    invoke-static {v4, v6, v10, v0}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v4, -0x1000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scHeight:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {v4, v6, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v36

    goto :goto_b

    :cond_14
    :try_start_b
    new-instance v35, Ljava/io/File;

    invoke-static {}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get7()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v34, v35

    goto/16 :goto_6

    :cond_15
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->mkdirs()Z

    :cond_16
    new-instance v43, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ".tmp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    new-instance v38, Ljava/io/File;

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    new-instance v26, Ljava/io/FileOutputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v37, v38

    move-object/from16 v42, v43

    move-object/from16 v25, v26

    goto/16 :goto_7

    :cond_17
    :try_start_f
    sget-object v4, Lcom/android/server/wm/SamsungStartingWindowManager;->mCapturedScreensPortFile:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_8

    :catch_2
    move-exception v17

    :goto_c
    :try_start_10
    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow file saving FNE. just skip it."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v36, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->clear()V

    if-eqz v25, :cond_18

    :try_start_11
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    :cond_18
    :goto_d
    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow copy "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scRot:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    sub-long v44, v44, v14

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :catch_3
    move-exception v18

    goto/16 :goto_9

    :catch_4
    move-exception v18

    :goto_e
    :try_start_12
    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow file saving IOE. just skip it."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v36, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->clear()V

    if-eqz v25, :cond_19

    :try_start_13
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    :cond_19
    :goto_f
    const-string/jumbo v4, "SamsungStartingWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomStartingWindow copy "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scRot:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    sub-long v44, v44, v14

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :catch_5
    move-exception v18

    goto :goto_f

    :catch_6
    move-exception v18

    goto/16 :goto_d

    :catchall_0
    move-exception v4

    :goto_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v36, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->clear()V

    if-eqz v25, :cond_1a

    :try_start_14
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    :cond_1a
    :goto_11
    const-string/jumbo v6, "SamsungStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "CustomStartingWindow copy "

    move-object/from16 v0, v44

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->scRot:I

    move/from16 v44, v0

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v44, ", "

    move-object/from16 v0, v44

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    sub-long v44, v44, v14

    move-wide/from16 v0, v44

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v4

    :catch_7
    move-exception v18

    goto :goto_11

    :catchall_1
    move-exception v4

    move-object/from16 v42, v43

    goto :goto_10

    :catchall_2
    move-exception v4

    move-object/from16 v37, v38

    move-object/from16 v42, v43

    goto :goto_10

    :catchall_3
    move-exception v4

    move-object/from16 v37, v38

    move-object/from16 v42, v43

    move-object/from16 v25, v26

    goto :goto_10

    :catch_8
    move-exception v17

    move-object/from16 v42, v43

    goto/16 :goto_c

    :catch_9
    move-exception v17

    move-object/from16 v37, v38

    move-object/from16 v42, v43

    goto/16 :goto_c

    :catch_a
    move-exception v17

    move-object/from16 v37, v38

    move-object/from16 v42, v43

    move-object/from16 v25, v26

    goto/16 :goto_c

    :catch_b
    move-exception v18

    move-object/from16 v42, v43

    goto/16 :goto_e

    :catch_c
    move-exception v18

    move-object/from16 v37, v38

    move-object/from16 v42, v43

    goto/16 :goto_e

    :catch_d
    move-exception v18

    move-object/from16 v37, v38

    move-object/from16 v42, v43

    move-object/from16 v25, v26

    goto/16 :goto_e
.end method
