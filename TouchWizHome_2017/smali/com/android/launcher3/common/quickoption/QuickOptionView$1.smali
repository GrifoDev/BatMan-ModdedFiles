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
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_0

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->remove(Z)V

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getNextFocusUpId()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusUpId(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getNextFocusDownId()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusDownId(I)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
