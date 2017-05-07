.class public Lcom/android/launcher3/common/view/LauncherRootView;
.super Lcom/android/launcher3/common/base/view/InsettableFrameLayout;
.source "LauncherRootView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/launcher3/util/event/ScrollDetector;->setTouchEvent(Landroid/view/MotionEvent;)I

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
