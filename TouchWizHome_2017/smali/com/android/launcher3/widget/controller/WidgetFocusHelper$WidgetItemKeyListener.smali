.class public Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;
.super Ljava/lang/Object;
.source "WidgetFocusHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/controller/WidgetFocusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetItemKeyListener"
.end annotation


# instance fields
.field private final mListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;->mListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v6, :cond_2

    move v2, v6

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;->mListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    invoke-interface {v5}, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;->getColumnCount()I

    move-result v5

    div-int v4, v3, v5

    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_0

    const/16 v5, 0x15

    if-ne p2, v5, :cond_3

    const/16 p2, 0x16

    :cond_0
    :goto_1
    sparse-switch p2, :sswitch_data_0

    :cond_1
    move v6, v7

    :goto_2
    return v6

    :cond_2
    move v2, v7

    goto :goto_0

    :cond_3
    const/16 v5, 0x16

    if-ne p2, v5, :cond_0

    const/16 p2, 0x15

    goto :goto_1

    :sswitch_0
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;->mListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    invoke-interface {v5, v6, p2}, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;->focusToPage(II)V

    goto :goto_2

    :sswitch_1
    if-eqz v2, :cond_1

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;->mListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    invoke-interface {v5, v7, p2}, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;->focusToPage(II)V

    goto :goto_2

    :sswitch_2
    if-eqz v2, :cond_1

    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;->mListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    invoke-interface {v5}, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;->focusToUp()V

    goto :goto_2

    :sswitch_3
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;->mListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    const/4 v7, 0x2

    invoke-interface {v5, v7, p2}, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;->focusToPage(II)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x7a -> :sswitch_3
        0x7b -> :sswitch_3
    .end sparse-switch
.end method
