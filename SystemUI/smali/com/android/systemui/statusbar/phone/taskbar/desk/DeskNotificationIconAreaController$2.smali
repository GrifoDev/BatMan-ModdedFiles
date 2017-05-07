.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$2;
.super Ljava/lang/Object;
.source "DeskNotificationIconAreaController.java"

# interfaces
.implements Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->setHoverPopupPreShowListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverPopupPreShow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->isDeskAllNotificationViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
