.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$DeskQuickSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setupOthers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeskQuickSettingViewVisibilityChanged(I)V
    .locals 13

    const v12, 0x7f13018c

    const v11, 0x7f130189

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v6, "PhoneStatusBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DQSVVC:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4

    move v1, v7

    :goto_0
    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getDeskPanelViewQuickSetting()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSContainer;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v7}, Lcom/android/systemui/qs/QSContainer;->setListening(Z)V

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get61(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->closeContextMenu()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getDeskQuickSettingView()Landroid/view/ViewGroup;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get61(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->closeAllTaskBarWindowExcept(I)V

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getDeskPanelViewQuickSetting()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->registerBadgeCountUpdateReceiver()V

    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    const/4 v0, 0x0

    :goto_2
    if-eqz v1, :cond_7

    const/high16 v4, 0x43340000    # 180.0f

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get21(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v6

    const-string/jumbo v9, "rotation"

    const/4 v10, 0x2

    new-array v10, v10, [F

    aput v0, v10, v8

    aput v4, v10, v7

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v6, 0x96

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get56(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    if-nez v1, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getDeskPanelViewQuickSetting()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSContainer;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v8}, Lcom/android/systemui/qs/QSContainer;->setListening(Z)V

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSContainer;->isShowingDetail()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSContainer;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    :cond_3
    return-void

    :cond_4
    move v1, v8

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$97;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getDeskPanelViewQuickSetting()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->unregisterBadgeCountUpdateReceiver()V

    goto :goto_1

    :cond_6
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    goto :goto_3
.end method
