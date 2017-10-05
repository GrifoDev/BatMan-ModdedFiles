.class Lcom/android/launcher3/home/LauncherAppWidgetHostView$1;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-static {v3}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$000(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$100(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x42700000    # 60.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v0, v4

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$202(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Z)Z

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iget-object v3, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-static {v3}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$200(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-static {v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$302(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Z)Z

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
