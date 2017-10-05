.class public Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;
.super Landroid/app/DialogFragment;
.source "OrganizeAppsConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "OrganizeAppsDialog"


# instance fields
.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "OrganizeAppsDialog"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method private organizeApps()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "OrganizeAppsDialog"

    const-string v1, "organizeApps() : activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->setOrganizeAppsAlertEnable(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->prepareTidedUpPages()V

    goto :goto_0
.end method


# virtual methods
.method public cancelDelete()V
    .locals 0

    return-void
.end method

.method getCurrentInstance(Landroid/app/FragmentManager;)Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;
    .locals 1

    const-string v0, "OrganizeAppsDialog"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;

    return-object v0
.end method

.method isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "OrganizeAppsDialog"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->organizeApps()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f090087

    invoke-virtual {p0, v4}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090088

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09007e

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->cancelDelete()V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const-string v0, "OrganizeAppsDialog"

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
