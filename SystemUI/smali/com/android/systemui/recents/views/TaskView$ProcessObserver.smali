.class public Lcom/android/systemui/recents/views/TaskView$ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "TaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessObserver"
.end annotation


# instance fields
.field private mRun:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskView$ProcessObserver;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$ProcessObserver;->mRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/views/TaskView$ProcessObserver;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$ProcessObserver;->mRun:Ljava/lang/Runnable;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$ProcessObserver;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$ProcessObserver;->mRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onProcessDied(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$ProcessObserver;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskView;->-get2(Lcom/android/systemui/recents/views/TaskView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$ProcessObserver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskView$ProcessObserver$1;-><init>(Lcom/android/systemui/recents/views/TaskView$ProcessObserver;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$ProcessObserver;->mRun:Ljava/lang/Runnable;

    return-void
.end method
