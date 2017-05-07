.class Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog$1;
.super Ljava/lang/Object;
.source "DesktopModeLaunchConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog$1;->this$0:Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog$1;->this$0:Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;->-get0(Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/samsung/android/framework/res/R$id;->dex_dialog_launch_button_positive:I

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog$1;->this$0:Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;->-get0(Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog$1;->this$0:Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/samsung/android/framework/res/R$id;->dex_dialog_launch_button_negative:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog$1;->this$0:Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;->-get0(Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog$1;->this$0:Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;

    const/4 v3, -0x2

    invoke-interface {v1, v2, v3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
