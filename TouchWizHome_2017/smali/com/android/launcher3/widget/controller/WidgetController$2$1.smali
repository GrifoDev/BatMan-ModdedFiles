.class Lcom/android/launcher3/widget/controller/WidgetController$2$1;
.super Ljava/lang/Object;
.source "WidgetController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/controller/WidgetController$2;->onLoadComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/widget/controller/WidgetController$2;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/controller/WidgetController$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetController$2$1;->this$1:Lcom/android/launcher3/widget/controller/WidgetController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$2$1;->this$1:Lcom/android/launcher3/widget/controller/WidgetController$2;

    iget-object v1, v1, Lcom/android/launcher3/widget/controller/WidgetController$2;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$500(Lcom/android/launcher3/widget/controller/WidgetController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$2$1;->this$1:Lcom/android/launcher3/widget/controller/WidgetController$2;

    iget-object v1, v1, Lcom/android/launcher3/widget/controller/WidgetController$2;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$600(Lcom/android/launcher3/widget/controller/WidgetController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$2$1;->this$1:Lcom/android/launcher3/widget/controller/WidgetController$2;

    iget-object v1, v1, Lcom/android/launcher3/widget/controller/WidgetController$2;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->invalidateWigetItems()V

    :cond_0
    const-string v1, "WidgetController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadComplete : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController$2$1;->this$1:Lcom/android/launcher3/widget/controller/WidgetController$2;

    iget-object v3, v3, Lcom/android/launcher3/widget/controller/WidgetController$2;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v3}, Lcom/android/launcher3/widget/controller/WidgetController;->access$500(Lcom/android/launcher3/widget/controller/WidgetController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v1, "WidgetController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadComplete : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController$2$1;->this$1:Lcom/android/launcher3/widget/controller/WidgetController$2;

    iget-object v3, v3, Lcom/android/launcher3/widget/controller/WidgetController$2;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v3}, Lcom/android/launcher3/widget/controller/WidgetController;->access$500(Lcom/android/launcher3/widget/controller/WidgetController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
