.class Lcom/android/launcher3/widget/view/WidgetPagedView$2;
.super Ljava/lang/Object;
.source "WidgetPagedView.java"

# interfaces
.implements Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/view/WidgetPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetPagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public focusToPage(II)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    iget-object v6, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    const/4 v0, -0x1

    const/16 v5, 0x7a

    if-ne p2, v5, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_1
    if-eq v0, v7, :cond_0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-static {p2, v1}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    :cond_2
    const/16 v5, 0x7b

    if-ne p2, v5, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    goto :goto_1

    :pswitch_1
    if-nez p1, :cond_4

    move v2, v5

    :goto_2
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v8

    if-eqz v2, :cond_5

    :goto_3
    add-int v4, v8, v5

    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_6

    move v0, v6

    :goto_4
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/widget/view/WidgetPagedView;->isScrolling()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setCurrentPage(I)V

    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/widget/view/WidgetPagedView;->loadAssociatedPages(I)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-static {p2, v1}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    :cond_4
    move v2, v6

    goto :goto_2

    :cond_5
    move v5, v7

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public focusToUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-static {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->access$100(Lcom/android/launcher3/widget/view/WidgetPagedView;)Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-static {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->access$100(Lcom/android/launcher3/widget/view/WidgetPagedView;)Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->onPagedViewFocusUp()V

    :cond_0
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getRowCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getRowCount()I

    move-result v0

    return v0
.end method
