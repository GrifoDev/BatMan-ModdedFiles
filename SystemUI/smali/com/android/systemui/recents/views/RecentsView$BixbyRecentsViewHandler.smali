.class public Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BixbyRecentsViewHandler"
.end annotation


# instance fields
.field lastErrorNo:I

.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return-void
.end method

.method private getFocusedTask()Lcom/android/systemui/recents/model/Task;
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v5, -0x2

    iput v5, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v5}, Lcom/android/systemui/recents/views/RecentsView;->-get9(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v6

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v6, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-gtz v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5, v0, v7}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZ)Z

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public closeAll()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get9(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->hasOnlyLockedTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get7(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method

.method public closeFocusedTask()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x2

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    if-nez v1, :cond_0

    iput v4, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v5

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    if-nez v2, :cond_1

    iput v4, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v5

    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->performClick()Z

    const/4 v3, 0x1

    return v3
.end method

.method public exitLockTaskEditMode(Z)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isInLockTaskEditMode:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get5(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get4(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public focusByAppName(Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_0

    return v9

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const-string/jumbo v6, "\\s"

    const-string/jumbo v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "RecentsView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "focusByAppName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    return v9

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_3

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    iget-object v6, v3, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const-string/jumbo v7, "\\s"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6, v0, v10}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZ)Z

    return v10

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v9
.end method

.method public focusByComponentName(Landroid/content/ComponentName;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    iget-object v4, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4, v0, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZ)Z

    return v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public focusByIndex(I)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZ)Z

    return v1
.end method

.method public getLastErrorNo()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v0
.end method

.method public getTaskCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get9(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    return v0
.end method

.method public getTitleOfFocusedTask()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return-object v2
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get2(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get2(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public launchFocusedTask(Ljava/lang/String;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v8, -0x3

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    if-nez v2, :cond_0

    iput v4, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v5

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    if-nez v1, :cond_1

    iput v4, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v5

    :cond_1
    const-string/jumbo v0, "split"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v2, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-nez v0, :cond_3

    iput v8, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v5

    :cond_2
    const-string/jumbo v0, "popup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, v2, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-nez v0, :cond_4

    iput v8, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v5

    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v7

    iget-object v0, v7, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    if-nez v0, :cond_5

    iput v4, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v5

    :cond_4
    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->-wrap1(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v8

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_5
    :goto_0
    return v6

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask(I)Z

    goto :goto_0
.end method

.method public moveToNextTask()Z
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v5

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->-get9(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    const-string/jumbo v2, "RecentsView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[in moveToNextTask()] Index of task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->-get9(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    const/4 v2, -0x4

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v5

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const/4 v2, 0x1

    return v2
.end method

.method public moveToPrevTask()Z
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v5

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->-get9(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    const-string/jumbo v2, "RecentsView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[in moveToPrevTask()] Index of task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v0, :cond_1

    const/4 v2, -0x4

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v5

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v3, v5}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const/4 v2, 0x1

    return v2
.end method

.method public setLockFocusedTask(Z)Z
    .locals 6

    const/4 v3, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTaskLock:Z

    if-nez v2, :cond_0

    const/4 v2, -0x3

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v4

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_1

    iput v3, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v4

    :cond_1
    iget-boolean v2, v0, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-ne v2, p1, :cond_2

    const/4 v2, -0x4

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v4

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    if-nez v1, :cond_3

    iput v3, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    return v4

    :cond_3
    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isInLockTaskEditMode:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->performClick()Z

    :goto_0
    return v5

    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iput-boolean v5, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isInLockTaskEditMode:Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->performClick()Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isInLockTaskEditMode:Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;

    invoke-direct {v3, v5}, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0
.end method

.method public showRecentsView()Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isRecentsViewVisible:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->toggle()V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
