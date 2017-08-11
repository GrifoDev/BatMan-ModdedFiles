.class Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;
.super Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.source "RecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 12

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget v7, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    sget-boolean v7, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-static {v7}, Lcom/android/systemui/recents/RecentsImpl;->-get0(Lcom/android/systemui/recents/RecentsImpl;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    :goto_0
    iget-boolean v10, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v10, :cond_0

    iget-boolean v10, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v10, :cond_4

    :cond_0
    :goto_1
    invoke-virtual {v3, v4, v7, v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    new-instance v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    if-eqz v5, :cond_1

    iget v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v7, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    :cond_1
    iput v11, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput v11, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    iput-boolean v9, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    iput-boolean v9, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7, v4, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    sget-boolean v7, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-static {v7}, Lcom/android/systemui/recents/RecentsImpl;->-get0(Lcom/android/systemui/recents/RecentsImpl;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;-><init>(Lcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_2
    return-void

    :cond_3
    const/4 v7, -0x1

    goto :goto_0

    :cond_4
    move v8, v9

    goto :goto_1
.end method
