.class public Lcom/android/launcher3/widget/controller/WidgetController;
.super Lcom/android/launcher3/common/stage/Stage;
.source "WidgetController.java"

# interfaces
.implements Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;
    }
.end annotation


# static fields
.field public static final KEY_WIDGET_FOLDER_ICON:Ljava/lang/String; = "KEY_WIDGET_FOLDER_ICON"

.field public static final KEY_WIDGET_FOLDER_MANAGER:Ljava/lang/String; = "KEY_WIDGET_FOLDER_MANAGER"

.field public static final KEY_WIDGET_FROM_SETTING:Ljava/lang/String; = "KEY_WIDGET_FROM_SETTING"

.field public static final REQUEST_CODE_VOICE_RECOGNITION:I = 0x12d

.field private static final RUNTIME_WIDGET_CURRENT_SCREEN:Ljava/lang/String; = "RUNTIME_WIDGET_CURRENT_SCREEN"

.field private static final RUNTIME_WIDGET_STATE:Ljava/lang/String; = "RUNTIME_WIDGET_STATE"

.field private static final TAG:Ljava/lang/String; = "WidgetController"


# instance fields
.field private mBgBlurAmount:F

.field private mBgDarkenAlpha:F

.field private mDataVersion:J

.field private mDragController:Lcom/android/launcher3/widget/controller/WidgetDragController;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mFromHomeSetting:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsOnStage:Z

.field private mLoadingListener:Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;

.field private mNoResultText:Landroid/widget/TextView;

.field private mNoResultView:Landroid/widget/LinearLayout;

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

.field private mStateActionListener:Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

.field private mTransitAnimation:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

.field private mWhiteWallpaper:Z

.field private mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

.field private mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

.field private final mWidgetStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/widget/controller/WidgetState$State;",
            "Lcom/android/launcher3/widget/controller/WidgetState;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetStateMap:Ljava/util/HashMap;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mDataVersion:J

    iput-boolean v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mIsOnStage:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWhiteWallpaper:Z

    iput-boolean v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mFromHomeSetting:Z

    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/controller/WidgetController$1;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mStateActionListener:Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetController$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/controller/WidgetController$2;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLoadingListener:Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;

    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetController$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/controller/WidgetController$5;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/controller/WidgetController;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetController;->openFolder(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/controller/WidgetController;Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetController;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/model/WidgetLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetDragController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mDragController:Lcom/android/launcher3/widget/controller/WidgetDragController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/widget/controller/WidgetController;Lcom/android/launcher3/widget/controller/WidgetDragController;)Lcom/android/launcher3/widget/controller/WidgetDragController;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mDragController:Lcom/android/launcher3/widget/controller/WidgetDragController;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/widget/controller/WidgetController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mIsOnStage:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/widget/controller/WidgetController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/widget/controller/WidgetController;->updateWidgetItems()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mStateActionListener:Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetState;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    return-object v0
.end method

.method private changeColorForBg(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWhiteWallpaper:Z

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    iget-boolean v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWhiteWallpaper:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState;->changeColorForBg(Z)V

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    iget-boolean v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWhiteWallpaper:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->changeColorForBg(Z)V

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultText:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    return-void
.end method

.method private changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v3}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v3

    if-ne v3, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetController;->getWidgetState(Lcom/android/launcher3/widget/controller/WidgetState$State;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/widget/controller/WidgetState;->exit(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V

    :cond_3
    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/widget/controller/WidgetState;->enter(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/widget/view/WidgetPagedView;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    sget-object v3, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne p1, v3, :cond_5

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne p1, v3, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_0
.end method

.method private createAnimationOnEnter(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/launcher3/widget/controller/WidgetController$6;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/controller/WidgetController$6;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mTransitAnimation:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getEnterWidgetAnimation(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetController;->getContainerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    return-object v0
.end method

.method private createAnimationOnExit(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mTransitAnimation:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getExitWidgetAnimation(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetState(Lcom/android/launcher3/widget/controller/WidgetState$State;)Lcom/android/launcher3/widget/controller/WidgetState;
    .locals 5

    const v4, 0x7f1100fa

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/controller/WidgetState;

    if-eqz v1, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    const/4 v0, 0x0

    sget-object v3, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetStateSearch;

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v3, v0}, Lcom/android/launcher3/widget/controller/WidgetStateSearch;-><init>(Landroid/content/Context;Landroid/view/View;)V

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mStateActionListener:Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/widget/controller/WidgetState;->setActionListener(Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;)V

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    const v4, 0x7f1100f9

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v3, v0}, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetStateNormal;

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v3, v0}, Lcom/android/launcher3/widget/controller/WidgetStateNormal;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1
.end method

.method private openFolder(Landroid/view/View;Z)V
    .locals 4

    instance-of v1, p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const-string v1, "KEY_WIDGET_FOLDER_ICON"

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "KEY_WIDGET_FOLDER_MANAGER"

    new-instance v3, Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "KEY_WIDGET_FROM_SETTING"

    iget-boolean v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mFromHomeSetting:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean p2, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method private setPreDrawListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetController$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/controller/WidgetController$4;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private updateNoSearchResultView(Z)V
    .locals 5

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_0

    if-nez v1, :cond_2

    and-int/lit8 v0, v0, -0x11

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/widget/controller/WidgetController;->updateSoftInputParam(Landroid/view/Window;I)V

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    or-int/lit8 v0, v0, 0x10

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method

.method private updateWidgetItems()Z
    .locals 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-virtual {v7}, Lcom/android/launcher3/widget/model/WidgetLoader;->getDataVersion()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mDataVersion:J

    cmp-long v7, v8, v0

    if-gez v7, :cond_1

    move v3, v5

    :goto_0
    iget-object v7, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-virtual {v7}, Lcom/android/launcher3/widget/model/WidgetLoader;->getWidgetItems()Ljava/util/List;

    move-result-object v4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    iget-object v7, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-virtual {v7, v10, v10, v5}, Lcom/android/launcher3/widget/model/WidgetLoader;->notifyDirty([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    const-string v5, "WidgetController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyDirty becuase no items, dataVersion 1 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v6

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    iget-object v6, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/widget/model/WidgetLoader;->getWidgetItems()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setWidgetItems(Ljava/util/List;)V

    iput-wide v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mDataVersion:J

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-virtual {v5}, Lcom/android/launcher3/widget/model/WidgetLoader;->hasUninstallApps()Z

    move-result v2

    sget-object v5, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-direct {p0, v5}, Lcom/android/launcher3/widget/controller/WidgetController;->getWidgetState(Lcom/android/launcher3/widget/controller/WidgetState$State;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher3/widget/controller/WidgetState;->setHasInstallableApp(Z)V

    :cond_3
    move v6, v3

    goto :goto_1

    :cond_4
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_5
    const-string v7, "WidgetController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyDirty becuase no items, dataVersion 2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-virtual {v7, v10, v10, v5}, Lcom/android/launcher3/widget/model/WidgetLoader;->notifyDirty([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/controller/WidgetState;->showPopupMenu()Z

    move-result v0

    goto :goto_0

    :sswitch_1
    sget-object v2, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/widget/controller/WidgetController;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/controller/WidgetState;->setFocusToSearchEditText()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/widget/controller/WidgetController;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/controller/WidgetState;->setFocusToSearchEditText()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x52 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1
.end method

.method protected getBackgroundBlurAmountForState(I)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mBgBlurAmount:F

    return v0
.end method

.method protected getBackgroundDimAlphaForState(I)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mBgDarkenAlpha:F

    return v0
.end method

.method protected getBackgroundImageAlphaForState(I)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getInternalState()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetController;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/controller/WidgetState$State;->ordinal()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/launcher3/widget/controller/WidgetState$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NONE:Lcom/android/launcher3/widget/controller/WidgetState$State;

    goto :goto_0
.end method

.method public initStageView()V
    .locals 5

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mViewInitiated:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mBgBlurAmount:F

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mBgDarkenAlpha:F

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f1100bd

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    iget v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f1100fe

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/view/WidgetPagedView;

    iput-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f1100fc

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f1100fd

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setListener(Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;)V

    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mTransitAnimation:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    iget v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_1
.end method

.method public isWhiteWallpaper()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWhiteWallpaper:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x12d

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/controller/WidgetState;->onVoiceSearch(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mFromHomeSetting:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mFromHomeSetting:Z

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const-string v2, "KEY_WIDGET_FROM_SETTING"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/controller/WidgetState;->onBackPressed()Z

    move-result v1

    goto :goto_0
.end method

.method public onChangeColorForBg(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mIsOnStage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetController;->changeColorForBg(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChangedIfNeeded(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    iget v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/controller/WidgetController;->getWidgetState(Lcom/android/launcher3/widget/controller/WidgetState$State;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/widget/controller/WidgetState;->onConfigurationChangedIfNeeded()V

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/controller/WidgetController;->getWidgetState(Lcom/android/launcher3/widget/controller/WidgetState$State;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/widget/controller/WidgetState;->onConfigurationChangedIfNeeded()V

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->onConfigurationChangedIfNeeded()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    iget v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onDestroyActivity()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLoadingListener:Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/model/WidgetLoader;->removeLoadListener(Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;)V

    return-void
.end method

.method public onPagedViewFocusUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/controller/WidgetState;->setFocus()V

    return-void
.end method

.method public onPagedViewTouchIntercepted()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/controller/WidgetState;->onPagedViewTouchIntercepted()V

    return-void
.end method

.method public onPauseActivity()V
    .locals 0

    return-void
.end method

.method public onResumeActivity()V
    .locals 0

    return-void
.end method

.method public onSearchResult(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/controller/WidgetController;->updateNoSearchResultView(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v4, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mIsOnStage:Z

    const-string v1, "KEY_WIDGET_FROM_SETTING"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mFromHomeSetting:Z

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/widget/controller/WidgetController;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/controller/WidgetState;->onStageEnter()V

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/controller/WidgetController;->changeColorForBg(Z)V

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->updateCellSpan()V

    invoke-direct {p0}, Lcom/android/launcher3/widget/controller/WidgetController;->setPreDrawListener()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    iget-boolean v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/controller/WidgetController;->createAnimationOnEnter(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/widget/controller/WidgetController;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    goto :goto_0
.end method

.method protected onStageEnterByTray()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mIsOnStage:Z

    invoke-direct {p0, v4}, Lcom/android/launcher3/widget/controller/WidgetController;->updateNoSearchResultView(Z)V

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v5}, Lcom/android/launcher3/widget/controller/WidgetState;->onStageExit()V

    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v5, v4, v4}, Lcom/android/launcher3/widget/view/WidgetPagedView;->prepareInOut(IZ)V

    iget v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    iget-boolean v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->broughtToHome:Z

    if-nez v5, :cond_2

    move v0, v3

    :goto_0
    iget v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    if-ne v5, v3, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move v2, v3

    :goto_1
    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertCloseWidgetLog(Ljava/lang/String;)V

    :cond_1
    :goto_2
    const-string v5, "WidgetController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    :goto_3
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/widget/controller/WidgetController;->createAnimationOnExit(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    return-object v3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v5

    if-ne v5, v3, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertCloseWidgetLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3
.end method

.method protected onStageExitByTray()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2

    iget v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mFromHomeSetting:Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onWidgetItemClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mIsOnStage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/controller/WidgetState;->onWidgetItemClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onWidgetItemLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/controller/WidgetState;->onWidgetItemLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public setDataWithOutStageChange(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "KEY_WIDGET_FROM_SETTING"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mFromHomeSetting:Z

    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/widget/controller/WidgetController;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    :cond_0
    return-void
.end method

.method public setup()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getWidgetsLoader()Lcom/android/launcher3/widget/model/WidgetLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLoadingListener:Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/model/WidgetLoader;->setLoadListener(Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetController$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/controller/WidgetController$3;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->setWidgetProxyCallbacks(Lcom/android/launcher3/proxy/WidgetProxyCallbacks;)V

    return-void
.end method

.method protected supportNavigationBarForState(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected supportStatusBarForState(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
