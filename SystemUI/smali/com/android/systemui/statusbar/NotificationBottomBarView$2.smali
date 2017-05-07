.class Lcom/android/systemui/statusbar/NotificationBottomBarView$2;
.super Ljava/lang/Object;
.source "NotificationBottomBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationBottomBarView;->switchNormalMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationBottomBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationBottomBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView$2;->this$0:Lcom/android/systemui/statusbar/NotificationBottomBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView$2;->this$0:Lcom/android/systemui/statusbar/NotificationBottomBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->-get0(Lcom/android/systemui/statusbar/NotificationBottomBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView$2;->this$0:Lcom/android/systemui/statusbar/NotificationBottomBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->-get0(Lcom/android/systemui/statusbar/NotificationBottomBarView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView$2;->this$0:Lcom/android/systemui/statusbar/NotificationBottomBarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->-set0(Lcom/android/systemui/statusbar/NotificationBottomBarView;Z)Z

    :cond_0
    return-void
.end method
