.class Lcom/android/launcher3/LauncherApplication$2;
.super Ljava/lang/Object;
.source "LauncherApplication.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherApplication;->attachBaseContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherApplication;

.field final synthetic val$executorMediator:Lcom/samsung/android/sdk/bixby/BixbyApi;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherApplication;Lcom/samsung/android/sdk/bixby/BixbyApi;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherApplication$2;->this$0:Lcom/android/launcher3/LauncherApplication;

    iput-object p2, p0, Lcom/android/launcher3/LauncherApplication$2;->val$executorMediator:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherApplication$2;->val$executorMediator:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method
