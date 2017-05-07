.class Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;
.super Ljava/lang/Object;
.source "AppsScreenGridPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AppsScreenGridPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    # getter for: Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v4}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isSwitchingState()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v1, v5, [I

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    # getter for: Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v4}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$100(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/Launcher;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    aget v4, v1, v6

    if-ne v4, v2, :cond_1

    aget v4, v1, v7

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    # getter for: Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$200(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    # getter for: Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$200(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/view/View;

    move-result-object v4

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    # getter for: Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$200(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->setApplyDescription(Landroid/view/View;Z)V

    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    # invokes: Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateBtnForScreenGrid(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$300(Lcom/android/launcher3/allapps/AppsScreenGridPanel;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    # getter for: Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v4}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v4

    invoke-virtual {v4, v7, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->changeScreenGrid(ZII)Z

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertClickGridButtonLog(IIZ)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    # getter for: Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$200(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    # getter for: Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$200(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    # getter for: Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$200(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->setApplyDescription(Landroid/view/View;Z)V

    goto :goto_1
.end method
