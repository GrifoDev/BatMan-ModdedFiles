.class public Lcom/android/systemui/popup/PopupUINotificationsImpl;
.super Ljava/lang/Object;
.source "PopupUINotificationsImpl.java"

# interfaces
.implements Lcom/android/systemui/popup/PopupUINotifications;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataConnectionAlertDialog:Landroid/app/AlertDialog;

.field private mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

.field private mMCCSettingAlertDialog:Landroid/app/AlertDialog;

.field private mResources:Landroid/content/res/Resources;

.field private mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/popup/PopupUINotificationsImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/popup/PopupUINotificationsImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public dismissAlertDialogs()V
    .locals 2

    const-string/jumbo v0, "PopupUI.PopupUINotifications"

    const-string/jumbo v1, "dismissAlertDialogs()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    return-void
.end method

.method public setDialogWindowType(Landroid/app/AlertDialog;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public showDataConnectionAlertDialogs(Landroid/content/Intent;)V
    .locals 24

    const-string/jumbo v20, "type"

    const/16 v21, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v20, "PopupUI.PopupUINotifications"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "showDataConnectionNotifications() : type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const-string/jumbo v7, ""

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch v19, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->setDialogWindowType(Landroid/app/AlertDialog;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f120215

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    sget-boolean v20, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f120214

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f120a0d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f1201d4

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v20, Lcom/android/systemui/popup/PopupUINotificationsImpl$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/PopupUINotificationsImpl$1;-><init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f120213

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f120218

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f120217

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f1207f3

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f1201d4

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v20, Lcom/android/systemui/popup/PopupUINotificationsImpl$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/PopupUINotificationsImpl$2;-><init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f120219

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f120210

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f120b6e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "phone"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v9

    if-eqz v9, :cond_4

    const/16 v20, 0x0

    array-length v0, v9

    move/from16 v21, v0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    aget-object v10, v9, v20

    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    new-instance v20, Landroid/content/ComponentName;

    const-string/jumbo v21, "com.android.systemui"

    const-string/jumbo v22, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct/range {v20 .. v22}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v15}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v17

    const-string/jumbo v20, "android.net.NETWORK_TEMPLATE"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v20, "PopupUI.PopupUINotifications"

    const-string/jumbo v21, "showDataConnectionNotifications() : hasPolicy is false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v20, "PopupUI.PopupUINotifications"

    const-string/jumbo v21, "showDataConnectionNotifications() : Failed TelephonyManager.getSubscriberId"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v20, "no_signal_retry_enable"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    const-string/jumbo v20, "no_signal_retry_intent"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    const-string/jumbo v20, "PopupUI.PopupUINotifications"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "showDataConnectionNotifications() : retry = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ",  PendingIntent = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f120219

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f12021a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f12092f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v20, Lcom/android/systemui/popup/PopupUINotificationsImpl$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v12}, Lcom/android/systemui/popup/PopupUINotificationsImpl$3;-><init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;ZLandroid/app/PendingIntent;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f1206ae

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f120b6e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :pswitch_5
    const-string/jumbo v20, "PopupUI.PopupUINotifications"

    const-string/jumbo v21, "showDataConnectionNotifications() : doesn\'t AlertDialog.show()"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public showDataConnectionToastNotification()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12021b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showFlightModeEnabledAlertDialog()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f12036f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isVoLTEVideoCallSupportedSIM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f12036e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f120b6e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->setDialogWindowType(Landroid/app/AlertDialog;I)V

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f12036d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showMobileDeviceWarningToastNotification()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120733

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string/jumbo v0, "PopupUI.PopupUINotifications"

    const-string/jumbo v1, "showMobileDeviceWarningToastNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showSIMCardTrayWaterProtectionAlertDialog(IZ)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-eqz p2, :cond_1

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-nez v7, :cond_2

    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    const v9, 0x1030132

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0d01ac

    invoke-virtual {v5, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f0a04b6

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-boolean v7, Lcom/android/systemui/Rune;->POPUP_SUPPORT_SIM_CARD_TRAY_ON_RIGHT_WATER_PROTECTION_POPUP:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0805be

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    if-ne p1, v11, :cond_4

    const v6, 0x7f1209da

    :goto_1
    const v7, 0x7f0a04b7

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f1209db

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f120b6e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/systemui/popup/PopupUINotificationsImpl$4;

    invoke-direct {v7, p0}, Lcom/android/systemui/popup/PopupUINotificationsImpl$4;-><init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v7, v11}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->setDialogWindowType(Landroid/app/AlertDialog;I)V

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    :cond_2
    return-void

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0805c3

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    const v6, 0x7f1209d9

    goto :goto_1
.end method
