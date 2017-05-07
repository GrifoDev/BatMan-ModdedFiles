.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$3$1;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;->onAnimationStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$3$1;->this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/SnapViewRequestEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$3$1;->this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;

    iget-object v2, v2, Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get3(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/component/SnapViewRequestEvent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method
