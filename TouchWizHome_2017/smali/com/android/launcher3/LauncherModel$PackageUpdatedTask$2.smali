.class Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

.field final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-interface {v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->dumpLogsToLocalData()V

    :cond_0
    return-void
.end method
