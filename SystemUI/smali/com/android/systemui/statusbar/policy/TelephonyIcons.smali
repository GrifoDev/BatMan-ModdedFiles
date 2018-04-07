.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_ACTIVITY_ATT:[I

.field static final DATA_ACTIVITY_DEFAULT:[I

.field static final DATA_ACTIVITY_LTE_PLUS:[I

.field static final DATA_ACTIVITY_LTE_PLUS_KT:[I

.field static final DATA_ACTIVITY_TMO:[I

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_CU:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_USCC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_HALF_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field public static final PreferredSimIcon:[I

.field static final TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH_TWO_LINE:[I

.field static final TELEPHONY_CTC_SIGNAL_STRENGTH:[I

.field static final TELEPHONY_CTC_SIGNAL_STRENGTH_TWO_LINE:[I

.field static final TELEPHONY_NO_NETWORK:I

.field static final TELEPHONY_PURE_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_5_LEVEL_STRENGTH_FOCUS:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_FOCUS:[[I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TWO_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonyNoServiceIcon()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v7, 0x1

    const-string/jumbo v8, "switch_signal"

    invoke-static {v8, v7}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_f

    const v9, 0x1

    if-eq v8, v9, :cond_f

    const v9, 0x2

    if-eq v8, v9, :cond_0

    const v9, 0x3

    if-eq v8, v9, :cond_1

    const v9, 0x4

    if-eq v8, v9, :cond_2

    const v9, 0x5

    if-eq v8, v9, :cond_3

    const v9, 0x6

    if-eq v8, v9, :cond_4

    const v9, 0x7

    if-eq v8, v9, :cond_5

    const v9, 0x8

    if-eq v8, v9, :cond_6

    const v9, 0x9

    if-eq v8, v9, :cond_7

    const v9, 0xa

    if-eq v8, v9, :cond_8

    const v9, 0xb

    if-eq v8, v9, :cond_9

    const v9, 0xc

    if-eq v8, v9, :cond_a

    const v9, 0xd

    if-eq v8, v9, :cond_b

    const v9, 0xe

    if-eq v8, v9, :cond_c

    const v9, 0xf

    if-eq v8, v9, :cond_d

    const v9, 0x10

    if-eq v8, v9, :cond_e

    :cond_0
    const-string/jumbo v7, "stat_sys_signal_0_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v7, "stat_sys_signal_0_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v7, "stat_sys_signal_0_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v7, "stat_sys_signal_0_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v7, "stat_sys_signal_0_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v7, "stat_sys_signal_0_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v7, "stat_sys_signal_0_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v7, "stat_sys_signal_0_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v7, "stat_sys_signal_0_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v7, "stat_sys_signal_0_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v7, "stat_sys_signal_0_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v7, "stat_sys_signal_0_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v7, "stat_sys_signal_0_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v7, "stat_sys_signal_0_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v7, "stat_sys_signal_0_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_f
    const v1, 0x7f080676

    const v2, 0x7f080678

    const v3, 0x7f08067a

    const v4, 0x7f08067c

    const v5, 0x7f08067e

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f080676

    const v2, 0x7f080678

    const v3, 0x7f08067a

    const v4, 0x7f08067c

    const v5, 0x7f08067e

    :goto_0
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v7, 0x1

    const-string/jumbo v8, "switch_signal_sim2"

    invoke-static {v8, v7}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1f

    const v9, 0x1

    if-eq v8, v9, :cond_1f

    const v9, 0x2

    if-eq v8, v9, :cond_10

    const v9, 0x3

    if-eq v8, v9, :cond_11

    const v9, 0x4

    if-eq v8, v9, :cond_12

    const v9, 0x5

    if-eq v8, v9, :cond_13

    const v9, 0x6

    if-eq v8, v9, :cond_14

    const v9, 0x7

    if-eq v8, v9, :cond_15

    const v9, 0x8

    if-eq v8, v9, :cond_16

    const v9, 0x9

    if-eq v8, v9, :cond_17

    const v9, 0xa

    if-eq v8, v9, :cond_18

    const v9, 0xb

    if-eq v8, v9, :cond_19

    const v9, 0xc

    if-eq v8, v9, :cond_1a

    const v9, 0xd

    if-eq v8, v9, :cond_1b

    const v9, 0xe

    if-eq v8, v9, :cond_1c

    const v9, 0xf

    if-eq v8, v9, :cond_1d

    const v9, 0x10

    if-eq v8, v9, :cond_1e

    :cond_10
    const-string/jumbo v7, "stat_sys_signal_0_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v7, "stat_sys_signal_0_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v7, "stat_sys_signal_0_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v7, "stat_sys_signal_0_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v7, "stat_sys_signal_0_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v7, "stat_sys_signal_0_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v7, "stat_sys_signal_0_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v7, "stat_sys_signal_0_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_18
    const-string/jumbo v7, "stat_sys_signal_0_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_19
    const-string/jumbo v7, "stat_sys_signal_0_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_1a
    const-string/jumbo v7, "stat_sys_signal_0_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v7, "stat_sys_signal_0_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_1c
    const-string/jumbo v7, "stat_sys_signal_0_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_1d
    const-string/jumbo v7, "stat_sys_signal_0_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_1e
    const-string/jumbo v7, "stat_sys_signal_0_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v7, "stat_sys_signal_0_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "stat_sys_signal_1_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, "stat_sys_signal_2_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v7, "stat_sys_signal_3_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "stat_sys_signal_4_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_1f
    const v1, 0x7f080676

    const v2, 0x7f080678

    const v3, 0x7f08067a

    const v4, 0x7f08067c

    const v5, 0x7f08067e

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f080676

    const v2, 0x7f080678

    const v3, 0x7f08067a

    const v4, 0x7f08067c

    const v5, 0x7f08067e

    :goto_1
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_5_LEVEL_STRENGTH_FOCUS:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_PURE_SIGNAL_STRENGTH:[[I

    const v0, 0x7f08068b

    const v1, 0x7f08068c

    const v2, 0x7f08068d

    const v3, 0x7f08068e

    const v4, 0x7f08068f

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_SIGNAL_STRENGTH:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH:[I

    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_SIGNAL_STRENGTH_TWO_LINE:[I

    const/16 v0, 0x24

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH_TWO_LINE:[I

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "CARRIER_NETWORK_CHANGE"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v3, 0x0

    aget v9, v2, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12003f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "3G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004b

    const v11, 0x7f08060a

    const/4 v12, 0x1

    const v13, 0x7f0802ae

    const v14, 0x7f08064c

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "WFC"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "Unknown"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0x7f080659

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "E"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004f

    const v11, 0x7f080617

    const/4 v12, 0x0

    const v13, 0x7f0802b2

    const v14, 0x7f080652

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "1X"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004e

    const v11, 0x7f080607

    const/4 v12, 0x1

    const v13, 0x7f0802ad

    const v14, 0x7f08064a

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f120050

    const v11, 0x7f080618

    const/4 v12, 0x0

    const v13, 0x7f0802b3

    const v14, 0x7f080653

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "H"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004a

    const v11, 0x7f080619

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f080654

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004c

    const v11, 0x7f08060f

    const/4 v12, 0x1

    const v13, 0x7f0802af

    const v14, 0x7f08064f

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G+"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004d

    const v11, 0x7f080612

    const/4 v12, 0x1

    const v13, 0x7f0802b0

    const v14, 0x7f080650

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f120052

    const v11, 0x7f08061b

    const/4 v12, 0x1

    const v13, 0x7f0802b6

    const v14, 0x7f080656

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "H_Plus"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004a

    const v11, 0x7f08061a

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f080655

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "DC"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004a

    const v11, 0x7f080616

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f080651

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_LTE_LTN"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f120052

    const v11, 0x7f0805e3

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f080622

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_ATT"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004c

    const v11, 0x7f080610

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f08064f

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE_ATT"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f120052

    const v11, 0x7f08061c

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f080656

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "3G_TMO"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004b

    const v11, 0x7f08060d

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f08064c

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_TMO"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004c

    const v11, 0x7f080613

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f08064f

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE_TMO"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f120052

    const v11, 0x7f080620

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f080656

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_VZW"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004c

    const v11, 0x7f080615

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f08064f

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_USCC"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004c

    const v11, 0x7f080614

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f08064f

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_USCC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "3G_Plus"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004b

    const v11, 0x7f08060c

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f08064d

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "2G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004e

    const v11, 0x7f080608

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f08064b

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_CU"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004c

    const v11, 0x7f080611

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f08064f

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_CU:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE+"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f120053

    const v11, 0x7f08061e

    const/4 v12, 0x1

    const v13, 0x7f0802b7

    const v14, 0x7f080658

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "2G_KT"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f120050

    const v11, 0x7f080609

    const/4 v12, 0x0

    const v13, 0x7f0802b3

    const v14, 0x7f080653

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "3G_KT"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004b

    const v11, 0x7f08060b

    const/4 v12, 0x0

    const v13, 0x7f0802b4

    const v14, 0x7f08064c

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE_KT"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f120052

    const v11, 0x7f08061d

    const/4 v12, 0x0

    const v13, 0x7f0802b6

    const v14, 0x7f080656

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE_Plus_KT"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f120052

    const v11, 0x7f08061f

    const/4 v12, 0x1

    const v13, 0x7f0802b6

    const v14, 0x7f080658

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4.5G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v10, 0x7f12004c

    const v11, 0x7f08060e

    const/4 v12, 0x1

    const v13, 0x7f0802af

    const v14, 0x7f08064e

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_HALF_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "DataDisabled"

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v3, 0x0

    aget v9, v2, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v10, 0x7f120044

    const v11, 0x7f0805f6

    const/4 v12, 0x0

    const v13, 0x7f08029b

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const v0, 0x7f0806fa

    const v1, 0x7f0806ec

    const v2, 0x7f080701

    const v3, 0x7f0806f4

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_DEFAULT:[I

    const/4 v0, 0x0

    const v1, 0x7f0806ed

    const v2, 0x7f080702

    const v3, 0x7f0806f5

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_ATT:[I

    const v0, 0x7f0806fd

    const v1, 0x7f0806f3

    const v2, 0x7f080708

    const v3, 0x7f0806f8

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_TMO:[I

    const v0, 0x7f0806fb

    const v1, 0x7f0806f1

    const v2, 0x7f080706

    const v3, 0x7f0806f6

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS:[I

    const v0, 0x7f0806fc

    const v1, 0x7f0806f2

    const v2, 0x7f080707

    const v3, 0x7f0806f7

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS_KT:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->PreferredSimIcon:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080680
        0x7f080682
        0x7f080684
        0x7f080686
        0x7f080688
        0x7f08068a
    .end array-data

    :array_1
    .array-data 4
        0x7f080680
        0x7f080682
        0x7f080684
        0x7f080686
        0x7f080688
        0x7f08068a
    .end array-data

    :array_2
    .array-data 4
        0x7f0806de
        0x7f0806e0
        0x7f0806e2
        0x7f0806e4
        0x7f0806e6
        0x7f0806e8
    .end array-data

    :array_3
    .array-data 4
        0x7f0806de
        0x7f0806e0
        0x7f0806e2
        0x7f0806e4
        0x7f0806e6
        0x7f0806e8
    .end array-data

    :array_4
    .array-data 4
        0x7f080718
        0x7f08071a
        0x7f08071c
        0x7f08071e
        0x7f080720
        0x7f080722
    .end array-data

    :array_5
    .array-data 4
        0x7f08070a
        0x7f08070c
        0x7f08070e
        0x7f080710
        0x7f080712
        0x7f080714
    .end array-data

    :array_6
    .array-data 4
        0x7f080690
        0x7f080691
        0x7f080692
        0x7f080693
        0x7f080694
        0x7f080695
    .end array-data

    :array_7
    .array-data 4
        0x7f080696
        0x7f080697
        0x7f080698
        0x7f080699
        0x7f08069a
        0x7f08069b
        0x7f08069c
        0x7f08069d
        0x7f08069e
        0x7f08069f
        0x7f0806a0
        0x7f0806a1
        0x7f0806a2
        0x7f0806a3
        0x7f0806a4
        0x7f0806a5
        0x7f0806a6
        0x7f0806a7
        0x7f0806a8
        0x7f0806a9
        0x7f0806aa
        0x7f0806ab
        0x7f0806ac
        0x7f0806ad
        0x7f0806ae
    .end array-data

    :array_8
    .array-data 4
        0x7f0806af
        0x7f0806b0
        0x7f0806b1
        0x7f0806b2
        0x7f0806b3
        0x7f0806b4
        0x7f0806b5
        0x7f0806b6
        0x7f0806b7
        0x7f0806b8
        0x7f0806b9
        0x7f0806ba
        0x7f0806bb
        0x7f0806bc
        0x7f0806bd
        0x7f0806be
        0x7f0806bf
        0x7f0806c0
        0x7f0806c1
        0x7f0806c2
        0x7f0806c3
        0x7f0806c4
        0x7f0806c5
        0x7f0806c6
        0x7f0806c7
        0x7f0806c8
        0x7f0806c9
        0x7f0806ca
        0x7f0806cb
        0x7f0806cc
        0x7f0806cd
        0x7f0806ce
        0x7f0806cf
        0x7f0806d0
        0x7f0806d1
        0x7f0806d2
    .end array-data

    :array_9
    .array-data 4
        0x7f080667
        0x7f080668
        0x7f08066a
        0x7f08066e
        0x7f08066e
        0x7f08066d
        0x7f08066c
        0x7f08066f
        0x7f08066b
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTelephonyNoServiceIcon()I
    .locals 3

    sget-boolean v1, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v1, :cond_0

    const v0, 0x7f080716

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f080700

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "TMB"

    sget-object v2, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "MTR"

    sget-object v2, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const v0, 0x7f0806ff

    goto :goto_0

    :cond_3
    const v0, 0x7f0806fe

    goto :goto_0
.end method

.method static getTelephonySignalContentDesc()[I
    .locals 2

    sget v0, Lcom/android/systemui/Rune;->STATBAR_MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    return-object v1
.end method

.method static getTelephonySignalStrength()[[I
    .locals 2

    sget v0, Lcom/android/systemui/Rune;->STATBAR_MAX_SIGNAL_LEVEL:I

    sget-boolean v1, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_PURE_SIGNAL_STRENGTH:[[I

    return-object v1

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    return-object v1

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    return-object v1
.end method

.method static getTelephonySignalStrengthFocusBg()I
    .locals 2

    sget v0, Lcom/android/systemui/Rune;->STATBAR_MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const v0, 0x7f0806e9

    return v0

    :cond_0
    const v0, 0x7f0806ea

    return v0
.end method

.method static getTelephonySignalStrengthFocused()[[I
    .locals 2

    sget v0, Lcom/android/systemui/Rune;->STATBAR_MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_5_LEVEL_STRENGTH_FOCUS:[[I

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[[I

    return-object v0
.end method

.method static getTelephonySignalStrengthForCTC(Z)[I
    .locals 2

    sget v0, Lcom/android/systemui/Rune;->STATBAR_MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH_TWO_LINE:[I

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH:[I

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_SIGNAL_STRENGTH_TWO_LINE:[I

    return-object v0

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_SIGNAL_STRENGTH:[I

    return-object v0
.end method
