.class public Lcom/android/launcher3/util/event/CheckLongKeyHelper;
.super Ljava/lang/Object;
.source "CheckLongKeyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckLongKeyHelper"


# instance fields
.field private mHasPerformedLongKey:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mParent:Lcom/android/launcher3/common/drag/DragSource;

.field private mPendingCheckForLongKey:Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/util/event/CheckLongKeyHelper;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/util/event/CheckLongKeyHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/util/event/CheckLongKeyHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mHasPerformedLongKey:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/util/event/CheckLongKeyHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mHasPerformedLongKey:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/util/event/CheckLongKeyHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->openQuickOptionView()V

    return-void
.end method

.method private getDragSource()Lcom/android/launcher3/common/drag/DragSource;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getDragSourceForLongKey()Lcom/android/launcher3/common/drag/DragSource;

    move-result-object v1

    goto :goto_0
.end method

.method private openQuickOptionView()V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->getDragSource()Lcom/android/launcher3/common/drag/DragSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mParent:Lcom/android/launcher3/common/drag/DragSource;

    iget-object v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mParent:Lcom/android/launcher3/common/drag/DragSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mParent:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/drag/DragManager;->createQuickOptionViewFromCenterKey(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelLongKey()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mHasPerformedLongKey:Z

    iget-object v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mPendingCheckForLongKey:Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mPendingCheckForLongKey:Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mPendingCheckForLongKey:Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;

    :cond_0
    return-void
.end method

.method public hasPerformedLongKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mHasPerformedLongKey:Z

    return v0
.end method

.method public postCheckForLongKey()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mHasPerformedLongKey:Z

    iget-object v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mPendingCheckForLongKey:Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;-><init>(Lcom/android/launcher3/util/event/CheckLongKeyHelper;)V

    iput-object v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mPendingCheckForLongKey:Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->mPendingCheckForLongKey:Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
