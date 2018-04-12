.class Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "DefaultAssistPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment$1;->this$1:Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment$1;->this$1:Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
