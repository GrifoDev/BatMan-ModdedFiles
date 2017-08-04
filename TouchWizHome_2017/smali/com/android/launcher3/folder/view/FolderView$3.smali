.class Lcom/android/launcher3/folder/view/FolderView$3;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$000(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$100(Lcom/android/launcher3/folder/view/FolderView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$200(Lcom/android/launcher3/folder/view/FolderView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->access$202(Lcom/android/launcher3/folder/view/FolderView;Z)Z

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$000(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setCursorVisible(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$300(Lcom/android/launcher3/folder/view/FolderView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$000(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setCursorVisible(Z)V

    goto :goto_0
.end method
