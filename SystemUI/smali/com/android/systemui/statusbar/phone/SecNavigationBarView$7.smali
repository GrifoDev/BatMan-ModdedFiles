.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$7;
.super Ljava/lang/Object;
.source "SecNavigationBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SecNavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get7(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-set1(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get7(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get0()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "force_immersive_mode_confirmations"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarHideEnabled(Z)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->getInstance()Lcom/android/systemui/statusbar/phone/NaviBarHideController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->setNavigationBarImmersiveMode(Landroid/content/Context;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateImmersivePinIcon()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
