.class Lcom/android/launcher3/folder/view/FolderView$7;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mBackKeyPressed:Z

.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$7;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView$7;->mBackKeyPressed:Z

    return-void
.end method


# virtual methods
.method public onLayoutUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$7;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$300(Lcom/android/launcher3/folder/view/FolderView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView$7;->mBackKeyPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$7;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$7$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/view/FolderView$7$1;-><init>(Lcom/android/launcher3/folder/view/FolderView$7;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView$7;->mBackKeyPressed:Z

    return-void
.end method

.method public onPreImeBackKey()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView$7;->mBackKeyPressed:Z

    const/4 v0, 0x0

    return v0
.end method
