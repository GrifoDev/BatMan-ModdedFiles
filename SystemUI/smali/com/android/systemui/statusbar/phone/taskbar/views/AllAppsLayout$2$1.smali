.class Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2$1;
.super Ljava/lang/Object;
.source "AllAppsLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get5(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isContextMenuOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap5(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
