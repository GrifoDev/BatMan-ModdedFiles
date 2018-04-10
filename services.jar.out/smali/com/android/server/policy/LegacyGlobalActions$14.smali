.class Lcom/android/server/policy/LegacyGlobalActions$14;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->initValueForShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$14;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$14;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$14;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$14;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
