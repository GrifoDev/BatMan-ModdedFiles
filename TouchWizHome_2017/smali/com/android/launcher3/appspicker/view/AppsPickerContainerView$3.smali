.class Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$3;
.super Ljava/lang/Object;
.source "AppsPickerContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$3;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$3;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-static {v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->access$300(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->getSearchBarEditView()Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    invoke-static {}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onWindowFocusChanged : call showSoftInput"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
