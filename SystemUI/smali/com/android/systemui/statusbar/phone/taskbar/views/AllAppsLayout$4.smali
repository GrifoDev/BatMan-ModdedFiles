.class Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;
.super Ljava/lang/Object;
.source "AllAppsLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->makeAllAppsView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchMoreMenu:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchCancel:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2, v5, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap9(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;ZZ)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2, v5, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap11(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;ZZ)V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2, v4, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap9(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;ZZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2, v4, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap7(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;ZI)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchMoreMenu:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchCancel:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap8(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2, v4, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap11(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;ZZ)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
