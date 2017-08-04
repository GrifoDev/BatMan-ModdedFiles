.class Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener$1;
.super Ljava/lang/Object;
.source "WidgetItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->onFutureDone(Lcom/android/launcher3/util/threadpool/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;

.field final synthetic val$future:Lcom/android/launcher3/util/threadpool/Future;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;Lcom/android/launcher3/util/threadpool/Future;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener$1;->this$1:Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;

    iput-object p2, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener$1;->val$future:Lcom/android/launcher3/util/threadpool/Future;

    iput-object p3, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener$1;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener$1;->val$future:Lcom/android/launcher3/util/threadpool/Future;

    invoke-interface {v0}, Lcom/android/launcher3/util/threadpool/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener$1;->this$1:Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;

    iget-object v0, v0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->this$0:Lcom/android/launcher3/widget/view/WidgetItemView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener$1;->this$1:Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;

    invoke-static {v0}, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->access$000(Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;)Lcom/android/launcher3/widget/view/WidgetPageLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener$1;->this$1:Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;

    iget-object v1, v1, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->this$0:Lcom/android/launcher3/widget/view/WidgetItemView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener$1;->this$1:Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;

    iget-object v0, v0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->this$0:Lcom/android/launcher3/widget/view/WidgetItemView;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener$1;->val$object:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener$1;->this$1:Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;

    invoke-static {v2}, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->access$100(Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener$1;->this$1:Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;

    invoke-static {v3}, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;->access$200(Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->postToSetPreview(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method
