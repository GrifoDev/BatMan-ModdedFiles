.class Lcom/android/launcher3/widget/controller/WidgetController$2;
.super Ljava/lang/Object;
.source "WidgetController.java"

# interfaces
.implements Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/controller/WidgetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/controller/WidgetController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/controller/WidgetController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetController$2;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$2;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$700(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetController$2$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/controller/WidgetController$2$1;-><init>(Lcom/android/launcher3/widget/controller/WidgetController$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
