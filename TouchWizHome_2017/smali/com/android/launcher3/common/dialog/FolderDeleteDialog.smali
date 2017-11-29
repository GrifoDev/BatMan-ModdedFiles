.class public Lcom/android/launcher3/common/dialog/FolderDeleteDialog;
.super Landroid/app/DialogFragment;
.source "FolderDeleteDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "FolderDeleteDialog"


# instance fields
.field private mController:Lcom/android/launcher3/common/stage/Stage;

.field private mFolderInfo:Lcom/android/launcher3/folder/FolderInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "FolderDeleteDialog"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method public static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "FolderDeleteDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "FolderDeleteDialog"

    const-string v1, "Activity is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->mController:Lcom/android/launcher3/common/stage/Stage;

    check-cast v0, Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->mFolderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->mFolderInfo:Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->mFolderInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    if-eqz v2, :cond_2

    const v4, 0x7f0900a0

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09009c

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090031

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v4, 0x7f09009e

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    const v4, 0x7f09009f

    :goto_3
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->mFolderInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v7, v7, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const v4, 0x7f09009d

    goto :goto_3
.end method

.method public show(Landroid/app/FragmentManager;Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 1

    invoke-static {p1}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p3, p0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->mFolderInfo:Lcom/android/launcher3/folder/FolderInfo;

    iput-object p2, p0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->mController:Lcom/android/launcher3/common/stage/Stage;

    const-string v0, "FolderDeleteDialog"

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
