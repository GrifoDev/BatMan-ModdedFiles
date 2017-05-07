.class public abstract Lcom/android/launcher3/util/focus/FocusListener;
.super Ljava/lang/Object;
.source "FocusListener.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRtl()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    return v0
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/focus/FocusListener;->onFocusIn(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/focus/FocusListener;->onFocusOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method public abstract onFocusIn(Landroid/view/View;)V
.end method

.method public abstract onFocusOut(Landroid/view/View;)V
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/util/focus/FocusListener;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    if-ne p2, v1, :cond_1

    const/16 p2, 0x16

    :cond_0
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_1
    const/16 v1, 0x16

    if-ne p2, v1, :cond_0

    const/16 p2, 0x15

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/focus/FocusListener;->onKeyUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/focus/FocusListener;->onKeyDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/focus/FocusListener;->onKeyPressUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/focus/FocusListener;->onKeyPressDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/focus/FocusListener;->onKeyPressLeft(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/focus/FocusListener;->onKeyPressRight(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public abstract onKeyPressDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyPressLeft(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyPressRight(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyPressUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end method

.method public onKeyUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected searchPredefinedFocus(Landroid/view/View;I)Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sparse-switch p2, :sswitch_data_0

    move-object v0, v1

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getNextFocusUpId()I

    move-result v3

    if-eq v2, v3, :cond_0

    move-object v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getNextFocusDownId()I

    move-result v3

    if-eq v2, v3, :cond_0

    move-object v0, v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getNextFocusLeftId()I

    move-result v3

    if-eq v2, v3, :cond_0

    move-object v0, v1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getNextFocusRightId()I

    move-result v3

    if-eq v2, v3, :cond_0

    move-object v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method
