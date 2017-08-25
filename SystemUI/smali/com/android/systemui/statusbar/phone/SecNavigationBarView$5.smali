.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get8(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0f07c0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-set2(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get6(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5$1;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0f07bf

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
