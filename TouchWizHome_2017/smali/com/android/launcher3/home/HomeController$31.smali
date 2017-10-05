.class Lcom/android/launcher3/home/HomeController$31;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->changeHomeScreenMode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$HomeOnlySettingValue:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$31;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-boolean p2, p0, Lcom/android/launcher3/home/HomeController$31;->val$HomeOnlySettingValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController$31;->val$HomeOnlySettingValue:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$31;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$2000(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->recreateLauncher()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
