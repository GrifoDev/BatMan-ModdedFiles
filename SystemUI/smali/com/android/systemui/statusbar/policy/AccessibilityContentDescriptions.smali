.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final ETHERNET_CONNECTION_VALUES:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f0f0331

    const v1, 0x7f0f0332

    const v2, 0x7f0f0333

    const v3, 0x7f0f0334

    const v4, 0x7f0f0335

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    const v0, 0x7f0f0336

    const v1, 0x7f0f0337

    const v2, 0x7f0f0338

    const v3, 0x7f0f0339

    const v4, 0x7f0f033a

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    const v0, 0x7f0f0149

    const v1, 0x7f0f014a

    const v2, 0x7f0f014b

    const v3, 0x7f0f014c

    const v4, 0x7f0f014d

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    const v0, 0x7f0f0343

    const v1, 0x7f0f0344

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    return-void

    :array_0
    .array-data 4
        0x7f0f0331
        0x7f0f0332
        0x7f0f0333
        0x7f0f0334
        0x7f0f0766
        0x7f0f0335
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
