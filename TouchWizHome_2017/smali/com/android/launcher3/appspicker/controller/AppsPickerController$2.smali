.class Lcom/android/launcher3/appspicker/controller/AppsPickerController$2;
.super Ljava/lang/Object;
.source "AppsPickerController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/controller/AppsPickerController;->initStageView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$2;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$2;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v4}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "AppsPickerController"

    const-string v5, "onGlobalLayout mContainerview is null, so return"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$2;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v4}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$2;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v4}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$2;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v4}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v5, v3, v0

    if-eq v4, v5, :cond_0

    sub-int v4, v3, v0

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$2;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v4}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
