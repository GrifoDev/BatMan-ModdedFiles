.class public Lcom/android/server/SsrmService;
.super Ljava/lang/Object;
.source "SsrmService.java"


# static fields
.field public static final AIR_VIEW_PROVIDER_NAME:Ljava/lang/String; = ""

.field public static final BASE_MODEL:Ljava/lang/String; = ""

.field public static final COMMON_GESTURE_WITH_FINGERHOVER:Z

.field public static final DVFS_FILENAME:Ljava/lang/String; = "dvfs_policy_kangchen_xx"

.field public static GMS_BUNDLING:Z = false

.field public static SSRM_FILENAME:Ljava/lang/String; = ""

.field public static final SUPPORT_WEARABLE_HMT:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v2, Landroid/os/Build;->renovateDreamDevice:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/os/Build;->renovateDream2Device:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/os/Build;->renovateHeroDevice:Z

    if-nez v2, :cond_2

    sget-boolean v2, Landroid/os/Build;->renovateHero2Device:Z

    if-nez v2, :cond_3

    sget-boolean v2, Landroid/os/Build;->renovateGreatDevice:Z

    if-nez v2, :cond_4

    :cond_0
    const-string/jumbo v2, "ssrm_dreaml_xx"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "ssrm_dream2_xx"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "ssrm_herol_xx"

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "ssrm_hero2_xx"

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "ssrm_greatl_xx"

    :goto_0
    sput-object v2, Lcom/android/server/SsrmService;->SSRM_FILENAME:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_GESTURE_WITH_FINGERHOVER"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SsrmService;->COMMON_GESTURE_WITH_FINGERHOVER:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SsrmService;->GMS_BUNDLING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
