.class public Lcom/android/launcher3/common/view/LauncherRootView;
.super Lcom/android/launcher3/common/base/view/InsettableFrameLayout;
.source "LauncherRootView.java"


# static fields
.field public static sScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    invoke-direct {v0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/view/LauncherRootView;->sScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/common/view/LauncherRootView;->sScrollHelperByRootView:Lcom/android/launcher3/common/view/ScrollHelperByRootView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setTouchEvent(Landroid/view/MotionEvent;)I

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
