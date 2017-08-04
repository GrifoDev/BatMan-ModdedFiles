.class Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$1;
.super Ljava/lang/Object;
.source "MultiSelectHelpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$1;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$1;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->hide(Z)V

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$1;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-static {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->access$000(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;)Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->setEnableHelpDialog(Z)V

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$1;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-static {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->access$100(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$1;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    return-void
.end method
