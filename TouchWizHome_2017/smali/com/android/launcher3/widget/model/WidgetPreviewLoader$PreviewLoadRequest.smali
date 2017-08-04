.class public Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/model/WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewLoadRequest"
.end annotation


# instance fields
.field private final mTask:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

.field final synthetic this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;)Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    invoke-static {v0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->access$100(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;->this$0:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    invoke-static {v0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->access$400(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest$1;-><init>(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
