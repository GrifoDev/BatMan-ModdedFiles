.class Lcom/android/server/pm/KnoxKeyguardScrimView$3;
.super Ljava/lang/Object;
.source "KnoxKeyguardScrimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/KnoxKeyguardScrimView;->showScrim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

.field final synthetic val$isSecurefolder:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxKeyguardScrimView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$3;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    iput-boolean p2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$3;->val$isSecurefolder:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$3;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-virtual {v1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$3;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    const-string/jumbo v2, "#00FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setBackgroundColor(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$3;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$3;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$3;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-static {v1, v4}, Lcom/android/server/pm/KnoxKeyguardScrimView;->-set0(Lcom/android/server/pm/KnoxKeyguardScrimView;Z)Z

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$3;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    iget-object v1, v1, Lcom/android/server/pm/KnoxKeyguardScrimView;->mHandler:Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$3;->val$isSecurefolder:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$3;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-static {v1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->-wrap1(Lcom/android/server/pm/KnoxKeyguardScrimView;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$3;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setBackgroundColor(I)V

    goto :goto_1
.end method
