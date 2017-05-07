.class public Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DividerButtonsVisibleEvent.java"


# instance fields
.field private flag:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->flag:I

    return-void
.end method


# virtual methods
.method public isAnimate()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->flag:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOnce()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->flag:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->flag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
