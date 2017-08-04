.class Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$4;
.super Ljava/lang/Object;
.source "AppsPickerSearchBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->onVoiceSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->access$400(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->access$400(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->access$400(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->access$400(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
