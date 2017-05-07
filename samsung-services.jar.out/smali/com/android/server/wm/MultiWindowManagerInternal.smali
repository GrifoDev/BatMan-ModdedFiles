.class public Lcom/android/server/wm/MultiWindowManagerInternal;
.super Ljava/lang/Object;
.source "MultiWindowManagerInternal.java"

# interfaces
.implements Lcom/android/server/wm/IMultiWindowManagerInternalBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_ANIM:Z

.field public static final SAFE_DEBUG:Z

.field private static final SLIDE_RESTORE_ORIGINAL_BOUNDS_DISTANCE:I = 0x1f4

.field private static final SLIDE_VISIBLE_AREA:I = 0x19

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerInternal"

.field private static mJustOnceBlink:Z


# instance fields
.field private mAutoResizingEnabled:Z

.field private mCoolDownFreeformRequested:Z

.field private mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

.field private mEnsureDockedBounds:Landroid/graphics/Rect;

.field private mEnsureDockedResizing:Z

.field private mFakedRelaunchAnimTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mFeeformAlwaysVisible:Z

.field private mForceHideFloatingMultiWindow:Z

.field mFreeformRelaunchAnimState:I

.field private mFreeformRoundedCorner:F

.field private mFreeformTaskIdToOpen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFreeformTemporaryInvisible:Z

.field private mGrantPermissionComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

.field private final mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

.field private mIsBottomStackFullyAdjustedForIME:Z

.field private mIsDividerDragging:Z

.field private mIsRotationAnimating:Z

.field private mIsSoftInputForceHidden:Z

.field private mLocalForceHideFloatingMultiWindow:Z

.field private mMinimizeContainerBounds:Landroid/graphics/Rect;

.field private mMinimizeSoftInput:Z

.field mMouseConnectedForDesktopMode:Z

.field private final mMultiWindowDividerPanelListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/multiwindow/IMultiWindowEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

.field private mOrientationChanging:Z

.field mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

.field mSplitRelaunchAnimState:I

.field private mSplitRelaunchClosingToken:Lcom/android/server/wm/AppWindowToken;

.field private mSplitRelaunchOpeningToken:Lcom/android/server/wm/AppWindowToken;

.field private final mStacksAdjustedForIme:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskIdToResizeInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpDimBounds:Landroid/graphics/Rect;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpSlideOriginalBounds:Landroid/graphics/Rect;

.field private mTokensResizedInSplit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private mhasIMEHeightChanged:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowDividerPanelListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskIdToResizeInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/MultiWindowManagerInternal;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowManagerInternal;->clearFakedRelaunchAnimTokensLocked(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->SAFE_DEBUG:Z

    sget-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    sget-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mJustOnceBlink:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRelaunchAnimState:I

    iput v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchAnimState:I

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFeeformAlwaysVisible:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTemporaryInvisible:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchOpeningToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchClosingToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mLocalForceHideFloatingMultiWindow:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGrantPermissionComponents:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeSoftInput:Z

    new-instance v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;-><init>(Lcom/android/server/wm/MultiWindowManagerInternal;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowDividerPanelListeners:Landroid/os/RemoteCallbackList;

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAutoResizingEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mStacksAdjustedForIme:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskIdToResizeInfo:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCoolDownFreeformRequested:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTaskIdToOpen:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsDividerDragging:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsSoftInputForceHidden:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsBottomStackFullyAdjustedForIME:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mhasIMEHeightChanged:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsRotationAnimating:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mOrientationChanging:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTokensResizedInSplit:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMouseConnectedForDesktopMode:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedResizing:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpFloats:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpDimBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private addFakedRelaunchAnimTokensLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "MultiWindowManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addFakedRelaunchAnimTokensLocked, adding wtoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkTokensResizedInSplit(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTokensResizedInSplit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private clearFakedRelaunchAnimTokensLocked(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "MultiWindowManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearFakedRelaunchAnimTokensLocked, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private clearTokensResizedInSplit()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTokensResizedInSplit:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getWindowFromPoint(Lcom/android/server/wm/DisplayContent;II)Lcom/android/server/wm/WindowState;
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v3

    :cond_2
    return-object v6
.end method

.method private hasRelaunchingAppWindowTokenLocked(Lcom/android/server/wm/TaskStack;)Z
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v5, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return v6
.end method

.method private isEasyOneHandWindow(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x8ca

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8cf

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x8ce

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisibleOrBehindKeyguard(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_3

    :cond_0
    :goto_1
    move v0, v2

    :cond_1
    :goto_2
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v3, :cond_0

    if-nez v1, :cond_7

    iget v3, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v3, :cond_0

    :cond_4
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v2, :cond_5

    iget v2, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_1

    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_4

    goto :goto_1
.end method

.method private loadFreeformTaskCloseAnimation()Landroid/view/animation/Animation;
    .locals 11

    const v2, 0x3f6b851f    # 0.92f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v3}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v2, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x14a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xa7

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v10

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadFreeformTaskOpenAnimation()Landroid/view/animation/Animation;
    .locals 12

    const v1, 0x3f6b851f    # 0.92f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v3}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v3, 0x3f07ae14    # 0.53f

    const v4, 0x3e99999a    # 0.3f

    const v6, 0x3f99999a    # 1.2f

    invoke-direct {v11, v1, v3, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v11}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0x14a

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xa7

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v10

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadMinimizeAnimationLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 25

    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v5}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Point;

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Point;->set(II)V

    :goto_0
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    if-eqz p4, :cond_0

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    if-eqz v18, :cond_5

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v16, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v17, v0

    new-instance v24, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v5, v1, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float v9, v5, v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float v10, v5, v6

    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v13, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz v18, :cond_7

    const-wide/16 v6, 0xc8

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    sget-object v5, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e99999a    # 0.3f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    sget-object v5, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v6, 0x64

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    sget-object v5, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v13, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_3
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v14, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v14, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v14, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    if-nez v18, :cond_1

    sget-object v5, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v5, Lcom/android/server/wm/MultiWindowManagerInternal$2;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal$2;-><init>(Lcom/android/server/wm/MultiWindowManagerInternal;ILandroid/graphics/Rect;)V

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    return-object v14

    :cond_2
    new-instance v22, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v0, v19

    invoke-interface {v5, v6, v7, v8, v0}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v6, v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    :cond_3
    new-instance v22, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    :cond_4
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    goto/16 :goto_2

    :cond_7
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e4ccccd    # 0.2f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e4ccccd    # 0.2f

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto/16 :goto_3
.end method

.method private loadUnminimizeAnimationLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 23

    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v3}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    :goto_0
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    if-eqz p4, :cond_0

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    if-eqz v16, :cond_5

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    sub-int/2addr v3, v4

    int-to-float v14, v3

    if-eqz v16, :cond_6

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    sub-int/2addr v3, v4

    int-to-float v15, v3

    new-instance v22, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v14, v3, v15, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float v7, v3, v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float v8, v3, v4

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v11, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz v16, :cond_7

    const-wide/16 v4, 0xc8

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    sget-object v3, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    sget-object v3, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v4, 0x64

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    sget-object v3, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_3
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    if-nez v16, :cond_1

    sget-object v3, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    :cond_1
    return-object v12

    :cond_2
    new-instance v19, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v5, v6, v0}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    :cond_3
    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    goto/16 :goto_2

    :cond_7
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto/16 :goto_3
.end method

.method private prepareAppTransitionIfNeeded(Lcom/android/server/wm/TaskStack;)V
    .locals 8

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-ltz v3, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v0, v5, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v5, :cond_0

    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v5, :cond_0

    const-string/jumbo v5, "MultiWindowManagerInternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "moveStackToBottomLocked: add closingApps token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->setReady()V

    :cond_4
    return-void
.end method

.method private prepareFreeformResizeAnimLocked(Lcom/android/server/wm/Task;)V
    .locals 10

    const/4 v9, 0x0

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v7, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v5, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v1

    const/4 v7, 0x3

    invoke-virtual {v1, v2, v7}, Lcom/android/server/wm/ScreenFreezeAnimation;->setScreenFreezeAnimation(Ljava/util/ArrayList;I)V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenFreezeAnimation;->prepare()V

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v7

    if-nez v7, :cond_7

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v7, :cond_6

    :cond_7
    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iput-boolean v9, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iput-boolean v9, v5, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    goto :goto_1
.end method


# virtual methods
.method public addFreeformTaskToOpen(I)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MultiWindowManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addFreeformTaskToOpen :: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTaskIdToOpen:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addGrantPermissionComponent(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGrantPermissionComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGrantPermissionComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addStackAdjustedForIme(ILcom/android/server/wm/TaskStack;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mStacksAdjustedForIme:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public adjStackBoundsForSnapWindow()V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/TaskStack;->mAdjBoundsForSnapWindow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public adjustBoundsForNaviBarForConfigChange(ILandroid/graphics/Rect;ILandroid/graphics/Rect;)V
    .locals 14

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar()Z

    move-result v10

    if-eqz v10, :cond_0

    move/from16 v0, p3

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v8, v10, Landroid/content/res/Configuration;->orientation:I

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    move-object/from16 v0, p4

    invoke-static {v0, v2, v8}, Lcom/android/server/wm/TaskStack;->getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    return-void

    :cond_2
    const/4 v10, 0x3

    if-eq p1, v10, :cond_3

    const/4 v10, 0x1

    if-ne p1, v10, :cond_8

    :cond_3
    const/4 v10, 0x3

    move/from16 v0, p3

    if-eq v0, v10, :cond_4

    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_8

    :cond_4
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-interface {v10, p1, v11, v12, v9}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v3, 0x1

    :cond_5
    :goto_1
    const/4 v5, 0x0

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    move/from16 v0, p3

    invoke-interface {v10, v0, v11, v12, v9}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    packed-switch p3, :pswitch_data_1

    :pswitch_1
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v5, 0x1

    :cond_6
    if-nez v3, :cond_d

    if-eqz v5, :cond_d

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->top:I

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_2
    iget v10, v9, Landroid/graphics/Rect;->left:I

    iput v10, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_3
    iget v10, v7, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_4
    iget v10, v9, Landroid/graphics/Rect;->left:I

    iput v10, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v5, 0x1

    :cond_9
    if-nez v3, :cond_a

    if-eqz v5, :cond_a

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_a
    if-eqz v3, :cond_7

    if-nez v5, :cond_7

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :pswitch_5
    iget v10, v6, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v5, 0x1

    :cond_b
    if-nez v3, :cond_c

    if-eqz v5, :cond_c

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_c
    if-eqz v3, :cond_7

    if-nez v5, :cond_7

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    :cond_d
    if-eqz v3, :cond_7

    if-nez v5, :cond_7

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public adjustBoundsToMagnificationSpec(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mReduceScreenRunning:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    iget v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/view/MagnificationSpec;->offsetY:F

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public adjustDockedStackBoundAfterDisplaySizeChange(Landroid/graphics/Rect;IF)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "MultiWindowManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Display change ratio can not be 0 ! Caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :pswitch_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public animateFreeformDimLayerLocked(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/DimLayerController$DimLayerState;)Z
    .locals 31

    sget-boolean v27, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v27, :cond_11

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v18

    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    :goto_0
    if-eqz v11, :cond_11

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    move/from16 v27, v0

    if-nez v27, :cond_0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move/from16 v27, v0

    if-nez v27, :cond_0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    move/from16 v27, v0

    if-nez v27, :cond_0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    if-nez v27, :cond_0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v0

    if-nez v27, :cond_0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    move-object/from16 v25, v24

    :cond_1
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v0, v26

    iget-boolean v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    if-eqz v9, :cond_a

    iget-boolean v0, v9, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    iget-object v8, v9, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    :goto_1
    if-eqz v6, :cond_b

    iget-boolean v0, v6, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    iget-object v7, v6, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    :goto_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v27, v0

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v14

    if-eqz v14, :cond_c

    invoke-virtual {v14}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v13

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpFloats:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpDimBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v13, :cond_e

    invoke-virtual {v14}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v12, v0

    const/high16 v27, 0x3f800000    # 1.0f

    cmpl-float v27, v23, v27

    if-ltz v27, :cond_d

    const/high16 v27, 0x3f800000    # 1.0f

    cmpl-float v27, v12, v27

    if-ltz v27, :cond_d

    const/high16 v27, 0x40000000    # 2.0f

    div-float v27, v27, v23

    const/high16 v28, 0x3f800000    # 1.0f

    add-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    div-float v28, v28, v12

    const/high16 v29, 0x3f800000    # 1.0f

    add-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v29, v23, v29

    const/high16 v30, 0x40000000    # 2.0f

    div-float v30, v12, v30

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :goto_4
    if-eqz v15, :cond_2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v27

    const/high16 v28, 0x3f800000    # 1.0f

    mul-float v5, v28, v27

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v27

    mul-float v5, v5, v27

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v27

    mul-float v5, v5, v27

    :cond_4
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mReduceScreenRunning:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v17

    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v27

    if-eqz v27, :cond_f

    :cond_5
    :goto_5
    if-eqz v13, :cond_6

    invoke-virtual {v14}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v14}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v27

    mul-float v5, v5, v27

    :cond_6
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v27

    if-lez v27, :cond_7

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v27

    if-lez v27, :cond_7

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/DimLayer;->animateFreeformDimLayer([FF)V

    :cond_7
    if-nez v13, :cond_8

    if-nez v15, :cond_8

    if-eqz v8, :cond_10

    :cond_8
    const/16 v27, 0x1

    :goto_6
    return v27

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_d
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_4

    :cond_e
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v28, v0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v28, v0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_5

    :cond_10
    if-nez v7, :cond_8

    const/16 v27, 0x0

    goto :goto_6

    :cond_11
    const/16 v27, 0x0

    return v27
.end method

.method public appTokenDrawnLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ScreenFreezeAnimation;->setApplicationDrawn(Lcom/android/server/wm/AppWindowToken;)V

    :cond_0
    return-void
.end method

.method public applyForceHidingAnimation(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v1, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v4, :cond_1

    iput-boolean v6, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    :cond_1
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v4, :cond_0

    :cond_2
    if-eqz v1, :cond_3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public applyForceHidingPolicy(Lcom/android/server/wm/WindowState;)V
    .locals 5

    const/high16 v4, 0x4000000

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v1, v4

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->requestForceHiding:Z

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x900

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mLocalForceHideFloatingMultiWindow:Z

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowManagerInternal;->isVisibleOrBehindKeyguard(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mLocalForceHideFloatingMultiWindow:Z

    goto :goto_0
.end method

.method public blinkMultiWindowDividerButton()V
    .locals 4

    const/16 v3, 0xd

    sget-boolean v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mJustOnceBlink:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mJustOnceBlink:Z

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public canBeForceHiddenFloatingMultiWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x8ff

    if-ne v1, v2, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public checkAppTransitionForForceHiding(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v4, :cond_0

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->requestForceHiding:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    :cond_1
    move-object v2, v0

    :cond_2
    if-eqz v2, :cond_3

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    :cond_3
    return-void
.end method

.method public checkIMEHeightChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mhasIMEHeightChanged:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mhasIMEHeightChanged:Z

    :cond_0
    return-void
.end method

.method public checkIfFullyAdjustedForIME(Lcom/android/server/wm/TaskStack;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getAdjustImeAmount()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsBottomStackFullyAdjustedForIME:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsBottomStackFullyAdjustedForIME:Z

    goto :goto_1
.end method

.method public checkRequestForceHidingApp(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGrantPermissionComponents:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    monitor-exit p0

    return v3

    :cond_1
    monitor-exit p0

    const/4 v3, 0x0

    return v3

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public clearFreeformTransit(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/wm/Task;->mFreeformTransit:I

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/wm/Task;->mFreeformTransit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    monitor-exit v4

    :cond_2
    return-void
.end method

.method public clearSlideOriginalBounds()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpSlideOriginalBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public completeToggleSplitScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->completeToggleSplitScreen()V

    return-void
.end method

.method public computeDragResizing(Lcom/android/server/wm/Task;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return v3

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    return v2

    :cond_4
    return v3
.end method

.method public createKeepVisibleAnimation()Landroid/view/animation/Animation;
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x150

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    new-instance v1, Lcom/android/server/wm/MultiWindowManagerInternal$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiWindowManagerInternal$1;-><init>(Lcom/android/server/wm/MultiWindowManagerInternal;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method public drawFreeformRoundedDim(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)V
    .locals 14

    iget v9, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_decor_frame_thickness:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v9, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v10, v7, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v9, v10}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->getFreeformDensity(II)I

    move-result v4

    if-lez v4, :cond_0

    iget-boolean v9, p1, Lcom/android/server/wm/Task;->mSupportFreefromDensity:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    iget v10, v7, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v4

    mul-float/2addr v9, v10

    iput v9, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    :cond_0
    iget v9, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    const/high16 v10, 0x40a00000    # 5.0f

    mul-float/2addr v9, v10

    iput v9, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v8

    :try_start_0
    sget-boolean v9, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "MultiWindowManagerInternal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showFreeformRoundedDim :: task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mFreeformRoundedCorner="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", dimType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", bounds="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", caller="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x5

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v5, Landroid/view/Surface;

    invoke-direct {v5}, Landroid/view/Surface;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/high16 v9, -0x1000000

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v9, 0x1

    move/from16 v0, p4

    if-ne v0, v9, :cond_3

    new-instance v9, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    iget v11, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRoundedCorner:F

    invoke-virtual {v1, v9, v10, v11, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {v5, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    :goto_1
    return-void

    :cond_3
    new-instance v9, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v9, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string/jumbo v9, "MultiWindowManagerInternal"

    const-string/jumbo v10, "showFreeformRoundedDim IllegalExeption"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    const-string/jumbo v9, "MultiWindowManagerInternal"

    const-string/jumbo v10, "showFreeformRoundedDim ResourceException"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public ensureDockedResize(Landroid/graphics/Rect;Z)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedBounds:Landroid/graphics/Rect;

    const/16 v3, 0xe

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureDockedStackVisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public enterDockedTask(Lcom/android/server/wm/Task;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v7

    const/4 v8, 0x0

    const/4 v0, -0x1

    if-eq v7, v0, :cond_7

    if-eq v7, v3, :cond_0

    const/4 v0, 0x2

    if-ne v7, v0, :cond_4

    :cond_0
    if-nez p2, :cond_4

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleAppWindowPackageName(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    move v2, p2

    move v4, v3

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z

    :goto_0
    const-string/jumbo v0, "FFAC"

    const-string/jumbo v1, "ChangeToSplit"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v8, :cond_2

    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/MultiWindowManagerInternal;->logByFreeformDraggingToSplit(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->blinkMultiWindowDividerButton()V

    :cond_3
    return-void

    :cond_4
    if-eq v7, v1, :cond_5

    const/4 v0, 0x4

    if-ne v7, v0, :cond_6

    :cond_5
    if-eq p2, v3, :cond_1

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleAppWindowPackageName(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1, v3, v3}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    goto :goto_0

    :cond_7
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleTaskLocked(I)Lcom/android/server/wm/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    monitor-exit v0

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleAppWindowPackageName(I)Ljava/lang/String;

    move-result-object v8

    if-ne p2, v3, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, v9, Lcom/android/server/wm/Task;->mTaskId:I

    move v2, v6

    move v4, v3

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1, v3, v3}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1, v3, v3}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    move v2, p2

    move v4, v3

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z

    goto :goto_1
.end method

.method public enterFreeformTask(Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;)V
    .locals 18

    sget-boolean v12, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v12, :cond_8

    if-nez p1, :cond_0

    const-string/jumbo v12, "MultiWindowManagerInternal"

    const-string/jumbo v13, "enterFreeformTask: resizeInfo is null"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v8, -0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v12, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;->mTaskId:I

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    if-nez v9, :cond_1

    const-string/jumbo v12, "MultiWindowManagerInternal"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "enterFreeformTask: task is null, taskId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;->mTaskId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v13

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v11

    :goto_0
    if-nez v11, :cond_3

    const-string/jumbo v12, "MultiWindowManagerInternal"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "enterFreeformTask: top visible win is null, task="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v13

    return-void

    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, 0x3

    if-eq v12, v14, :cond_4

    invoke-virtual {v10}, Lcom/android/server/wm/AppWindowToken;->waitingForReplacement()Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    const-string/jumbo v12, "MultiWindowManagerInternal"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "enterFreeformTask: top visible win is starting, pending task="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    iget v15, v9, Lcom/android/server/wm/Task;->mTaskId:I

    const/16 v16, 0xb

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v15, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v16, 0xbb8

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskIdToResizeInfo:Ljava/util/HashMap;

    iget v14, v9, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v12, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v13

    return-void

    :cond_5
    :try_start_3
    iget-object v12, v9, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v8, v12, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget-object v12, v9, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v12, :cond_9

    iget-object v12, v9, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v12, v12, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v14, 0x3

    if-eq v12, v14, :cond_6

    iget-object v12, v9, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v12, v12, Lcom/android/server/wm/TaskStack;->mStackId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v14, 0x1

    if-ne v12, v14, :cond_9

    :cond_6
    const/4 v2, 0x1

    :goto_1
    monitor-exit v13

    if-eqz v2, :cond_8

    new-instance v7, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    move-object/from16 v0, p1

    iget v12, v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;->mTaskId:I

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setLaunchBounds(ILandroid/graphics/Rect;)V

    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;->mTaskId:I

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-interface {v12, v13, v14, v15}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v3

    const/4 v12, -0x1

    if-eq v3, v12, :cond_7

    const/4 v12, 0x1

    if-ne v8, v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Landroid/app/IActivityManager;->moveTasksToFullscreenStack(IZ)V

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Landroid/app/IActivityManager;->setFocusedStack(I)V

    const/4 v12, 0x2

    new-array v6, v12, [Ljava/lang/String;

    const/4 v12, 0x2

    new-array v5, v12, [Ljava/lang/String;

    const-string/jumbo v12, "FFBY"

    const/4 v13, 0x0

    aput-object v12, v6, v13

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_b

    const-string/jumbo v12, "DividerButton"

    const/4 v13, 0x0

    aput-object v12, v5, v13

    :goto_3
    const-string/jumbo v12, "FFEP"

    const/4 v13, 0x1

    aput-object v12, v6, v13

    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v12, v5, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_8
    :goto_4
    return-void

    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_a
    const/4 v12, 0x3

    if-ne v8, v12, :cond_7

    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/app/IActivityManager;->moveTasksToFullscreenStack(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    :cond_b
    :try_start_6
    const-string/jumbo v12, "Gesture"

    const/4 v13, 0x0

    aput-object v12, v5, v13
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3
.end method

.method public enterFreeformTaskIfNeededLocked(I)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskIdToResizeInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MultiWindowManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enter freeform pending task, taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskIdToResizeInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public executeFakedRelaunchAnimationLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 9

    const/16 v6, 0x8

    const/4 v8, 0x0

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "MultiWindowManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "executeFakedRelaunchAnimationLocked: display isn\'t ready, displayFrozen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-boolean v3, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "MultiWindowManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "executeFakedRelaunchAnimationLocked, wtoken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowManagerInternal;->addFakedRelaunchAnimTokensLocked(Lcom/android/server/wm/AppWindowToken;)V

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    :cond_2
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v8, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    :cond_4
    return-void
.end method

.method public exludedRegionFromFreefomTasksLocked(Landroid/graphics/Region;)V
    .locals 9

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v7, :cond_2

    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget v7, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->isForceHidingFloatingMultiWindow()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v4, Lcom/android/server/wm/Task;->mHiddenState:I

    if-nez v7, :cond_1

    invoke-virtual {v4, v6}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public findMaxVisibleAppWindow(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/WindowState;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->findMaxVisibleAppWindow(Lcom/android/server/wm/AppWindowToken;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method public findMaxVisibleAppWindow(Lcom/android/server/wm/AppWindowToken;Z)Lcom/android/server/wm/WindowState;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    :goto_1
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v4, v5, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lt v4, v5, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v4, v4, 0x100

    if-nez v4, :cond_1

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v4, v5, :cond_5

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v4, v5, :cond_1

    :cond_5
    move-object v2, v3

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    return-object v2

    :cond_7
    return-object v0
.end method

.method public forceHideIMEWhileDragging()V
    .locals 2

    const-class v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->isDividerDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsSoftInputForceHidden:Z

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsSoftInputForceHidden:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsSoftInputForceHidden:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsSoftInputForceHidden:Z

    goto :goto_0
.end method

.method public getCurrentInputMethodClient()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getDecorCaptionWindowHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->getDecorCaptionWindowHeight()I

    move-result v0

    return v0
.end method

.method public getDockedStackVisibleForUserOrRelaunchingLocked(I)Lcom/android/server/wm/TaskStack;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisibleForUserLocked()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->hasRelaunchingAppWindowTokenLocked(Lcom/android/server/wm/TaskStack;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getFreeformRelaunchAnimState()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRelaunchAnimState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getFullScreenStackTopTaskBounds(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 3

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    return-object v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    return-object v0
.end method

.method public getImeTargetFreeformTaskId()I
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    const/4 v1, -0x1

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getIndexOfFreeformStackLocked()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getIndexOfFreeformStackLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    return v0
.end method

.method public getIndexOfFreeformStackLocked(Lcom/android/server/wm/DisplayContent;)I
    .locals 6

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    iget v4, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getMiddleTargetDockedBounds(Landroid/graphics/Rect;)V
    .locals 18

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v4, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ge v3, v4, :cond_1

    const/4 v13, 0x2

    :goto_0
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v15, v2, Landroid/view/DisplayInfo;->rotation:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p1

    invoke-interface {v2, v15, v3, v4, v0}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v6, 0x1

    if-ne v14, v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v16

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move v7, v13

    move-object/from16 v8, p1

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v17

    :cond_0
    return-void

    :cond_1
    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v17

    throw v2
.end method

.method public getMinimalDockedTaskBounds()Landroid/graphics/Rect;
    .locals 8

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v2, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DockedStackDividerController;->getMinimalSizeResizableTask(I)I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    :cond_0
    :try_start_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v4

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getMinimizeContainerBounds()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getMinimizeSoftInput()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeSoftInput:Z

    return v0
.end method

.method public getMultiWindowPointerEventListener(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/IMultiWindowManagerInternalBridge$IMultiWindowPointerEventListener;
    .locals 2

    new-instance v0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    return-object v0
.end method

.method public getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/ScreenFreezeAnimation;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/wm/ScreenFreezeAnimation;-><init>(Landroid/content/Context;Landroid/view/SurfaceSession;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MultiWindowManagerInternal;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    return-object v0
.end method

.method public getSnapTargetAspectRatioRect(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/view/IWindowStateBridge;->isConventionalMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/view/IWindowStateBridge;->getAspectRatioFrame()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    :cond_0
    monitor-exit v3

    :cond_1
    return-object v4

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getSplitRelaunchAnimState()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchAnimState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getSplitRelaunchClosingToken()Lcom/android/server/wm/AppWindowToken;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchClosingToken:Lcom/android/server/wm/AppWindowToken;

    return-object v0
.end method

.method public getStackBehindFreeformLocked()Lcom/android/server/wm/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getStackBehindFreeformLocked(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method public getStackBehindFreeformLocked(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/TaskStack;
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    iget v3, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    move v1, v0

    :cond_1
    if-lez v1, :cond_3

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    :goto_1
    return-object v3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move-object v3, v4

    goto :goto_1
.end method

.method public getStackIdsShowWhenLocked()I
    .locals 8

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x80000

    and-int/2addr v5, v7

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStackId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v5, 0x1

    shl-int/2addr v5, v1

    or-int/2addr v2, v5

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v6

    return v2

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getTopVisibleAppWindowPackageName(I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleTaskLocked(I)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v5

    return-object v1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getTopVisibleTaskLocked(I)Lcom/android/server/wm/Task;
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-object v5

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getTopVisibleWindowLocked(I)Lcom/android/server/wm/WindowState;
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    return-object v4

    :cond_0
    move-object v2, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-object v4
.end method

.method public getTouchExcludeRegionLocked(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V
    .locals 6

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v2, v4, :cond_0

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7f2

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x8fe

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v4}, Lcom/android/server/wm/MultiWindowManagerInternal;->isEasyOneHandWindow(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_1
.end method

.method public handleScreenFreezeAnimationReady()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->handleMultiWindowTransitionReady()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDockedStack()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hasFakedRelaunchAnimTokensLocked(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFakedRelaunchAnimTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasIMEHeightChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mhasIMEHeightChanged:Z

    return v0
.end method

.method public isAnimatingForMinimizedDockedStack(I)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->isAnimatingForMinimizedDockedStack()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isAppTaskTouchedLocked(Lcom/android/server/wm/DisplayContent;II)Z
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/MultiWindowManagerInternal;->getWindowFromPoint(Lcom/android/server/wm/DisplayContent;II)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isAutoResizingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAutoResizingEnabled:Z

    return v0
.end method

.method public isBottomStackFullyAdjustedForIME()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsBottomStackFullyAdjustedForIME:Z

    return v0
.end method

.method public isDividerDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsDividerDragging:Z

    return v0
.end method

.method public isEnsureDockedResizing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedResizing:Z

    return v0
.end method

.method public isExpandedDockedStack()Z
    .locals 6

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    monitor-exit v5

    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public isForceHidingFloatingMultiWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    return v0
.end method

.method public isFreeformAlphaModeLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mFreeformAlphaMode:Z

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method public isFreeformStackVisibleLocked()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFeeformAlwaysVisible:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTemporaryInvisible:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTemporaryInvisible:Z

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public isMouseConnectedForDesktopMode()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMouseConnectedForDesktopMode:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOrientationChanging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mOrientationChanging:Z

    return v0
.end method

.method public isSplitRelaunchOpeningToken(Landroid/os/IBinder;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchOpeningToken:Lcom/android/server/wm/AppWindowToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchOpeningToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isStackAdjustedForIme(I)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mStacksAdjustedForIme:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusBarVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isStatusBarVisible()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isUsingTaskPositioner()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public loadMultiWindowTransitionLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    return-object v0

    :sswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiWindowManagerInternal;->loadMinimizeAnimationLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :sswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiWindowManagerInternal;->loadUnminimizeAnimationLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getSplitRelaunchAnimState()I

    move-result v1

    if-eqz v1, :cond_1

    if-nez p7, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/framework/res/R$anim;->multiwindow_task_close_exit:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p6, :cond_0

    if-nez p5, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->loadFreeformTaskCloseAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->loadFreeformTaskOpenAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :sswitch_4
    if-eqz p5, :cond_2

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/framework/res/R$anim;->multiwindow_wallpaper_open_exit:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/framework/res/R$anim;->multiwindow_docked_resize:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/framework/res/R$anim;->multiwindow_freeze_default:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xd -> :sswitch_4
        0xc9 -> :sswitch_5
        0xca -> :sswitch_6
        0xcb -> :sswitch_5
        0xcc -> :sswitch_5
        0xcd -> :sswitch_5
    .end sparse-switch
.end method

.method public logByFreeformDraggingToSplit(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "SPBY"

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string/jumbo v2, "FreeformDragging"

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const-string/jumbo v2, "SPPA"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    :cond_0
    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "feature"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "features"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v2, "extras"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public makeFinishing(Landroid/os/IBinder;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->finishing:Z

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mBackgroundToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/wm/Task;->mBackgroundToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public makeGhostFreeformLocked(Landroid/os/IBinder;I)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    if-eqz v2, :cond_2

    iput p2, v2, Lcom/android/server/wm/Task;->mCurrentCaptionHieght:I

    iget v3, v2, Lcom/android/server/wm/Task;->mFreeformAlpha:F

    const v4, 0x3e4ccccd    # 0.2f

    add-float v1, v3, v4

    cmpl-float v3, v1, v5

    if-nez v3, :cond_3

    :goto_0
    iput v1, v2, Lcom/android/server/wm/Task;->mFreeformAlpha:F

    iget v3, v2, Lcom/android/server/wm/Task;->mFreeformAlpha:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/Task;->mFreeformAlphaMode:Z

    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_3
    rem-float/2addr v1, v5

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/Task;->mFreeformAlphaMode:Z

    goto :goto_1
.end method

.method public moveDockedPopupWindowIfNeededLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inDockedWorkspace()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isResizeableByDockedStack()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public moveDockedPopupWindowLocked(Z)V
    .locals 8

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/MultiWindowManagerInternal;->moveDockedPopupWindowIfNeededLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    :cond_4
    return-void
.end method

.method public moveStackToBottomLocked(I)V
    .locals 8

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v1, 0x0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    iget v5, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    move-object v1, v2

    :cond_1
    if-eqz v1, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->prepareAppTransitionIfNeeded(Lcom/android/server/wm/TaskStack;)V

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->moveStackWindowsLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public notifyApplyMinimizeFreeformPolicy(Landroid/os/IBinder;)V
    .locals 5

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/server/wm/MultiWindowManagerInternal;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "MultiWindowManagerInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyApplyMinimizeFreeformPolicy :: mFreeformTaskIdToOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTaskIdToOpen:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget v0, v2, Lcom/android/server/wm/Task;->mTaskId:I

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTaskIdToOpen:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v2, v0}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->notifyApplyFreeformMinimizePolicy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public notifyFreefromWindowAnimationEnd(IILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->notifyFreefromWindowAnimationEnd(IILandroid/graphics/Rect;)V

    return-void
.end method

.method public notifyLastDockTaskToBackTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0, p1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->notifyLastDockTaskToBackTransitionFinishedLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method public notifyMultiWindowAppTransitionFinishedLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->notifyMultiWindowAppTransitionFinishedLocked()V

    :cond_0
    return-void
.end method

.method public notifyProcessKillByClosingFreeform(I)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0, p1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->notifyProcessKillByClosingFreeform(I)V

    :cond_0
    return-void
.end method

.method public notifyScreenFreezeAnimationFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->notifyScreenFreezeAnimationFinished()V

    return-void
.end method

.method public okToDisplay()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v0

    return v0
.end method

.method public postApplyForceHidingPolicy()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mLocalForceHideFloatingMultiWindow:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    return-void
.end method

.method public preApplyForceHidingPolicy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mLocalForceHideFloatingMultiWindow:Z

    return-void
.end method

.method public prepareAppTransitionIfNeeded(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->prepareAppTransitionIfNeeded(Lcom/android/server/wm/TaskStack;)V

    :cond_0
    return-void
.end method

.method public prepareLastDockTaskToBackToFullscreen(Landroid/os/IBinder;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mLastDockTaskToBackToFullScreen:Z

    :cond_0
    return-void
.end method

.method public prepareResizeAnimLocked()V
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v29

    if-eqz v29, :cond_2

    :cond_0
    sget-boolean v29, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    if-eqz v29, :cond_1

    const-string/jumbo v29, "MultiWindowManagerInternal"

    const-string/jumbo v30, "prepareResizeAnimLocked : Other window animation is already running.. skip"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v29

    if-nez v29, :cond_3

    invoke-virtual {v14}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationRunning()Z

    move-result v29

    if-nez v29, :cond_3

    invoke-virtual {v14}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimating()Z

    move-result v29

    if-eqz v29, :cond_5

    :cond_3
    sget-boolean v29, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    if-eqz v29, :cond_4

    const-string/jumbo v29, "MultiWindowManagerInternal"

    const-string/jumbo v30, "prepareResizeAnimLocked : screen freeze animation is already running.. skip request"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    invoke-virtual/range {v29 .. v30}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_d

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v5}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v29

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_8

    const/4 v9, 0x1

    :goto_0
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar()Z

    move-result v29

    if-eqz v29, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget v13, v0, Landroid/view/DisplayInfo;->rotation:I

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v30

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v31

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v13, v1, v2, v12}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    if-eqz v9, :cond_a

    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v13, v0, :cond_9

    iget v11, v12, Landroid/graphics/Rect;->left:I

    :cond_6
    :goto_1
    const/4 v8, 0x0

    :goto_2
    const/16 v29, 0x3

    move/from16 v0, v29

    if-gt v8, v0, :cond_d

    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v8, v0, :cond_b

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    const/4 v9, 0x0

    goto :goto_0

    :cond_9
    iget v11, v12, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_a
    iget v11, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleWindowLocked(I)Lcom/android/server/wm/WindowState;

    move-result-object v23

    if-eqz v23, :cond_f

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v22

    :goto_3
    if-eqz v22, :cond_7

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    if-eqz v9, :cond_10

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v29

    :goto_4
    add-int v30, v29, v11

    if-eqz v9, :cond_11

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v29

    :goto_5
    move/from16 v0, v30

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    if-eqz v9, :cond_13

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v29

    move/from16 v30, v29

    :goto_6
    if-eqz v9, :cond_14

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v29

    :goto_7
    move/from16 v0, v30

    move/from16 v1, v29

    if-ne v0, v1, :cond_15

    const/4 v10, 0x1

    :goto_8
    if-eqz v19, :cond_c

    if-eqz v10, :cond_7

    :cond_c
    move v6, v8

    :cond_d
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v6, v0, :cond_18

    const/4 v8, 0x0

    :goto_9
    const/16 v29, 0x3

    move/from16 v0, v29

    if-gt v8, v0, :cond_19

    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v8, v0, :cond_16

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_f
    const/16 v22, 0x0

    goto :goto_3

    :cond_10
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v29

    goto :goto_4

    :cond_11
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v29

    goto :goto_5

    :cond_12
    const/4 v10, 0x1

    goto :goto_8

    :cond_13
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v29

    move/from16 v30, v29

    goto :goto_6

    :cond_14
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v29

    goto :goto_7

    :cond_15
    const/4 v10, 0x0

    goto :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/TaskStack;

    if-eqz v15, :cond_e

    invoke-virtual {v15}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_e

    invoke-virtual {v15}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_17
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/Task;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_a
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_17

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_19

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_1c

    :cond_19
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1a
    :goto_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1e

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_1b
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1a

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/wm/WindowState;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v29

    if-eqz v29, :cond_1b

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1b

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->checkTokensResizedInSplit(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v29

    if-eqz v29, :cond_1b

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1c
    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_19

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/Task;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_c
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1d

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1e
    move-object/from16 v16, v24

    const/16 v29, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Lcom/android/server/wm/ScreenFreezeAnimation;->setScreenFreezeAnimation(Ljava/util/ArrayList;I)V

    if-eqz v24, :cond_1f

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_20

    :cond_1f
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->clearTokensResizedInSplit()V

    return-void

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v29

    if-eqz v29, :cond_1f

    invoke-virtual {v14}, Lcom/android/server/wm/ScreenFreezeAnimation;->prepare()V

    goto :goto_d
.end method

.method public prepareSnapWindowAnimLocked()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskStack;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v17

    if-nez v17, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/Task;

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    iget-object v0, v8, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v10, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v17

    if-eqz v17, :cond_6

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v7, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSnapWindowRunning:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_8
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    :cond_9
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v6, v12, v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->setScreenFreezeAnimation(Ljava/util/ArrayList;I)V

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_b

    :cond_a
    :goto_3
    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-virtual {v6}, Lcom/android/server/wm/ScreenFreezeAnimation;->prepare()V

    goto :goto_3
.end method

.method public prepareSwapAnimLocked()V
    .locals 15

    iget-object v13, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    iget-object v13, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    iget-object v13, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    iget-object v13, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v13, v6, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v13, :cond_7

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    move-object v3, v8

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v2

    const/4 v13, 0x2

    invoke-virtual {v2, v8, v13}, Lcom/android/server/wm/ScreenFreezeAnimation;->setScreenFreezeAnimation(Ljava/util/ArrayList;I)V

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_9
    :goto_3
    return-void

    :cond_a
    iget-object v13, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->prepare()V

    goto :goto_3
.end method

.method public prepareUnSnapByDockedToFullAnimLocked()V
    .locals 14

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v12

    if-eqz v12, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget-object v12, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-object v12, v5, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object v2, v7

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v1

    const/4 v12, 0x4

    invoke-virtual {v1, v7, v12}, Lcom/android/server/wm/ScreenFreezeAnimation;->setScreenFreezeAnimation(Ljava/util/ArrayList;I)V

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_7
    :goto_2
    return-void

    :cond_8
    iget-object v12, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenFreezeAnimation;->prepare()V

    goto :goto_2
.end method

.method public prepareUnSnapByResizeAnimLocked()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v15

    if-nez v15, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v15, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v15, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v15, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    iget-object v15, v8, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v15

    if-eqz v15, :cond_9

    iget-object v15, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v15, :cond_9

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    move-object v5, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v4

    const/4 v15, 0x4

    invoke-virtual {v4, v10, v15}, Lcom/android/server/wm/ScreenFreezeAnimation;->setScreenFreezeAnimation(Ljava/util/ArrayList;I)V

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_c

    :cond_b
    :goto_4
    return-void

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v4}, Lcom/android/server/wm/ScreenFreezeAnimation;->prepare()V

    goto :goto_4
.end method

.method public registerMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowDividerPanelListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowDividerPanelListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getMultiWindowFocusedFrameController()Lcom/android/server/wm/IMultiWindowFocusedFramePolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowFocusedFramePolicy;->registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V

    return-void
.end method

.method public removePendingReplaceWindowLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    if-ne v3, p2, :cond_3

    move-object v1, v2

    :cond_0
    if-eqz v1, :cond_2

    sget-boolean v3, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "MultiWindowManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePendingReplaceWindowLocked, replaceTargetWin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", removingWin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public removeStackAdjustedForIme(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mStacksAdjustedForIme:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V
    .locals 10

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    monitor-exit v5

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    if-eqz v3, :cond_4

    :try_start_1
    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setReplacingWindow(Landroid/os/IBinder;Z)V

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v6, 0x0

    invoke-interface {v4, v5, p2, v6}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-boolean v4, v1, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5

    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_2
    :goto_1
    return-void

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3
    :try_start_5
    monitor-exit v5

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->scheduleClearReplacingWindowIfNeeded(Landroid/os/IBinder;Z)V

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    invoke-direct {p0, v4}, Lcom/android/server/wm/MultiWindowManagerInternal;->prepareFreeformResizeAnimLocked(Lcom/android/server/wm/Task;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_8
    monitor-exit v5

    throw v4
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v4

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v4
.end method

.method public rotationAnimationStateChangedLocked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsRotationAnimating:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsRotationAnimating:Z

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0, p1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->rotationAnimationStateChangedLocked(Z)V

    :cond_0
    return-void
.end method

.method public saveOriginalBoundsBeforeSliding(FFFFLandroid/graphics/Rect;)Z
    .locals 5

    sub-float v0, p1, p3

    sub-float v1, p2, p4

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->clearSlideOriginalBounds()V

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-boolean v2, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "MultiWindowManagerInternal"

    const-string/jumbo v3, "saveOriginalBoundsBeforeSliding :: No save original bounds, it will be returned to False"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    return v2

    :cond_2
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    const v3, 0x48742400    # 250000.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    sget-boolean v2, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "MultiWindowManagerInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveOriginalBoundsBeforeSliding :: Save original bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", it will be returned to True"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpSlideOriginalBounds:Landroid/graphics/Rect;

    const/4 v2, 0x1

    return v2
.end method

.method public setAutoResizingEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAutoResizingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setCoolDownFreeformRequested(Z)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCoolDownFreeformRequested:Z

    :cond_0
    return-void
.end method

.method public setCurrentInputMethodClient(Landroid/os/IBinder;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e9

    if-eq v1, v3, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    :cond_1
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

    invoke-interface {v1, v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->updateTspInputMethodPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void

    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDexCompatEnabled(IZ)V
    .locals 10

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    if-eqz v7, :cond_1

    iput-boolean p2, v7, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    if-eqz p2, :cond_3

    iget-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string/jumbo v2, "dexcompat background"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const v6, 0x20004

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    :cond_0
    iget-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, v7, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, v7, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    :goto_0
    iput-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundToken:Lcom/android/server/wm/AppWindowToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v9

    return-void

    :cond_2
    move-object v0, v8

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    :cond_4
    iget-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/server/wm/Task;->mBackgroundToken:Lcom/android/server/wm/AppWindowToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public setDexCompatEnabled(Landroid/os/IBinder;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean p2, v0, Lcom/android/server/wm/AppWindowToken;->mIsDexCompatEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDividerButtonsDimLayer(ZFI)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/DockedStackDividerController;->setButtonsDimLayer(ZFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DockedStackDividerController;->setButtonsTouchRegion(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setEnsureDockedResizing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedResizing:Z

    return-void
.end method

.method public setForceHidingFloatingMultiWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    return-void
.end method

.method public setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x3

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    iget v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRelaunchAnimState:I

    if-eq v4, p2, :cond_2

    const-string/jumbo v4, "MultiWindowManagerInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFreeformRelaunchAnimState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Callers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRelaunchAnimState:I

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->removeMessages(I)V

    iget v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRelaunchAnimState:I

    if-eqz v4, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v8, v6, v7}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v4, "MultiWindowManagerInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFreeformRelaunchAnimState: display isn\'t ready, displayFrozen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_5

    iget-object v0, v3, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    goto :goto_1

    :cond_6
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->prepareFreeformResizeAnimLocked(Lcom/android/server/wm/Task;)V

    goto :goto_0
.end method

.method public setFreeformStackTemporaryVisibilityLocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformTemporaryInvisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFreeformStackVisibilityLocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFeeformAlwaysVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setFreeformTransit(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iput p2, v0, Lcom/android/server/wm/Task;->mFreeformTransit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setGrantPermissionComponents(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGrantPermissionComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHidden(II)V
    .locals 11

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    if-eqz v2, :cond_2

    iget v5, v2, Lcom/android/server/wm/Task;->mHiddenState:I

    if-eqz v5, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput p2, v2, Lcom/android/server/wm/Task;->mHiddenState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public setMinimizeSoftInput(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeSoftInput:Z

    return-void
.end method

.method public setMultiWindowManagerService(Lcom/android/server/am/IMultiWindowManagerServiceBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    return-void
.end method

.method public setOrientationChanging(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mOrientationChanging:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mOrientationChanging:Z

    :cond_0
    return-void
.end method

.method public setProcessKillAfterRemovingTaskLocked(I)V
    .locals 5

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v3}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->mProcessKillAfterRemovingTask:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    monitor-exit v4

    :cond_1
    return-void
.end method

.method public setSlideMode(IZ)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iput-boolean p2, v0, Lcom/android/server/wm/Task;->mSlideMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setSplitRelaunchAnimState(Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchAnimState:I

    if-eq v1, p3, :cond_4

    const-string/jumbo v1, "MultiWindowManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSplitRelaunchAnimState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchAnimState:I

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchOpeningToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchOpeningToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iput-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchOpeningToken:Lcom/android/server/wm/AppWindowToken;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchClosingToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1

    iput-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchClosingToken:Lcom/android/server/wm/AppWindowToken;

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->removeMessages(I)V

    iget v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchAnimState:I

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchOpeningToken:Lcom/android/server/wm/AppWindowToken;

    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSplitRelaunchClosingToken:Lcom/android/server/wm/AppWindowToken;

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void
.end method

.method public setStackColor(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->getColor()I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->setColor(I)V

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->updateColorLayerSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1
.end method

.method public setSupportFreeformDensity(IZ)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iput-boolean p2, v0, Lcom/android/server/wm/Task;->mSupportFreefromDensity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setSystemService(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public setTaskDimensions(IIIII)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iput p2, v0, Lcom/android/server/wm/Task;->mMinWidth:I

    iput p3, v0, Lcom/android/server/wm/Task;->mMinHeight:I

    iput p4, v0, Lcom/android/server/wm/Task;->mMaxWidth:I

    iput p5, v0, Lcom/android/server/wm/Task;->mMaxHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setTaskToSnapWindowTarget(IZ)Z
    .locals 3

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iput-boolean p2, v0, Lcom/android/server/wm/Task;->mSnapWindowTarget:Z

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p2, v1, Lcom/android/server/wm/WindowManagerService;->mSnapWindowRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    :cond_1
    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setTokensResizedInSplitLocked(Landroid/os/IBinder;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTokensResizedInSplit:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTokensResizedInSplit:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUseFreeformBorder(Landroid/os/IBinder;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean p2, v0, Lcom/android/server/wm/AppWindowToken;->mUseFreeformBorder:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public shouldForceHideIfNeeded(Lcom/android/server/wm/WindowState;ZZ)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x8fc

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getMultiWindowFocusedFrameController()Lcom/android/server/wm/IMultiWindowFocusedFramePolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/IMultiWindowFocusedFramePolicy;->needToHide()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x8fe

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceHideFloatingMultiWindow:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x8ff

    if-ne v1, v2, :cond_4

    return v3

    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public shouldKeepVisibleAnimation(Lcom/android/server/wm/AppWindowToken;ZZ)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformRelaunchAnimState:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    return v1

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v3}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimation()Lcom/android/server/wm/ScreenFreezeAnimation;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    if-eqz p2, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_3

    :goto_1
    return v1

    :cond_3
    move v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public shouldKeepVisibleWhileNotDragResizing(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isResizedWhileNotDragResizing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MultiWindowManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldKeepVisibleWhileNotDragResizing: Window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public slideFreeformTask(IZI)Z
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_c

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v6, :cond_c

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v6, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/wm/Task;

    move-object v5, v0

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    if-eqz v5, :cond_0

    iget v6, v5, Lcom/android/server/wm/Task;->mHiddenState:I

    if-eqz v6, :cond_2

    :cond_0
    sget-boolean v6, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "MultiWindowManagerInternal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "slideFreeformTask :: task is already minimized or null, task="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v9

    return v8

    :cond_2
    if-eqz p2, :cond_9

    :try_start_1
    iget-boolean v6, v5, Lcom/android/server/wm/Task;->mSlideMode:Z

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "MultiWindowManagerInternal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "slideFreeformTask :: task is already slide mode, task="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v9

    return v8

    :cond_4
    :try_start_2
    invoke-virtual {v5, v3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpSlideOriginalBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_5

    new-instance v6, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpSlideOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, v5, Lcom/android/server/wm/Task;->mTmpSavedBounds:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez p3, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget v10, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    if-gt v6, v10, :cond_6

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, -0x19

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v6, v10

    iput v6, v4, Landroid/graphics/Rect;->right:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v9

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mHandler:Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;

    if-eqz p2, :cond_b

    move v6, v7

    :goto_2
    const/4 v8, 0x5

    invoke-virtual {v9, v8, p1, v6, v4}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    return v7

    :cond_5
    :try_start_3
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, v5, Lcom/android/server/wm/Task;->mTmpSavedBounds:Landroid/graphics/Rect;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v9

    throw v6

    :cond_6
    const/16 v6, 0x19

    :try_start_4
    iput v6, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x19

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_7
    const/4 v6, 0x2

    if-ne p3, v6, :cond_8

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, -0x19

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v6, v10

    iput v6, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_8
    const/16 v6, 0x19

    iput v6, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x19

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_9
    iget-boolean v6, v5, Lcom/android/server/wm/Task;->mSlideMode:Z

    if-nez v6, :cond_a

    const-string/jumbo v6, "MultiWindowManagerInternal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "slideFreeformTask :: task isn\'t already fling mode, task="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v9

    return v8

    :cond_a
    :try_start_5
    iget-object v6, v5, Lcom/android/server/wm/Task;->mTmpSavedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/wm/Task;->mTmpSavedBounds:Landroid/graphics/Rect;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_b
    move v6, v8

    goto :goto_2

    :cond_c
    return v8
.end method

.method public startDividerDragging()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsDividerDragging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public startResizingFreeformTask(III)V
    .locals 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/wm/Task;

    move-object v2, v0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6, p2, p3}, Lcom/android/server/wm/WindowManagerService;->startPositioningFreeformLocked(Lcom/android/server/wm/WindowState;ZII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return-void

    :cond_0
    monitor-exit v4

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, p1}, Landroid/app/IActivityManager;->setFocusedTask(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stepAnimationLocked(J)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ScreenFreezeAnimation;->stepAnimationLocked(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearScreenFreezAnimation()V

    return v1
.end method

.method public stopDividerDragging()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mIsDividerDragging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public unregisterMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowDividerPanelListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowDividerPanelListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateFreeformShadowLightLocationLocked(I)V
    .locals 9

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    if-eqz v2, :cond_2

    iget-object v6, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v6, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :goto_1
    if-ltz v4, :cond_1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget v6, v2, Lcom/android/server/wm/Task;->mHiddenState:I

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-interface {v6, v7, v8}, Landroid/view/IWindow;->moved(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateMouseConnectedForDesktopMode(Z)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMouseConnectedForDesktopMode:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMouseConnectedForDesktopMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateMultiWindowToastFrame(Lcom/android/server/wm/WindowState;)V
    .locals 3

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mMultiWindowToastTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mMultiWindowToastTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTaskPositions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
