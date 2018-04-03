.class public Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "RequestScreenRatioEvent.java"


# instance fields
.field public final runnable:Ljava/lang/Runnable;

.field public final task:Lcom/android/systemui/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;->runnable:Ljava/lang/Runnable;

    return-void
.end method
