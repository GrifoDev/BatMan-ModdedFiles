.class public Lcom/android/systemui/recents/RecentsDebugFlags$Static;
.super Ljava/lang/Object;
.source "RecentsDebugFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsDebugFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Static"
.end annotation


# static fields
.field public static EnableAllListShown:Z

.field public static EnableAppList:Z

.field public static EnableBixby:Z

.field public static final EnableBlackList:Z

.field public static EnableCloseAllLayout:Z

.field public static EnableDesktopMode:Z

.field public static EnableDozeTrigger:Z

.field public static EnableFreeformInTaskStack:Z

.field public static EnableLowerAppbarHeight:Z

.field public static EnableMoreButton:Z

.field public static EnableMoreRound:Z

.field public static EnableSecondViewExpanded:Z

.field public static EnableSnapAction:Z

.field public static EnableSnapView:Z

.field public static EnableSplitLayout:Z

.field public static EnableSpreadAnimation:Z

.field public static final EnableSurveyMode:Z

.field public static EnableSystemBarScrim:Z

.field public static final EnableTaskLock:Z

.field public static EnableVisibilityValueForTitleColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    sput-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    sput-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    sput-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    sput-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    sput-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    sput-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAllListShown:Z

    sput-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDozeTrigger:Z

    sput-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    sput-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableLowerAppbarHeight:Z

    sput-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableVisibilityValueForTitleColor:Z

    sput-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    sput-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    sput-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    sput-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableBixby:Z

    sput-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSystemBarScrim:Z

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    :goto_0
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_SYSTEMUI_RECENTS_BLACKLIST"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableBlackList:Z

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTaskLock:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSurveyMode:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
