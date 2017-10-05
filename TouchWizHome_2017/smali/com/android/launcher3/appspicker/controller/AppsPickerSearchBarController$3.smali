.class Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$3;
.super Ljava/lang/Object;
.source "AppsPickerSearchBarController.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$3;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    const v4, 0x7f09012c

    const/4 v3, 0x1

    if-nez p2, :cond_0

    invoke-static {p1, v3}, Lcom/android/launcher3/util/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$3;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-static {v2}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$3;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-static {v2}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$3;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-static {v2}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->access$300(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getPickerMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901a7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090144

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$3;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-static {v2}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901a2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901ae

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
