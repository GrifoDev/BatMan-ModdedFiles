.class Lcom/android/launcher3/home/HomeBindController$25;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeBindController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeBindController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$25;->this$0:Lcom/android/launcher3/home/HomeBindController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11

    const/4 v10, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v10, :cond_2

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController$25;->this$0:Lcom/android/launcher3/home/HomeBindController;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeBindController;->access$100(Lcom/android/launcher3/home/HomeBindController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController$25;->this$0:Lcom/android/launcher3/home/HomeBindController;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeBindController;->access$100(Lcom/android/launcher3/home/HomeBindController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    mul-int/lit16 v0, v1, 0xfa

    instance-of v4, v3, Landroid/widget/Advanceable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController$25;->this$0:Lcom/android/launcher3/home/HomeBindController;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeBindController;->access$200(Lcom/android/launcher3/home/HomeBindController;)Landroid/os/Handler;

    move-result-object v4

    new-instance v6, Lcom/android/launcher3/home/HomeBindController$25$1;

    invoke-direct {v6, p0, v3}, Lcom/android/launcher3/home/HomeBindController$25$1;-><init>(Lcom/android/launcher3/home/HomeBindController$25;Landroid/view/View;)V

    int-to-long v8, v0

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController$25;->this$0:Lcom/android/launcher3/home/HomeBindController;

    const-wide/16 v6, 0x4e20

    invoke-static {v4, v6, v7}, Lcom/android/launcher3/home/HomeBindController;->access$300(Lcom/android/launcher3/home/HomeBindController;J)V

    :cond_2
    return v10
.end method
