.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$3;
.super Ljava/lang/Object;
.source "DeskNotificationIconAreaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->toggleDeskNotificationView(Z)V

    return-void
.end method
