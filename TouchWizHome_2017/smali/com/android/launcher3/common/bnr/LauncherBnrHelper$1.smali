.class Lcom/android/launcher3/common/bnr/LauncherBnrHelper$1;
.super Ljava/lang/Object;
.source "LauncherBnrHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->recreateLauncher(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/bnr/LauncherBnrHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/bnr/LauncherBnrHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper$1;->this$0:Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/SettingsActivity;->finish()V

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher3/LauncherModel$Callbacks;->recreateLauncher()V

    const-string v2, "LauncherBnrHelper"

    const-string v3, "Launcher recreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "LauncherBnrHelper"

    const-string v3, "Launcher instance is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "LauncherBnrHelper"

    const-string v3, "LauncherAppState instance is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
