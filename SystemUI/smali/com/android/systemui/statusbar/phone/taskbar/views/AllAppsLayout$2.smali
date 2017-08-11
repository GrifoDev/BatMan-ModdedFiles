.class Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;
.super Ljava/lang/Object;
.source "AllAppsLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2$1;
    }
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field final mLongPressed:Ljava/lang/Runnable;

.field private mTouchedView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->mTouchedView:Landroid/view/View;

    return-object v0
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->mLongPressed:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get5(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isContextMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "[DS]AllAppsLayout"

    const-string/jumbo v3, "onTouch return false. isContextMenuOpen()= true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    const/16 v3, 0x2002

    if-ne v2, v3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Z)Z

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v6

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Z)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->makeActionDownAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->mTouchedView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->mLongPressed:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1, v7}, Landroid/view/View;->setPressed(Z)V

    return v7

    :cond_5
    if-ne v0, v4, :cond_6

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isInsideAppIcon(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get4(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v2, v3, :cond_11

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get4(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v2, v3, :cond_11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_11

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get5(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-virtual {v3, v2, v4, v9}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startDrag(Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap2(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Z)V

    return v7

    :cond_6
    if-ne v0, v7, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_11

    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get4(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get4(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v2, v3, :cond_a

    :cond_7
    instance-of v2, p1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mShiftPressed:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    if-eq v2, v8, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->resetCheckState()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap6(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;I)V

    :cond_8
    :goto_1
    return v7

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap10(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Landroid/widget/CheckBox;)V

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mShiftPressed:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mLatestSelectedItemIdx:I

    if-eq v2, v8, :cond_d

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mLatestSelectedItemIdx:I

    iput v3, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get4(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    :cond_b
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    if-eq v2, v8, :cond_8

    instance-of v2, p1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->resetCheckState()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap6(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;I)V

    goto :goto_1

    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get4(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    goto :goto_2

    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCtrlPressed:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mShiftPressed:Z

    if-eqz v2, :cond_f

    :cond_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->mTouchedView:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap5(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Landroid/view/View;)V

    goto :goto_1

    :cond_f
    invoke-virtual {p1, v6}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-static {v3, p1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap4(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    :cond_11
    return v6
.end method
