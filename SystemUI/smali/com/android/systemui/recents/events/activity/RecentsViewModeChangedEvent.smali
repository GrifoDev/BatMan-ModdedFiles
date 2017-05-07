.class public Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "RecentsViewModeChangedEvent.java"


# instance fields
.field public final isDone:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;->isDone:Z

    return-void
.end method
