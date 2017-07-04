.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;
.super Landroid/content/BroadcastReceiver;
.source "SecNavigationBarView.java"


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    const-string/jumbo v1, "com.samsung.android.content.clipboard.action.CLIPBOARD_OPENED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowClipboard:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get6(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get2(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get6(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get2(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
