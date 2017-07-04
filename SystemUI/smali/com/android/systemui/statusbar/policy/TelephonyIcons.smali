.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_4G:[[I

.field static final DATA_4G_PLUS:[[I

.field static final DATA_ACTIVITY_ATT:[I

.field static final DATA_ACTIVITY_DEFAULT:[I

.field static final DATA_ACTIVITY_LTE_PLUS:[I

.field static final DATA_ACTIVITY_LTE_PLUS_KT:[I

.field static final DATA_ACTIVITY_TMO:[I

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_LTE:[[I

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

.field static final QS_TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

.field static final QS_TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final ROAMING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

.field static final TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH_TWO_LINE:[I

.field static final TELEPHONY_CTC_SIGNAL_STRENGTH:[I

.field static final TELEPHONY_CTC_SIGNAL_STRENGTH_TWO_LINE:[I

.field static final TELEPHONY_NO_NETWORK:I

.field static final TELEPHONY_PURE_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_5_LEVEL_STRENGTH_FOCUS:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_FOCUS:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

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

    const-string v8, "switch_signal"

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
    const v1, 0x7f02087f

    const v2, 0x7f02089d

    const v3, 0x7f0208bb

    const v4, 0x7f0208d9

    const v5, 0x7f0208f7

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02087f

    const v2, 0x7f02089d

    const v3, 0x7f0208bb

    const v4, 0x7f0208d9

    const v5, 0x7f0208f7

    goto/16 :goto_0

    :cond_1
    const v1, 0x7f020881

    const v2, 0x7f02089f

    const v3, 0x7f0208bd

    const v4, 0x7f0208db

    const v5, 0x7f0208f9

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020881

    const v2, 0x7f02089f

    const v3, 0x7f0208bd

    const v4, 0x7f0208db

    const v5, 0x7f0208f9

    goto/16 :goto_0

    :cond_2
    const v1, 0x7f020883

    const v2, 0x7f0208a1

    const v3, 0x7f0208bf

    const v4, 0x7f0208dd

    const v5, 0x7f0208fb

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020883

    const v2, 0x7f0208a1

    const v3, 0x7f0208bf

    const v4, 0x7f0208dd

    const v5, 0x7f0208fb

    goto/16 :goto_0

    :cond_3
    const v1, 0x7f020885

    const v2, 0x7f0208a3

    const v3, 0x7f0208c1

    const v4, 0x7f0208df

    const v5, 0x7f0208fd

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020885

    const v2, 0x7f0208a3

    const v3, 0x7f0208c1

    const v4, 0x7f0208df

    const v5, 0x7f0208fd

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f020887

    const v2, 0x7f0208a5

    const v3, 0x7f0208c3

    const v4, 0x7f0208e1

    const v5, 0x7f0208ff

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020887

    const v2, 0x7f0208a5

    const v3, 0x7f0208c3

    const v4, 0x7f0208e1

    const v5, 0x7f0208ff

    goto/16 :goto_0

    :cond_5
    const v1, 0x7f020889

    const v2, 0x7f0208a7

    const v3, 0x7f0208c5

    const v4, 0x7f0208e3

    const v5, 0x7f020901

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020889

    const v2, 0x7f0208a7

    const v3, 0x7f0208c5

    const v4, 0x7f0208e3

    const v5, 0x7f020901

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f02088b

    const v2, 0x7f0208a9

    const v3, 0x7f0208c7

    const v4, 0x7f0208e5

    const v5, 0x7f020903

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02088b

    const v2, 0x7f0208a9

    const v3, 0x7f0208c7

    const v4, 0x7f0208e5

    const v5, 0x7f020903

    goto/16 :goto_0

    :cond_7
    const v1, 0x7f02088d

    const v2, 0x7f0208ab

    const v3, 0x7f0208c9

    const v4, 0x7f0208e7

    const v5, 0x7f020905

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02088d

    const v2, 0x7f0208ab

    const v3, 0x7f0208c9

    const v4, 0x7f0208e7

    const v5, 0x7f020905

    goto/16 :goto_0

    :cond_8
    const v1, 0x7f020871

    const v2, 0x7f02088f

    const v3, 0x7f0208ad

    const v4, 0x7f0208cb

    const v5, 0x7f0208e9

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020871

    const v2, 0x7f02088f

    const v3, 0x7f0208ad

    const v4, 0x7f0208cb

    const v5, 0x7f0208e9

    goto/16 :goto_0

    :cond_9
    const v1, 0x7f020873

    const v2, 0x7f020891

    const v3, 0x7f0208af

    const v4, 0x7f0208cd

    const v5, 0x7f0208eb

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020873

    const v2, 0x7f020891

    const v3, 0x7f0208af

    const v4, 0x7f0208cd

    const v5, 0x7f0208eb

    goto/16 :goto_0

    :cond_a
    const v1, 0x7f020875

    const v2, 0x7f020893

    const v3, 0x7f0208b1

    const v4, 0x7f0208cf

    const v5, 0x7f0208ed

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020875

    const v2, 0x7f020893

    const v3, 0x7f0208b1

    const v4, 0x7f0208cf

    const v5, 0x7f0208ed

    goto/16 :goto_0

    :cond_b
    const v1, 0x7f020877

    const v2, 0x7f020895

    const v3, 0x7f0208b3

    const v4, 0x7f0208d1

    const v5, 0x7f0208ef

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020877

    const v2, 0x7f020895

    const v3, 0x7f0208b3

    const v4, 0x7f0208d1

    const v5, 0x7f0208ef

    goto/16 :goto_0

    :cond_c
    const v1, 0x7f020879

    const v2, 0x7f020897

    const v3, 0x7f0208b5

    const v4, 0x7f0208d3

    const v5, 0x7f0208f1

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020879

    const v2, 0x7f020897

    const v3, 0x7f0208b5

    const v4, 0x7f0208d3

    const v5, 0x7f0208f1

    goto :goto_0

    :cond_d
    const v1, 0x7f02087b

    const v2, 0x7f020899

    const v3, 0x7f0208b7

    const v4, 0x7f0208d5

    const v5, 0x7f0208f3

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02087b

    const v2, 0x7f020899

    const v3, 0x7f0208b7

    const v4, 0x7f0208d5

    const v5, 0x7f0208f3

    goto :goto_0

    :cond_e
    const v1, 0x7f02087d

    const v2, 0x7f02089b

    const v3, 0x7f0208b9

    const v4, 0x7f0208d7

    const v5, 0x7f0208f5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02087d

    const v2, 0x7f02089b

    const v3, 0x7f0208b9

    const v4, 0x7f0208d7

    const v5, 0x7f0208f5

    goto :goto_0

    :cond_f
    const v1, 0x7f02067d

    const v2, 0x7f020680

    const v3, 0x7f020683

    const v4, 0x7f020686

    const v5, 0x7f020689

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02067d

    const v2, 0x7f020680

    const v3, 0x7f020683

    const v4, 0x7f020686

    const v5, 0x7f020689

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

    const-string v8, "switch_signal_sim2"

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
    const v1, 0x7f02087f

    const v2, 0x7f02089d

    const v3, 0x7f0208bb

    const v4, 0x7f0208d9

    const v5, 0x7f0208f7

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02087f

    const v2, 0x7f02089d

    const v3, 0x7f0208bb

    const v4, 0x7f0208d9

    const v5, 0x7f0208f7

    goto/16 :goto_1

    :cond_11
    const v1, 0x7f020881

    const v2, 0x7f02089f

    const v3, 0x7f0208bd

    const v4, 0x7f0208db

    const v5, 0x7f0208f9

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020881

    const v2, 0x7f02089f

    const v3, 0x7f0208bd

    const v4, 0x7f0208db

    const v5, 0x7f0208f9

    goto/16 :goto_1

    :cond_12
    const v1, 0x7f020883

    const v2, 0x7f0208a1

    const v3, 0x7f0208bf

    const v4, 0x7f0208dd

    const v5, 0x7f0208fb

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020883

    const v2, 0x7f0208a1

    const v3, 0x7f0208bf

    const v4, 0x7f0208dd

    const v5, 0x7f0208fb

    goto/16 :goto_1

    :cond_13
    const v1, 0x7f020885

    const v2, 0x7f0208a3

    const v3, 0x7f0208c1

    const v4, 0x7f0208df

    const v5, 0x7f0208fd

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020885

    const v2, 0x7f0208a3

    const v3, 0x7f0208c1

    const v4, 0x7f0208df

    const v5, 0x7f0208fd

    goto/16 :goto_1

    :cond_14
    const v1, 0x7f020887

    const v2, 0x7f0208a5

    const v3, 0x7f0208c3

    const v4, 0x7f0208e1

    const v5, 0x7f0208ff

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020887

    const v2, 0x7f0208a5

    const v3, 0x7f0208c3

    const v4, 0x7f0208e1

    const v5, 0x7f0208ff

    goto/16 :goto_1

    :cond_15
    const v1, 0x7f020889

    const v2, 0x7f0208a7

    const v3, 0x7f0208c5

    const v4, 0x7f0208e3

    const v5, 0x7f020901

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020889

    const v2, 0x7f0208a7

    const v3, 0x7f0208c5

    const v4, 0x7f0208e3

    const v5, 0x7f020901

    goto/16 :goto_1

    :cond_16
    const v1, 0x7f02088b

    const v2, 0x7f0208a9

    const v3, 0x7f0208c7

    const v4, 0x7f0208e5

    const v5, 0x7f020903

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02088b

    const v2, 0x7f0208a9

    const v3, 0x7f0208c7

    const v4, 0x7f0208e5

    const v5, 0x7f020903

    goto/16 :goto_1

    :cond_17
    const v1, 0x7f02088d

    const v2, 0x7f0208ab

    const v3, 0x7f0208c9

    const v4, 0x7f0208e7

    const v5, 0x7f020905

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02088d

    const v2, 0x7f0208ab

    const v3, 0x7f0208c9

    const v4, 0x7f0208e7

    const v5, 0x7f020905

    goto/16 :goto_1

    :cond_18
    const v1, 0x7f020871

    const v2, 0x7f02088f

    const v3, 0x7f0208ad

    const v4, 0x7f0208cb

    const v5, 0x7f0208e9

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020871

    const v2, 0x7f02088f

    const v3, 0x7f0208ad

    const v4, 0x7f0208cb

    const v5, 0x7f0208e9

    goto/16 :goto_1

    :cond_19
    const v1, 0x7f020873

    const v2, 0x7f020891

    const v3, 0x7f0208af

    const v4, 0x7f0208cd

    const v5, 0x7f0208eb

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020873

    const v2, 0x7f020891

    const v3, 0x7f0208af

    const v4, 0x7f0208cd

    const v5, 0x7f0208eb

    goto/16 :goto_1

    :cond_1a
    const v1, 0x7f020875

    const v2, 0x7f020893

    const v3, 0x7f0208b1

    const v4, 0x7f0208cf

    const v5, 0x7f0208ed

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020875

    const v2, 0x7f020893

    const v3, 0x7f0208b1

    const v4, 0x7f0208cf

    const v5, 0x7f0208ed

    goto/16 :goto_1

    :cond_1b
    const v1, 0x7f020877

    const v2, 0x7f020895

    const v3, 0x7f0208b3

    const v4, 0x7f0208d1

    const v5, 0x7f0208ef

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020877

    const v2, 0x7f020895

    const v3, 0x7f0208b3

    const v4, 0x7f0208d1

    const v5, 0x7f0208ef

    goto/16 :goto_1

    :cond_1c
    const v1, 0x7f020879

    const v2, 0x7f020897

    const v3, 0x7f0208b5

    const v4, 0x7f0208d3

    const v5, 0x7f0208f1

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020879

    const v2, 0x7f020897

    const v3, 0x7f0208b5

    const v4, 0x7f0208d3

    const v5, 0x7f0208f1

    goto :goto_1

    :cond_1d
    const v1, 0x7f02087b

    const v2, 0x7f020899

    const v3, 0x7f0208b7

    const v4, 0x7f0208d5

    const v5, 0x7f0208f3

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02087b

    const v2, 0x7f020899

    const v3, 0x7f0208b7

    const v4, 0x7f0208d5

    const v5, 0x7f0208f3

    goto :goto_1

    :cond_1e
    const v1, 0x7f02087d

    const v2, 0x7f02089b

    const v3, 0x7f0208b9

    const v4, 0x7f0208d7

    const v5, 0x7f0208f5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02087d

    const v2, 0x7f02089b

    const v3, 0x7f0208b9

    const v4, 0x7f0208d7

    const v5, 0x7f0208f5

    goto :goto_1

    :cond_1f
    const v1, 0x7f02067d

    const v2, 0x7f020680

    const v3, 0x7f020683

    const v4, 0x7f020686

    const v5, 0x7f020689

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02067d

    const v2, 0x7f020680

    const v3, 0x7f020683

    const v4, 0x7f020686

    const v5, 0x7f020689

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

    const v1, 0x7f020726

    const v2, 0x7f020728

    const v3, 0x7f02072a

    const v4, 0x7f02072c

    const v5, 0x7f02072e

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02071a

    const v2, 0x7f02071c

    const v3, 0x7f02071e

    const v4, 0x7f020720

    const v5, 0x7f020722

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_PURE_SIGNAL_STRENGTH:[[I

    const v0, 0x7f02069b

    const v1, 0x7f02069c

    const v2, 0x7f02069d

    const v3, 0x7f02069e

    const v4, 0x7f02069f

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_SIGNAL_STRENGTH:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH:[I

    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_SIGNAL_STRENGTH_TWO_LINE:[I

    const/16 v0, 0x24

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH_TWO_LINE:[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f0201f9

    const v2, 0x7f0201fa

    const v3, 0x7f0201fc

    const v4, 0x7f0201fd

    const v5, 0x7f0201ff

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020206

    const v2, 0x7f020207

    const v3, 0x7f020208

    const v4, 0x7f020209

    const v5, 0x7f02020a

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f02067f

    const v2, 0x7f020682

    const v3, 0x7f020685

    const v4, 0x7f020688

    const v5, 0x7f02068b

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02067f

    const v2, 0x7f020682

    const v3, 0x7f020685

    const v4, 0x7f020688

    const v5, 0x7f02068b

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f02069a

    const v2, 0x7f02069a

    const v3, 0x7f02069a

    const v4, 0x7f02069a

    const v5, 0x7f02069a

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02069a

    const v2, 0x7f02069a

    const v3, 0x7f02069a

    const v4, 0x7f02069a

    const v5, 0x7f02069a

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f020203

    const v2, 0x7f020203

    const v3, 0x7f020203

    const v4, 0x7f020203

    const v5, 0x7f020203

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020203

    const v2, 0x7f020203

    const v3, 0x7f020203

    const v4, 0x7f020203

    const v5, 0x7f020203

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f020630

    const v2, 0x7f020630

    const v3, 0x7f020630

    const v4, 0x7f020630

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020630

    const v2, 0x7f020630

    const v3, 0x7f020630

    const v4, 0x7f020630

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f020622

    const v2, 0x7f020622

    const v3, 0x7f020622

    const v4, 0x7f020622

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020622

    const v2, 0x7f020622

    const v3, 0x7f020622

    const v4, 0x7f020622

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f02062f

    const v2, 0x7f02062f

    const v3, 0x7f02062f

    const v4, 0x7f02062f

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02062f

    const v2, 0x7f02062f

    const v3, 0x7f02062f

    const v4, 0x7f02062f

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f020631

    const v2, 0x7f020631

    const v3, 0x7f020631

    const v4, 0x7f020631

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020631

    const v2, 0x7f020631

    const v3, 0x7f020631

    const v4, 0x7f020631

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f02061f

    const v2, 0x7f02061f

    const v3, 0x7f02061f

    const v4, 0x7f02061f

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02061f

    const v2, 0x7f02061f

    const v3, 0x7f02061f

    const v4, 0x7f02061f

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f020627

    const v2, 0x7f020627

    const v3, 0x7f020627

    const v4, 0x7f020627

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020627

    const v2, 0x7f020627

    const v3, 0x7f020627

    const v4, 0x7f020627

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f02062a

    const v2, 0x7f02062a

    const v3, 0x7f02062a

    const v4, 0x7f02062a

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02062a

    const v2, 0x7f02062a

    const v3, 0x7f02062a

    const v4, 0x7f02062a

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f020633

    const v2, 0x7f020633

    const v3, 0x7f020633

    const v4, 0x7f020633

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020633

    const v2, 0x7f020633

    const v3, 0x7f020633

    const v4, 0x7f020633

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "CARRIER_NETWORK_CHANGE"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f02069a

    const v8, 0x7f020203

    const v10, 0x7f0f0306

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "3G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f6

    const v11, 0x7f020622

    const/4 v12, 0x1

    const v13, 0x7f0201fe

    const v14, 0x7f02065c

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "WFC"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

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

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0x7f020669

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "E"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02fd

    const v11, 0x7f02062f

    const/4 v12, 0x0

    const v13, 0x7f020205

    const v14, 0x7f020662

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "1X"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02fb

    const v11, 0x7f02061f

    const/4 v12, 0x1

    const v13, 0x7f0201fb

    const v14, 0x7f02065a

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f3

    const v11, 0x7f020630

    const/4 v12, 0x0

    const v13, 0x7f02020b

    const v14, 0x7f020663

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "H"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f7

    const v11, 0x7f020631

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f020664

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f8

    const v11, 0x7f020627

    const/4 v12, 0x1

    const v13, 0x7f020200

    const v14, 0x7f02065f

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G+"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f9

    const v11, 0x7f02062a

    const/4 v12, 0x1

    const v13, 0x7f020201

    const v14, 0x7f020660

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02fa

    const v11, 0x7f020633

    const/4 v12, 0x1

    const v13, 0x7f02020e

    const v14, 0x7f020666

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "Roaming"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02fc

    const v11, 0x7f020639

    const/4 v12, 0x0

    const v13, 0x7f020211

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "DataDisabled"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f0302

    const v11, 0x7f02060e

    const/4 v12, 0x0

    const v13, 0x7f0201ed

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "H_Plus"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f7

    const v11, 0x7f020632

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f020665

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "DC"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f7

    const v11, 0x7f02062e

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f020661

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_LTE_LTN"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02fa

    const v11, 0x7f0205fb

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f02063a

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_ATT"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f8

    const v11, 0x7f020628

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f02065f

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE_ATT"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02fa

    const v11, 0x7f020634

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f020666

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "3G_TMO"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f6

    const v11, 0x7f020625

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f02065c

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_TMO"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f8

    const v11, 0x7f02062b

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f02065f

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE_TMO"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02fa

    const v11, 0x7f020638

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f020666

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_VZW"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f8

    const v11, 0x7f02062d

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f02065f

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_USCC"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f8

    const v11, 0x7f02062c

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f02065f

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_USCC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "3G_Plus"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f6

    const v11, 0x7f020624

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f02065d

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "2G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02fb

    const v11, 0x7f020620

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f02065a

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_CU"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f8

    const v11, 0x7f020629

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f02065f

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_CU:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE_Plus"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02fa

    const v11, 0x7f020636

    const/4 v12, 0x1

    const v13, 0x7f02020e

    const v14, 0x7f020668

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "2G_KT"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f3

    const v11, 0x7f020621

    const/4 v12, 0x0

    const v13, 0x7f02020b

    const v14, 0x7f020663

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "3G_KT"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f6

    const v11, 0x7f020623

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f02065c

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE_KT"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02fa

    const v11, 0x7f020635

    const/4 v12, 0x0

    const v13, 0x7f02020e

    const v14, 0x7f020666

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE_Plus_KT"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02fa

    const v11, 0x7f020637

    const/4 v12, 0x1

    const v13, 0x7f02020e

    const v14, 0x7f020668

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4.5G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f02020f

    const v10, 0x7f0f02f8

    const v11, 0x7f020626

    const/4 v12, 0x1

    const v13, 0x7f020200

    const v14, 0x7f02065e

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_HALF_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const v0, 0x7f02070a

    const v1, 0x7f0206fc

    const v2, 0x7f020711

    const v3, 0x7f020704

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_DEFAULT:[I

    const/4 v0, 0x0

    const v1, 0x7f0206fd

    const v2, 0x7f020712

    const v3, 0x7f020705

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_ATT:[I

    const v0, 0x7f02070d

    const v1, 0x7f020703

    const v2, 0x7f020718

    const v3, 0x7f020708

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_TMO:[I

    const v0, 0x7f02070b

    const v1, 0x7f020701

    const v2, 0x7f020716

    const v3, 0x7f020706

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS:[I

    const v0, 0x7f02070c

    const v1, 0x7f020702

    const v2, 0x7f020717

    const v3, 0x7f020707

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS_KT:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->PreferredSimIcon:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02068e
        0x7f020690
        0x7f020692
        0x7f020694
        0x7f020696
        0x7f020698
    .end array-data

    :array_1
    .array-data 4
        0x7f02068e
        0x7f020690
        0x7f020692
        0x7f020694
        0x7f020696
        0x7f020698
    .end array-data

    :array_2
    .array-data 4
        0x7f0206ee
        0x7f0206f0
        0x7f0206f2
        0x7f0206f4
        0x7f0206f6
        0x7f0206f8
    .end array-data

    :array_3
    .array-data 4
        0x7f0206ee
        0x7f0206f0
        0x7f0206f2
        0x7f0206f4
        0x7f0206f6
        0x7f0206f8
    .end array-data

    :array_4
    .array-data 4
        0x7f0206a0
        0x7f0206a1
        0x7f0206a2
        0x7f0206a3
        0x7f0206a4
        0x7f0206a5
    .end array-data

    :array_5
    .array-data 4
        0x7f0206a6
        0x7f0206a7
        0x7f0206a8
        0x7f0206a9
        0x7f0206aa
        0x7f0206ab
        0x7f0206ac
        0x7f0206ad
        0x7f0206ae
        0x7f0206af
        0x7f0206b0
        0x7f0206b1
        0x7f0206b2
        0x7f0206b3
        0x7f0206b4
        0x7f0206b5
        0x7f0206b6
        0x7f0206b7
        0x7f0206b8
        0x7f0206b9
        0x7f0206ba
        0x7f0206bb
        0x7f0206bc
        0x7f0206bd
        0x7f0206be
    .end array-data

    :array_6
    .array-data 4
        0x7f0206bf
        0x7f0206c0
        0x7f0206c1
        0x7f0206c2
        0x7f0206c3
        0x7f0206c4
        0x7f0206c5
        0x7f0206c6
        0x7f0206c7
        0x7f0206c8
        0x7f0206c9
        0x7f0206ca
        0x7f0206cb
        0x7f0206cc
        0x7f0206cd
        0x7f0206ce
        0x7f0206cf
        0x7f0206d0
        0x7f0206d1
        0x7f0206d2
        0x7f0206d3
        0x7f0206d4
        0x7f0206d5
        0x7f0206d6
        0x7f0206d7
        0x7f0206d8
        0x7f0206d9
        0x7f0206da
        0x7f0206db
        0x7f0206dc
        0x7f0206dd
        0x7f0206de
        0x7f0206df
        0x7f0206e0
        0x7f0206e1
        0x7f0206e2
    .end array-data

    :array_7
    .array-data 4
        0x7f020671
        0x7f020672
        0x7f020674
        0x7f020678
        0x7f020678
        0x7f020677
        0x7f020676
        0x7f020679
        0x7f020675
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTelephonyNoServiceIcon()I
    .locals 3

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v1, :cond_0

    const v0, 0x7f020724

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f020710

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "TMB"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "MTR"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const v0, 0x7f02070f

    goto :goto_0

    :cond_3
    const v0, 0x7f02070e

    goto :goto_0
.end method

.method static getTelephonySignalContentDesc()[I
    .locals 2

    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

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

    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_PURE_SIGNAL_ICON:Z

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

    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const v0, 0x7f0206f9

    return v0

    :cond_0
    const v0, 0x7f0206fa

    return v0
.end method

.method static getTelephonySignalStrengthFocused()[[I
    .locals 2

    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

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

    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

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
