.class Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowEventListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_pm_ActivityInfo_info_LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_stackdivider_Divider$MultiWindowEventListener_lambda$3(ZZLandroid/content/pm/ActivityInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get2(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->setDockedStackMinimized(ZZLandroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public onMultiWindowAppTransitionFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get1(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/Divider;->-set1(Lcom/android/systemui/stackdivider/Divider;Z)Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/Divider;->-wrap1(Lcom/android/systemui/stackdivider/Divider;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$1;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMultiWindowDockedMinimizedChanged(ZZLandroid/content/pm/ActivityInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_pm_ActivityInfo_info_LambdaImpl0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_pm_ActivityInfo_info_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;ZZLandroid/content/pm/ActivityInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMultiWindowFocusChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/stackdivider/Divider;->-set3(Lcom/android/systemui/stackdivider/Divider;Z)Z

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get4(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v1

    if-ne v1, p4, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v1

    if-eq v1, p3, :cond_6

    :cond_0
    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    const/4 v1, 0x1

    if-ne p3, v1, :cond_6

    :cond_1
    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p6, :cond_4

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get6(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v1

    const-string/jumbo v2, "isLandscape"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eq v1, v2, :cond_2

    return-void

    :cond_2
    const-string/jumbo v1, "isOppositeTaskRecents"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v1, "mMinWidth"

    const/4 v2, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v1, "mMinHeight"

    const/4 v2, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v1, -0x1

    if-ne v9, v1, :cond_3

    const/4 v1, -0x1

    if-eq v8, v1, :cond_4

    :cond_3
    const/4 v5, 0x1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1, p1, v3, v9, v8}, Lcom/android/systemui/stackdivider/Divider;->-wrap0(Lcom/android/systemui/stackdivider/Divider;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    const-string/jumbo v1, "startActivityFromRecents"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {v1, p3, v3}, Lcom/android/systemui/stackdivider/DividerView;->initTaskBounds(ILandroid/graphics/Rect;)V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerView;->shouldIgnoreAutoResize()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v7, :cond_8

    :cond_6
    :goto_0
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v6, v10}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1, p3, p4}, Lcom/android/systemui/stackdivider/Divider;->-wrap4(Lcom/android/systemui/stackdivider/Divider;II)V

    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    sget v2, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->checkDividerFlag(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerView;->isFlingAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {v1, v3, p3}, Lcom/android/systemui/stackdivider/DividerView;->calculateAutoResizablePosition(Landroid/graphics/Rect;I)I

    move-result v4

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/stackdivider/DividerView;->validateAutoResizePosition(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lcom/android/systemui/stackdivider/DividerView;->needToShowHiddenArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/4 v6, 0x1

    move v2, p3

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/stackdivider/Divider;->-wrap3(Lcom/android/systemui/stackdivider/Divider;ILandroid/graphics/Rect;IZZ)V

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {v1, p3, v3}, Lcom/android/systemui/stackdivider/DividerView;->haveExcessOrUnfilledArea(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get4(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v1

    if-ne v1, p4, :cond_6

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/4 v6, 0x0

    move v2, p3

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/stackdivider/Divider;->-wrap3(Lcom/android/systemui/stackdivider/Divider;ILandroid/graphics/Rect;IZZ)V

    goto/16 :goto_0
.end method

.method public onMultiWindowScreenFreezeAnimationFinished()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    sget v1, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setDividerFlag(IZ)V

    return-void
.end method

.method public onMultiWindowSettingChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView;->onMultiWindowSettingChanged(Z)V

    return-void
.end method

.method public onSnapWindowDismissed(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView;->showSnapWindowDismissToast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZ)V

    :cond_0
    return-void
.end method
