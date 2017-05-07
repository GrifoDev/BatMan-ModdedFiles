.class Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$1;
.super Ljava/lang/Object;
.source "LaunchableIconView.java"

# interfaces
.implements Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverPopupPreShow()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;->onLeftClickPreviewState(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mNotification:Landroid/app/Notification;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;->onLeftClickSystemIconDetailViewState(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
