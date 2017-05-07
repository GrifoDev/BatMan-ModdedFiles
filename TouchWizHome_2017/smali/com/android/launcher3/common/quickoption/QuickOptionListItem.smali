.class public Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
.super Ljava/lang/Object;
.source "QuickOptionListItem.java"


# static fields
.field static final ADD_APPS_ICON_ID:I = 0x7f020098

.field static final ADD_APPS_TEXT_ID:I = 0x7f070078

.field static final ADD_SHORTCUT_TO_HOME_ICON_ID:I = 0x7f020099

.field static final ADD_SHORTCUT_TO_HOME_TEXT_ID:I = 0x7f070079

.field static final ADD_TO_PERSONAL_ICON_ID:I = 0x7f02009a

.field static final ADD_TO_PERSONAL_TEXT_ID:I = 0x7f07007a

.field static final APP_INFO_ICON_ID:I = 0x7f02009c

.field static final APP_INFO_TEXT_ID:I = 0x7f07007b

.field static final CLEAR_BADGE_ICON_ID:I = 0x7f02009d

.field static final CLEAR_BADGE_TEXT_ID:I = 0x7f07007d

.field static final DELETE_FOLDER_ICON_ID:I = 0x7f0200a3

.field static final DELETE_FOLDER_TEXT_ID:I = 0x7f07007e

.field static final DIMMED_DISABLE_TEXT_ID:I = 0x7f070081

.field static final DISABLE_ICON_ID:I = 0x7f02009e

.field static final DISABLE_TEXT_ID:I = 0x7f070082

.field static final INSTALL_DUAL_IM_ICON_ID:I = 0x7f02009f

.field static final INSTALL_DUAL_IM_TEXT_ID:I = 0x7f070083

.field static final LOCK_ICON_ID:I = 0x7f0200a1

.field static final LOCK_TEXT_ID:I = 0x7f070084

.field static final MOVE_FROM_FOLDER_ICON_ID:I = 0x7f0200a2

.field static final MOVE_FROM_FOLDER_TEXT_ID:I = 0x7f070085

.field static final REMOVE_ICON_ID:I = 0x7f0200a3

.field static final REMOVE_SHORTCUT_TEXT_ID:I = 0x7f070087

.field static final REMOVE_TEXT_ID:I = 0x7f070086

.field static final SECURE_FOLDER_ICON_ID:I = 0x7f02009b

.field static final SECURE_FOLDER_TEXT_ID:I = 0x7f070088

.field static final SELECT_ICON_ID:I = 0x7f0200a4

.field static final SELECT_TEXT_ID:I = 0x7f070089

.field static final SLEEP_ICON_ID:I = 0x7f0200a5

.field static final SLEEP_TEXT_ID:I = 0x7f07008a

.field static final UNINSTALL_ICON_ID:I = 0x7f0200a6

.field static final UNINSTALL_TEXT_ID:I = 0x7f07008c

.field static final UNLOCK_ICON_ID:I = 0x7f0200a7

.field static final UNLOCK_TEXT_ID:I = 0x7f07008d


# instance fields
.field private mCallBack:Ljava/lang/Runnable;

.field private mIconRsrId:I

.field private mTitleRsrId:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallback()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mCallBack:Ljava/lang/Runnable;

    return-object v0
.end method

.method getIconRsrId()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mIconRsrId:I

    return v0
.end method

.method getTitleRsrId()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mTitleRsrId:I

    return v0
.end method

.method isOptionRemove()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getIconRsrId()I

    move-result v0

    const v1, 0x7f0200a3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitleRsrId()I

    move-result v0

    const v1, 0x7f070086

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitleRsrId()I

    move-result v0

    const v1, 0x7f070087

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

.method setIconRsrId(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mIconRsrId:I

    return-void
.end method

.method setTitleRsrId(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->mTitleRsrId:I

    return-void
.end method
