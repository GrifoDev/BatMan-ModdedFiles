.class Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;
.super Landroid/database/ContentObserver;
.source "EdgeLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/EdgeLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpageNotificationObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/EdgeLight;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/home/EdgeLight;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;->this$0:Lcom/android/launcher3/home/EdgeLight;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;->this$0:Lcom/android/launcher3/home/EdgeLight;

    invoke-static {v0}, Lcom/android/launcher3/home/EdgeLight;->access$100(Lcom/android/launcher3/home/EdgeLight;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/home/EdgeLight;->access$000()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;->this$0:Lcom/android/launcher3/home/EdgeLight;

    const-string v0, "show_notification"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_2

    move v0, v8

    :goto_0
    invoke-static {v1, v0}, Lcom/android/launcher3/home/EdgeLight;->access$202(Lcom/android/launcher3/home/EdgeLight;Z)Z

    const-string v0, "EdgeLight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPage Notification onChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;->this$0:Lcom/android/launcher3/home/EdgeLight;

    invoke-static {v2}, Lcom/android/launcher3/home/EdgeLight;->access$200(Lcom/android/launcher3/home/EdgeLight;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;->this$0:Lcom/android/launcher3/home/EdgeLight;

    invoke-static {v0}, Lcom/android/launcher3/home/EdgeLight;->access$200(Lcom/android/launcher3/home/EdgeLight;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;->this$0:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v0}, Lcom/android/launcher3/home/EdgeLight;->startEdgeLight()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;->this$0:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v0}, Lcom/android/launcher3/home/EdgeLight;->stopEdgeLight()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    const-string v0, "EdgeLight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPage Notification observing error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method
