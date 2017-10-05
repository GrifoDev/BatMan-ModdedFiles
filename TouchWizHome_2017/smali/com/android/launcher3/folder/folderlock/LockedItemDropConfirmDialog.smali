.class public Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;
.super Landroid/app/DialogFragment;
.source "LockedItemDropConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LockedItemDropConfirmDialog"

.field private static sDropedInfo:Lcom/android/launcher3/common/base/item/ItemInfo; = null

.field private static final sFragmentTag:Ljava/lang/String; = "LockedItemDropConfirm"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3

    sput-object p1, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->sDropedInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    new-instance v0, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;

    invoke-direct {v0}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "LockedItemDropConfirm"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v1, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->sDropedInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->unlockItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    const-string v2, ""

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09005a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09009f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v5, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog$1;

    invoke-direct {v5, p0}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog$1;-><init>(Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method
