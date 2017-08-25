.class public Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;
.super Landroid/app/DialogFragment;
.source "WifiSecSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiSkipDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "messageRes"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "messageRes"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "SupportLightNavigationBar|SupportForceTouch|SupportCustomBgColor|SupportNaviBarRemoteView"

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0e65

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;)V

    const v5, 0x7f0b1495

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;)V

    const v5, 0x7f0b1496

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    or-int/lit16 v4, v4, 0x200

    or-int/lit16 v4, v4, 0x1000

    or-int/lit16 v4, v4, 0x100

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
