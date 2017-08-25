.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get14(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowClipboard:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setIconsLight(ZZ)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get1(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDarkNavigation()Z

    move-result v0

    goto :goto_0
.end method
