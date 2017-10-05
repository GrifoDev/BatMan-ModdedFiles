.class public Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
.super Ljava/lang/Object;
.source "QuickOptionListItem.java"


# static fields
.field static final ADD_APPS_ICON_ID:I = 0x7f0200de

.field static final ADD_APPS_TEXT_ID:I = 0x7f090093

.field static final ADD_SHORTCUT_TO_HOME_ICON_ID:I = 0x7f0200df

.field static final ADD_SHORTCUT_TO_HOME_TEXT_ID:I = 0x7f090094

.field static final ADD_TO_PERSONAL_ICON_ID:I = 0x7f0200e0

.field static final ADD_TO_PERSONAL_TEXT_ID:I = 0x7f090095

.field static final APP_INFO_ICON_ID:I = 0x7f0200e2

.field static final APP_INFO_TEXT_ID:I = 0x7f090096

.field static final CLEAR_BADGE_ICON_ID:I = 0x7f0200e3

.field static final CLEAR_BADGE_TEXT_ID:I = 0x7f090098

.field static final DELETE_FOLDER_ICON_ID:I = 0x7f0200e9

.field static final DELETE_FOLDER_TEXT_ID:I = 0x7f090099

.field static final DIMMED_DISABLE_TEXT_ID:I = 0x7f09009c

.field static final DISABLE_ICON_ID:I = 0x7f0200e4

.field static final DISABLE_TEXT_ID:I = 0x7f09009d

.field static final INSTALL_DUAL_IM_ICON_ID:I = 0x7f0200e6

.field static final INSTALL_DUAL_IM_TEXT_ID:I = 0x7f09009e

.field static final LOCK_ICON_ID:I = 0x7f0200e7

.field static final LOCK_TEXT_ID:I = 0x7f09009f

.field static final MOVE_FROM_FOLDER_ICON_ID:I = 0x7f0200e8

.field static final MOVE_FROM_FOLDER_TEXT_ID:I = 0x7f0900a0

.field static final REMOVE_ICON_ID:I = 0x7f0200e9

.field static final REMOVE_SHORTCUT_TEXT_ID:I = 0x7f0900a2

.field static final REMOVE_TEXT_ID:I = 0x7f0900a1

.field static final SECURE_FOLDER_ICON_ID:I = 0x7f0200e1

.field static final SECURE_FOLDER_TEXT_ID:I = 0x7f0900a3

.field static final SELECT_ICON_ID:I = 0x7f0200ea

.field static final SELECT_TEXT_ID:I = 0x7f0900a4

.field static final SET_TO_ZEROPAGE_ICON_ID:I = 0x7f0200de

.field static final SET_TO_ZEROPAGE_TEXT_ID:I = 0x7f09019e

.field static final SLEEP_ICON_ID:I = 0x7f0200eb

.field static final SLEEP_TEXT_ID:I = 0x7f0900a5

.field static final TYPE_DEEP_SHORTCUT:I = 0x1

.field static final TYPE_GLOBAL_OPTION:I = 0x0

.field static final TYPE_SEPARATOR:I = 0x2

.field static final UNINSTALL_ICON_ID:I = 0x7f0200ec

.field static final UNINSTALL_TEXT_ID:I = 0x7f0900a7

.field static final UNLOCK_ICON_ID:I = 0x7f0200ed

.field static final UNLOCK_TEXT_ID:I = 0x7f0900a8


# instance fields
.field private mCallBack:Ljava/lang/Runnable;

.field private mDeepShortcutKey:Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconRsrId:I

.field private mTitle:Ljava/lang/String;

.field private mTitleRsrId:I

.field private mType:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mType:I

    return-void
.end method


# virtual methods
.method public getCallback()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mCallBack:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getIconRsrId()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mIconRsrId:I

    return v0
.end method

.method public getShortcutKey()Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mDeepShortcutKey:Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method getTitleRsrId()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mTitleRsrId:I

    return v0
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mType:I

    return v0
.end method

.method isOptionRemove()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getIconRsrId()I

    move-result v0

    const v1, 0x7f0200e9

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitleRsrId()I

    move-result v0

    const v1, 0x7f0900a1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitleRsrId()I

    move-result v0

    const v1, 0x7f0900a2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mCallBack:Ljava/lang/Runnable;

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method setIconRsrId(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mIconRsrId:I

    return-void
.end method

.method public setShortcutKey(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mDeepShortcutKey:Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method setTitleRsrId(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mTitleRsrId:I

    return-void
.end method

.method setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mType:I

    return-void
.end method
