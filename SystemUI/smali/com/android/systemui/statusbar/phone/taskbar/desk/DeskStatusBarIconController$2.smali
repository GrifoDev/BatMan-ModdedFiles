.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$2;
.super Ljava/lang/Object;
.source "DeskStatusBarIconController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.settings.STATUS_BAR_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x6

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method
