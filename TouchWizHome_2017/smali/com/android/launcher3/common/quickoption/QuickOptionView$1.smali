.class Lcom/android/launcher3/common/quickoption/QuickOptionView$1;
.super Ljava/lang/Object;
.source "QuickOptionView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$200(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$200(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$200(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    const-string v2, "4"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;Z)V

    :goto_0
    move v0, v1

    :cond_0
    :goto_1
    return v0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getNextFocusUpId()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getNextFocusDownId()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v2, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$002(Lcom/android/launcher3/common/quickoption/QuickOptionView;Z)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v1, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$002(Lcom/android/launcher3/common/quickoption/QuickOptionView;Z)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    check-cast p1, Landroid/widget/ListView;

    invoke-static {v2, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$100(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/widget/ListView;)V

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v2, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$002(Lcom/android/launcher3/common/quickoption/QuickOptionView;Z)Z

    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->remove(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
