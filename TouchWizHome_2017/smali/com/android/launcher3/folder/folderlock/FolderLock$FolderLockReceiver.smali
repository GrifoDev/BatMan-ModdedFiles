.class Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FolderLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/folderlock/FolderLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderLockReceiver"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/folder/folderlock/FolderLock;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;->action:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/folder/folderlock/FolderLock;Lcom/android/launcher3/folder/folderlock/FolderLock$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;-><init>(Lcom/android/launcher3/folder/folderlock/FolderLock;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;->action:Ljava/lang/String;

    const-string v2, "Launcher.FolderLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-static {v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->access$600(Lcom/android/launcher3/folder/folderlock/FolderLock;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;->action:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string v5, "com.sec.android.launcher.intent.action.FOLDERLOCK_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-static {v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->access$700(Lcom/android/launcher3/folder/folderlock/FolderLock;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-static {v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->access$600(Lcom/android/launcher3/folder/folderlock/FolderLock;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderInfo;->setLockedFolderOpenedOnce(Z)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-static {v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->access$800(Lcom/android/launcher3/folder/folderlock/FolderLock;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-static {v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->access$800(Lcom/android/launcher3/folder/folderlock/FolderLock;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-static {v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->access$800(Lcom/android/launcher3/folder/folderlock/FolderLock;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Launcher;->closeFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    goto :goto_1

    :pswitch_1
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-static {v2, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->access$900(Lcom/android/launcher3/folder/folderlock/FolderLock;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_0
        0x71b42399 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
