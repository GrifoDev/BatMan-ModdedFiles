.class public Lcom/android/launcher3/folder/view/FolderNameEditText;
.super Landroid/widget/EditText;
.source "FolderNameEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;
    }
.end annotation


# instance fields
.field private mBackupKeyListener:Landroid/text/method/KeyListener;

.field private mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mBackupKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mBackupKeyListener:Landroid/text/method/KeyListener;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mBackupKeyListener:Landroid/text/method/KeyListener;

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    invoke-interface {v0}, Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;->onPreImeBackKey()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    invoke-interface {v0}, Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;->onLayoutUpdated()V

    :cond_0
    return-void
.end method

.method setOnEventListener(Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    return-void
.end method
