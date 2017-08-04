.class Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest$1;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest$1;->this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest$1;->this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    invoke-static {v0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->access$200(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest$1;->this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    invoke-static {v0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->access$200(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest$1;->this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;

    invoke-static {v2}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;->access$300(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;)Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->access$100(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest$1;->this$1:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;

    invoke-static {v0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;->access$300(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;)Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->access$102(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
