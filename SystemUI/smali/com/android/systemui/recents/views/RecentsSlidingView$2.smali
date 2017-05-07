.class Lcom/android/systemui/recents/views/RecentsSlidingView$2;
.super Ljava/lang/Object;
.source "RecentsSlidingView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsSlidingView;->bindViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsSlidingView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$2;->this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isRecentsViewVisible:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$2;->this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$2;->this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method
