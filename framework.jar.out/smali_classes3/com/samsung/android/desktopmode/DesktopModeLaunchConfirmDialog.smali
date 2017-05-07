.class public Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;
.super Landroid/app/AlertDialog;
.source "DesktopModeLaunchConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog$1;
    }
.end annotation


# instance fields
.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mViewOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog$1;-><init>(Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;)V

    iput-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    sget v3, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_dialog_launch_confirm:I

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setContentView(I)V

    sget v3, Lcom/samsung/android/framework/res/R$id;->title:I

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/framework/res/R$string;->dex_intro_welcome_to:I

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<br/><b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/framework/res/R$string;->dex_intro_samsung_dex:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/samsung/android/framework/res/R$id;->dex_dialog_launch_button_positive:I

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/framework/res/R$fraction;->dex_dialog_button_fraction:I

    invoke-virtual {v4, v5, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setWidth(I)V

    sget v3, Lcom/samsung/android/framework/res/R$id;->dex_dialog_launch_button_negative:I

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/framework/res/R$fraction;->dex_dialog_button_fraction:I

    invoke-virtual {v4, v5, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setWidth(I)V

    return-void
.end method

.method public setListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method
