.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final NWBOOSTER_WIFI_SIGNAL_STRENGTH:[I

.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_ACTIVITY_DEFAULT:[I

.field static final WIFI_ACTIVITY_KT:[I

.field static final WIFI_ACTIVITY_LGT:[I

.field static final WIFI_ACTIVITY_VZW:[I

.field static final WIFI_CALLING_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_KT:[[I

.field static final WIFI_SIGNAL_STRENGTH_LGT:[[I

.field static final WIFI_SIGNAL_STRENGTH_PURE:[[I

.field static final WIFI_SIGNAL_STRENGTH_VZW:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const v10, 0x7f020454

    const v9, 0x7f020453

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v8, [[I

    const v1, 0x7f02073f

    const v2, 0x7f020740

    const v3, 0x7f020741

    const v4, 0x7f020742

    const v5, 0x7f020743

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v11, 0x1

    const-string v12, "switch_wifi"

    invoke-static {v12, v11}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_b

    const v13, 0x1

    if-eq v12, v13, :cond_b

    const v13, 0x2

    if-eq v12, v13, :cond_0

    const v13, 0x3

    if-eq v12, v13, :cond_1

    const v13, 0x4

    if-eq v12, v13, :cond_2

    const v13, 0x5

    if-eq v12, v13, :cond_3

    const v13, 0x6

    if-eq v12, v13, :cond_4

    const v13, 0x7

    if-eq v12, v13, :cond_5

    const v13, 0x8

    if-eq v12, v13, :cond_6

    const v13, 0x9

    if-eq v12, v13, :cond_7

    const v13, 0xa

    if-eq v12, v13, :cond_8

    const v13, 0xb

    if-eq v12, v13, :cond_9

    const v13, 0xc

    if-eq v12, v13, :cond_a

    :cond_0
    const v1, 0x7f020909

    const v2, 0x7f020914

    const v3, 0x7f02091f

    const v4, 0x7f02092a

    const v5, 0x7f020935

    goto/16 :goto_0

    :cond_1
    const v1, 0x7f020909

    const v2, 0x7f020915

    const v3, 0x7f020920

    const v4, 0x7f02092b

    const v5, 0x7f020936

    goto/16 :goto_0

    :cond_2
    const v1, 0x7f02090b

    const v2, 0x7f020916

    const v3, 0x7f020921

    const v4, 0x7f02092c

    const v5, 0x7f020937

    goto/16 :goto_0

    :cond_3
    const v1, 0x7f02090c

    const v2, 0x7f020917

    const v3, 0x7f020922

    const v4, 0x7f02092d

    const v5, 0x7f020938

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f02090d

    const v2, 0x7f020918

    const v3, 0x7f020923

    const v4, 0x7f02092e

    const v5, 0x7f020939

    goto :goto_0

    :cond_5
    const v1, 0x7f02090e

    const v2, 0x7f020919

    const v3, 0x7f020924

    const v4, 0x7f02092f

    const v5, 0x7f02093a

    goto :goto_0

    :cond_6
    const v1, 0x7f02090f

    const v2, 0x7f02091a

    const v3, 0x7f020925

    const v4, 0x7f020930

    const v5, 0x7f02093b

    goto :goto_0

    :cond_7
    const v1, 0x7f020910

    const v2, 0x7f02091b

    const v3, 0x7f020926

    const v4, 0x7f020931

    const v5, 0x7f02093c

    goto :goto_0

    :cond_8
    const v1, 0x7f020906

    const v2, 0x7f020911

    const v3, 0x7f02091c

    const v4, 0x7f020927

    const v5, 0x7f020932

    goto :goto_0

    :cond_9
    const v1, 0x7f020907

    const v2, 0x7f020912

    const v3, 0x7f02091d

    const v4, 0x7f020928

    const v5, 0x7f020933

    goto :goto_0

    :cond_a
    const v1, 0x7f020908

    const v2, 0x7f020913

    const v3, 0x7f02091e

    const v4, 0x7f020929

    const v5, 0x7f020934

    goto :goto_0

    :cond_b
    const v1, 0x7f020749

    const v2, 0x7f02074b

    const v3, 0x7f02074d

    const v4, 0x7f02074f

    const v5, 0x7f020751

    :goto_0
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f020744

    const v2, 0x7f020745

    const v3, 0x7f020746

    const v4, 0x7f020747

    const v5, 0x7f020748

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f02074a

    const v2, 0x7f02074c

    const v3, 0x7f02074e

    const v4, 0x7f020750

    const v5, 0x7f020752

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_PURE:[[I

    new-array v0, v8, [[I

    const v1, 0x7f02073a

    const v2, 0x7f02073b

    const v3, 0x7f02073c

    const v4, 0x7f02073d

    const v5, 0x7f02073e

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f02073a

    const v2, 0x7f02073b

    const v3, 0x7f02073c

    const v4, 0x7f02073d

    const v5, 0x7f02073e

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_CALLING_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f020455

    const v2, 0x7f020456

    const v3, 0x7f020457

    filled-new-array {v9, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020455

    const v2, 0x7f020456

    const v3, 0x7f020457

    filled-new-array {v9, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    const v0, 0x7f02066a

    const v1, 0x7f02066b

    const v2, 0x7f02066c

    const v3, 0x7f02066d

    const v4, 0x7f02066e

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[I

    new-array v0, v8, [[I

    const v1, 0x7f02075e

    const v2, 0x7f02075f

    const v3, 0x7f020760

    const v4, 0x7f020761

    const v5, 0x7f020762

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f02075e

    const v2, 0x7f02075f

    const v3, 0x7f020760

    const v4, 0x7f020761

    const v5, 0x7f020762

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    new-array v0, v8, [[I

    const v1, 0x7f020755

    const v2, 0x7f020756

    const v3, 0x7f020757

    const v4, 0x7f020758

    const v5, 0x7f020759

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020755

    const v2, 0x7f020756

    const v3, 0x7f020757

    const v4, 0x7f020758

    const v5, 0x7f020759

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_KT:[[I

    new-array v0, v8, [[I

    const v1, 0x7f02073f

    const v2, 0x7f020740

    const v3, 0x7f020741

    const v4, 0x7f020742

    const v5, 0x7f020743

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f02076a

    const v2, 0x7f02076b

    const v3, 0x7f02076c

    const v4, 0x7f02076d

    const v5, 0x7f02076e

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_VZW:[[I

    const/4 v11, 0x1

    const-string v12, "arrow_wifi"

    invoke-static {v12, v11}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_d

    const v13, 0x1

    if-eq v12, v13, :cond_d

    const v13, 0x2

    if-eq v12, v13, :cond_c

    :cond_c
    const v0, 0x7f020862

    const v1, 0x7f020862

    const v2, 0x7f020862

    const v3, 0x7f020862

    goto :goto_1

    :cond_d
    const v0, 0x7f020767

    const v1, 0x7f020753

    const v2, 0x7f020769

    const v3, 0x7f020754

    :goto_1
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_DEFAULT:[I

    const v0, 0x7f020765

    const v1, 0x7f020763

    const v2, 0x7f020766

    const v3, 0x7f020764

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_LGT:[I

    const v0, 0x7f02075c

    const v1, 0x7f02075a

    const v2, 0x7f02075d

    const v3, 0x7f02075b

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_KT:[I

    const v0, 0x7f02070a

    const v1, 0x7f0206fc

    const v2, 0x7f020711

    const v3, 0x7f020704

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_VZW:[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v6

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
