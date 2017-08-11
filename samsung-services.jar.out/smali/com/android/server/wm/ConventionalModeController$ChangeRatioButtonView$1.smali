.class Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;
.super Ljava/lang/Object;
.source "ConventionalModeController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->makeNewButtonView()Lcom/android/server/wm/ConventionalModeController$VerticalTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    iget-object v0, v0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v0}, Lcom/android/server/wm/ConventionalModeController;->-get5(Lcom/android/server/wm/ConventionalModeController;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    iget-object v0, v0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v0}, Lcom/android/server/wm/ConventionalModeController;->-get4(Lcom/android/server/wm/ConventionalModeController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    iget-object v0, v0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    iget-object v1, v1, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v1}, Lcom/android/server/wm/ConventionalModeController;->-get4(Lcom/android/server/wm/ConventionalModeController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    iget-object v2, v2, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2}, Lcom/android/server/wm/ConventionalModeController;->-get5(Lcom/android/server/wm/ConventionalModeController;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/server/wm/ConventionalModeController;->setMaxAspectPackage(Ljava/lang/String;IZZ)V

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    iget-object v0, v0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v0}, Lcom/android/server/wm/ConventionalModeController;->-get3(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    iget-object v1, v1, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v1}, Lcom/android/server/wm/ConventionalModeController;->-get8(Lcom/android/server/wm/ConventionalModeController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    iget-object v0, v0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v0}, Lcom/android/server/wm/ConventionalModeController;->-get3(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;->this$1:Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    iget-object v1, v1, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v1}, Lcom/android/server/wm/ConventionalModeController;->-get8(Lcom/android/server/wm/ConventionalModeController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
