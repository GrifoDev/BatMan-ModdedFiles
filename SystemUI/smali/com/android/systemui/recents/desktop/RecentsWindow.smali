.class public Lcom/android/systemui/recents/desktop/RecentsWindow;
.super Landroid/app/Dialog;
.source "RecentsWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDownScrollButton:Landroid/view/View;

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field private mRecentsCloseAllButton:Landroid/widget/Button;

.field mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

.field mRootView:Landroid/widget/FrameLayout;

.field private mScrollButtonContainer:Landroid/widget/LinearLayout;

.field mStack:Lcom/android/systemui/recents/model/TaskStack;

.field private mUpScrollButton:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/desktop/RecentsWindow;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mScrollButtonContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f1001de

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0204b2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->requestWindowFeature(I)Z

    return-void
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    const/4 v1, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x82f

    const/16 v4, 0x200

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string/jumbo v1, "RecentsWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x7f1001df

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0
.end method

.method private updateCloseAllButtonLayout()V
    .locals 10

    invoke-static {}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->getAttr()Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v5

    iget v6, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutWidth:I

    iget v7, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewWidth:I

    mul-int/2addr v7, v5

    iget v8, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewGap:I

    add-int/lit8 v9, v5, -0x1

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x2

    const/4 v6, 0x4

    if-gt v5, v6, :cond_0

    iget v3, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mCloseAllMarginTopRow1:I

    iget v6, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mCloseAllMarginRight:I

    add-int v2, v6, v1

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/16 v6, 0x33

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget v3, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mCloseAllMarginTopRow2:I

    iget v2, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mCloseAllMarginRight:I

    goto :goto_0

    :cond_1
    const/16 v6, 0x35

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method private updateCloseAllButtonVisibility(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTaskLock:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->hasOnlyLockedTasks()Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTaskLock:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isInLockTaskEditMode:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public handleMoveButtonsEnabled(ZZ)V
    .locals 7

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v3, "handleArrowButtonsEnabled(%b, %b)\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    if-eqz p2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public hide()V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DesktopModeChangedEvent;)V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBusEvent(DesktopModeChangedEvent)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideRecentsEvent;)V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBusEvent(HideRecentsEvent)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->launchFocusedTask()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;)V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBusEvent(LaunchTaskFailedEvent)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;)V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBusEvent(UpdateLayoutEvent)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateCloseAllButtonLayout()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string/jumbo v2, "package"

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1080c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v4, v2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;->show:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateCloseAllButtonVisibility(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v2, "Recents_Window"

    const-string/jumbo v3, "OnClickRemoveAllButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_2

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTaskLock:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v4, v2}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v4, v2}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->scrollUpVisibleLine()V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->scrollDownVisibleLine()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f13042b
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "Recents_Window"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f04015d

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setContentView(I)V

    const v1, 0x7f130251

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRootView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/systemui/recents/desktop/RecentsWindow$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/desktop/RecentsWindow$1;-><init>(Lcom/android/systemui/recents/desktop/RecentsWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f130429

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setCallback(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->bindViews(Landroid/view/ViewGroup;)V

    const v1, 0x7f13042e

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f13042a

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mScrollButtonContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f13042b

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f13042c

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f13042d

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyViewStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onDetachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onKeyDown(%s)\n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v5

    :sswitch_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v5

    :sswitch_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->UP:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v5

    :sswitch_3
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->DOWN:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v5

    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->launchFocusedTask()V

    return v5

    :sswitch_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v5

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_6
        0x70 -> :sswitch_6
    .end sparse-switch
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateRecentsTasks()V

    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateCloseAllButtonLayout()V

    return-void
.end method

.method protected onStop()V
    .locals 4

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onTaskCountChanged(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateCloseAllButtonVisibility(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public show()V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public updateEmptyViewVisibility(I)V
    .locals 2

    const/4 v1, 0x0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateRecentsTasks()V
    .locals 11

    const/16 v8, 0x8

    const-string/jumbo v9, "Recents_Window"

    const-string/jumbo v10, "updateRecentsTasks is getting called"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v9

    if-nez v9, :cond_1

    iget-boolean v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    :goto_0
    const/4 v10, -0x1

    invoke-virtual {v3, v4, v10, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v3, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskThumbnail(Lcom/android/systemui/recents/model/Task;)V

    :cond_2
    new-instance v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    iget v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput v9, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    if-lt v6, v8, :cond_4

    :goto_1
    iput v8, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput v8, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9, v4, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v10, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->reload(Lcom/android/systemui/recents/model/TaskStack;)V

    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/desktop/RecentsWindow;->onTaskCountChanged(I)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateEmptyViewVisibility(I)V

    return-void

    :cond_3
    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    move v8, v6

    goto :goto_1
.end method
