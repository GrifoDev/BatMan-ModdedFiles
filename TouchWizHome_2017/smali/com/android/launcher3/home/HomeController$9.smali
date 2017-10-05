.class Lcom/android/launcher3/home/HomeController$9;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->completeTwoStageWidgetDrop(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$appWidgetId:I

.field final synthetic val$cellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field final synthetic val$hostView:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;ILandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$9;->this$0:Lcom/android/launcher3/home/HomeController;

    iput p2, p0, Lcom/android/launcher3/home/HomeController$9;->val$appWidgetId:I

    iput-object p3, p0, Lcom/android/launcher3/home/HomeController$9;->val$hostView:Landroid/appwidget/AppWidgetHostView;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeController$9;->val$cellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$9;->this$0:Lcom/android/launcher3/home/HomeController;

    iget v1, p0, Lcom/android/launcher3/home/HomeController$9;->val$appWidgetId:I

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController$9;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeController;->access$1600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController$9;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeController;->access$1600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController$9;->val$hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/home/HomeController;->access$1700(Lcom/android/launcher3/home/HomeController;IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$9;->this$0:Lcom/android/launcher3/home/HomeController;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$9;->val$hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController$9;->val$cellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$9;->this$0:Lcom/android/launcher3/home/HomeController;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$9;->val$hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController$9;->val$cellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeController;->enterResizeStateDelay(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$9;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    goto :goto_0
.end method
