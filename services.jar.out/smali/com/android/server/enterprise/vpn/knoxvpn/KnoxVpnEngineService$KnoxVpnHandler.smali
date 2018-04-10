.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;
.super Landroid/os/Handler;
.source "KnoxVpnEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KnoxVpnHandler"
.end annotation


# static fields
.field private static final ACTION_AIRPLANE_MODE_TURNED_ON:I = 0x14

.field private static final ACTION_BOOT_COMPLETED:I = 0xf

.field private static final ACTION_CONTAINER_ADMIN_CHANGED:I = 0xc

.field private static final ACTION_HANDLE_CAPTIVE_PORTAL:I = 0x1d

.field private static final ACTION_INITIALIZE_VPN:I = 0x8

.field private static final ACTION_MDM_VPN_RETRY:I = 0xb

.field private static final ACTION_MIGRATE_KNOX10_KNOX20:I = 0xa

.field private static final ACTION_PACKAGE_ADDED:I = 0x2

.field private static final ACTION_PACKAGE_REMOVED:I = 0x3

.field private static final ACTION_REMOVE_CREDENTIALS_KEYSTORE:I = 0x10

.field private static final ACTION_SEND_PROXY_BROADCAST:I = 0x12

.field private static final ACTION_START_VPN_CONNECTION_CLIENT:I = 0x17

.field private static final ACTION_STOP_VPN_CONNECTION_CLIENT:I = 0x18

.field private static final ACTION_UCM_REFRESH_DONE:I = 0x1c

.field private static final ACTION_ULTRA_POWER_SAVING_MODE:I = 0x16

.field private static final ACTION_UPDATE_IPTABLE_RULES_ETHERNET:I = 0x1b

.field private static final ACTION_UPDATE_IPTABLE_RULES_MOBILE:I = 0x1a

.field private static final ACTION_UPDATE_IPTABLE_RULES_WIFI:I = 0x19

.field private static final ACTION_USER_PRESENT:I = 0x15

.field private static final ACTION_USER_REMOVED:I = 0x6

.field private static final ACTION_USER_STARTED:I = 0x9

.field private static final ACTION_USER_SWITCHED:I = 0xd

.field private static final ACTION_VPN_INTERFACE_STATUS:I = 0x1

.field private static final ADMIN_REMOVAL_ACTION:I = 0x13

.field private static final CONNECTIVITY_ACTION:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    const-string/jumbo v13, "KnoxVpnEngineService"

    const-string/jumbo v14, "vpn handle : Message received"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap12(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v13, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionPackageRemoved(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap15(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap13(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap18(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap4(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    goto :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-get3(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-get3(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap11(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_8
    const-string/jumbo v13, "android.intent.extra.user_handle"

    const/16 v14, -0x2710

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap19(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap14(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    goto :goto_0

    :pswitch_9
    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.PROFILE_NAME_INTERNAL"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap3(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap10(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_b
    const-string/jumbo v13, "profileName"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-get6(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->removeProfileCredentials(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    const-string/jumbo v13, "uid"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap25(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    goto/16 :goto_0

    :pswitch_d
    const-string/jumbo v13, "uid"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap30(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap31(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    goto/16 :goto_0

    :pswitch_10
    const-string/jumbo v13, "reason"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v13, 0x5

    if-ne v6, v13, :cond_0

    const-string/jumbo v13, "KnoxVpnEngineService"

    const-string/jumbo v14, "ultra power saving mode has been disabled"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap27(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    goto/16 :goto_0

    :pswitch_11
    const-string/jumbo v13, "uid"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap28(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    goto/16 :goto_0

    :pswitch_12
    const-string/jumbo v13, "uid"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap32(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap8(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap7(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap6(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap27(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    goto/16 :goto_0

    :pswitch_17
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-get0()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string/jumbo v13, "KnoxVpnEngineService"

    const-string/jumbo v14, "handling captive portal"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v7, 0x0

    if-eqz v4, :cond_2

    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.EXTRA_CAPTIVE_PORTAL_URL_INTERNAL"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-get0()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string/jumbo v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "captive portal url "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-get4(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v13

    const/16 v14, 0x3e8

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleExceptionsForUid(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap5(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Z)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-get7(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap5(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
