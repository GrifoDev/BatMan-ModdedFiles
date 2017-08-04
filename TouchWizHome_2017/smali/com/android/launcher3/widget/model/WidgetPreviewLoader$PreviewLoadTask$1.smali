.class Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

.field final synthetic val$preview:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    iput-object p2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    invoke-static {v1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->access$800(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;)Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    invoke-static {v2}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->access$900(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;)[J

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->access$1000(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;[JLandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->access$102(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    invoke-static {v0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->access$200(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    invoke-static {v0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->access$200(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
