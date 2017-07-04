.class public Lcom/android/server/policy/TspStateManager;
.super Ljava/lang/Object;
.source "TspStateManager.java"

# interfaces
.implements Lcom/android/server/policy/TspStateManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/TspStateManager$SettingObserver;,
        Lcom/android/server/policy/TspStateManager$TypePolicy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final INDEX_3RD_PARTY_DEADZONE:I = 0x5

.field private static final INDEX_3RD_PARTY_EDGEZONE:I = 0x6

.field private static final INDEX_DEADZONE_LAND_X1:I = 0x3

.field private static final INDEX_DEADZONE_PORT_X1:I = 0x0

.field private static final INDEX_DEADZONE_PORT_X2:I = 0x1

.field private static final INDEX_DEADZONE_PORT_Y1:I = 0x2

.field private static final INDEX_EDGE_ZONE:I = 0x4

.field private static final SETTING_TSP_THRESHOLD:Ljava/lang/String; = "setting_tsp_threshold"

.field private static final SET_TUNNING_DATA:Ljava/lang/String; = "set_grip_data,"

.field private static final TAG:Ljava/lang/String; = "TspStateManagerInternal"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomDeadzoneEdgeZone:I

.field private mCustomDeadzoneLandX1:I

.field private mCustomDeadzonePortX1:I

.field private mCustomDeadzonePortX2:I

.field private mCustomDeadzonePortY1:I

.field private mDefault3rdPartyDeadzone:I

.field private mDefault3rdPartyEdgeZone:I

.field private mDefaultDeadzoneLandX1:I

.field private mDefaultDeadzonePortX1:I

.field private mDefaultDeadzonePortX2:I

.field private mDefaultDeadzonePortY1:I

.field private mDefaultEdgeZone:I

.field private mHeight:I

.field private mHoleMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mInitHeight:I

.field private mInitWidth:I

.field private mIsEnabledCustomSetting:Z

.field private mLastDeadZoneHole:Ljava/lang/String;

.field private mLastLandCmd:Ljava/lang/String;

.field private mLastPortCmd:Ljava/lang/String;

.field private mPortrait:Z

.field private mReserveLandCmd:Ljava/lang/String;

.field private mReservePortCmd:Ljava/lang/String;

.field private mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

.field private mTypePolicy:Lcom/android/server/policy/TspStateManager$TypePolicy;

.field private mWidth:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/policy/TspStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->updateCustomValue()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/16 v4, 0xa00

    const/16 v3, 0x5a0

    const/16 v2, 0xa

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    iput v2, p0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzonePortX1:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzonePortX2:I

    const/16 v0, 0x300

    iput v0, p0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzonePortY1:I

    iput v2, p0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzoneLandX1:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/policy/TspStateManager;->mDefaultEdgeZone:I

    iput v2, p0, Lcom/android/server/policy/TspStateManager;->mDefault3rdPartyDeadzone:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/policy/TspStateManager;->mDefault3rdPartyEdgeZone:I

    iput v1, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortX1:I

    iput v1, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortX2:I

    iput v1, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortY1:I

    iput v1, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzoneLandX1:I

    iput v1, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzoneEdgeZone:I

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iput v4, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iput v4, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    return-void
.end method

.method private getTspHeightPixel(I)I
    .locals 4

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    div-int v1, v2, v3

    sget-boolean v2, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "getTspHeightPixel: init="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v2, " h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "TspStateManagerInternal"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private getTspWidthPixel(I)I
    .locals 2

    iget v0, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    div-int/2addr v0, v1

    return v0
.end method

.method private initDefaultValue()V
    .locals 5

    iget-object v3, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040acf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzonePortX1:I

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzonePortX2:I

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzonePortY1:I

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzoneLandX1:I

    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mDefaultEdgeZone:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeLandCommand(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "2,1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makePortCommand(IIII)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private registerSettingObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/policy/TspStateManager$SettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/TspStateManager$SettingObserver;-><init>(Lcom/android/server/policy/TspStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setting_tsp_threshold"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private updateCustomValue()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v3, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "setting_tsp_threshold"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "TspStateManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDefaultValue customSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    iput v6, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortX1:I

    iput v6, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortX2:I

    iput v6, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortY1:I

    iput v6, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzoneLandX1:I

    iput v6, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzoneEdgeZone:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_0
    array-length v3, v1

    if-le v3, v8, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortX1:I

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortX2:I

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortY1:I

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzoneLandX1:I

    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzoneEdgeZone:I

    :cond_2
    array-length v3, v1

    if-le v3, v9, :cond_3

    const/4 v3, 0x5

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mDefault3rdPartyDeadzone:I

    :cond_3
    array-length v3, v1

    const/4 v4, 0x6

    if-le v3, v4, :cond_4

    const/4 v3, 0x6

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/TspStateManager;->mDefault3rdPartyEdgeZone:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateTspCommand(IIIII)V
    .locals 4

    const/16 v2, 0xa

    const/4 v3, -0x1

    if-ge p2, v2, :cond_0

    const/16 p2, 0xa

    :cond_0
    if-ge p3, v2, :cond_1

    const/16 p3, 0xa

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzoneEdgeZone:I

    if-eq v2, v3, :cond_2

    iget p1, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzoneEdgeZone:I

    :cond_2
    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortX1:I

    if-eq v2, v3, :cond_3

    iget p2, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortX1:I

    :cond_3
    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortX2:I

    if-eq v2, v3, :cond_4

    iget p3, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortX2:I

    :cond_4
    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortY1:I

    if-eq v2, v3, :cond_5

    iget p4, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzonePortY1:I

    :cond_5
    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzoneLandX1:I

    if-eq v2, v3, :cond_6

    iget p5, p0, Lcom/android/server/policy/TspStateManager;->mCustomDeadzoneLandX1:I

    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/TspStateManager;->makePortCommand(IIII)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eqz v2, :cond_7

    invoke-direct {p0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    :cond_7
    iput-object v1, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    :cond_8
    invoke-direct {p0, p1, p5}, Lcom/android/server/policy/TspStateManager;->makeLandCommand(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-nez v2, :cond_9

    invoke-direct {p0, v0}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    :cond_9
    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method private updateTspState(Ljava/lang/String;)V
    .locals 3

    sget-boolean v1, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/TspStateManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/TspStateManager$1;-><init>(Lcom/android/server/policy/TspStateManager;Ljava/lang/String;)V

    const-string/jumbo v2, "tspStateManager"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3

    sget-boolean v1, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_TSP_STATE_MANAGER"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "deadzone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iput-object p1, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->registerSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->initDefaultValue()V

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->updateCustomValue()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Lcom/android/server/policy/TspStateManager$TypePolicy;

    invoke-direct {v1, p1}, Lcom/android/server/policy/TspStateManager$TypePolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/TspStateManager;->mTypePolicy:Lcom/android/server/policy/TspStateManager$TypePolicy;

    goto :goto_0
.end method

.method public screenTurnedOn()V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTypePolicy:Lcom/android/server/policy/TspStateManager$TypePolicy;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "TspStateManagerInternal"

    const-string/jumbo v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDeadzoneHole(Landroid/os/Bundle;)V
    .locals 14

    const/16 v13, 0x2c

    const/4 v12, 0x0

    const/4 v11, 0x0

    sget-boolean v9, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v9, :cond_0

    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mTypePolicy:Lcom/android/server/policy/TspStateManager$TypePolicy;

    if-eqz v9, :cond_1

    const-string/jumbo v9, "TspStateManagerInternal"

    const-string/jumbo v10, "setDeadzoneHole: This is not supported. "

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v9, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "TspStateManagerInternal"

    const-string/jumbo v10, "setPortraitDeadzoneHole "

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p1, :cond_3

    const-string/jumbo v9, "TspStateManagerInternal"

    const-string/jumbo v10, "setPortraitDeadzoneHole: hole is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v9, "dead_zone_process_name"

    invoke-virtual {p1, v9, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    const-string/jumbo v9, "TspStateManagerInternal"

    const-string/jumbo v10, "setPortraitDeadzoneHole: invalid name key"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string/jumbo v9, "dead_zone_direction"

    invoke-virtual {p1, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v9, "dead_zone_port_y1"

    invoke-virtual {p1, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v9, "dead_zone_port_y2"

    invoke-virtual {p1, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ltz v8, :cond_5

    if-gez v4, :cond_8

    :cond_5
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    const v8, 0x7fffffff

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_a

    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    iget-object v10, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    if-eqz v7, :cond_7

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    if-eq v8, v4, :cond_5

    if-ge v8, v4, :cond_9

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v11, v8, v11, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_2
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_9
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v11, v4, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :cond_a
    if-nez v4, :cond_b

    const/4 v3, 0x0

    :cond_b
    const v9, 0x7fffffff

    if-ne v8, v9, :cond_c

    move v8, v4

    :cond_c
    invoke-direct {p0, v8}, Lcom/android/server/policy/TspStateManager;->getTspHeightPixel(I)I

    move-result v8

    invoke-direct {p0, v4}, Lcom/android/server/policy/TspStateManager;->getTspHeightPixel(I)I

    move-result v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "0,"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v9, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v9, :cond_d

    const-string/jumbo v9, "TspStateManagerInternal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setDeadzoneHole: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    return-void

    :cond_e
    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;)V

    return-void
.end method

.method public setInitialDisplaySize(IIII)V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TspStateManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialDisplaySize initWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",initHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iput p2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    iput p3, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iput p4, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    return-void
.end method

.method public setPortrait(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTypePolicy:Lcom/android/server/policy/TspStateManager$TypePolicy;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v0, "2,0"

    invoke-direct {p0, v0}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateInputMethodPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 11

    const/4 v10, -0x1

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTypePolicy:Lcom/android/server/policy/TspStateManager$TypePolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTypePolicy:Lcom/android/server/policy/TspStateManager$TypePolicy;

    invoke-virtual {v0}, Lcom/android/server/policy/TspStateManager$TypePolicy;->updateInputMethodPolicy()V

    return-void

    :cond_1
    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzonePortX1:I

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzonePortX2:I

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzonePortY1:I

    iget v5, p0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzoneLandX1:I

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mDefaultEdgeZone:I

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v9, "default_input_method"

    invoke-static {v0, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string/jumbo v0, "SamsungKeypad"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTspDeadzone()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string/jumbo v0, "dead_zone_port_x1"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v0, "dead_zone_port_x2"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v0, "dead_zone_port_y1"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v0, "dead_zone_port_real_y1"

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v10, :cond_2

    invoke-direct {p0, v8}, Lcom/android/server/policy/TspStateManager;->getTspHeightPixel(I)I

    move-result v4

    :cond_2
    const-string/jumbo v0, "dead_zone_land_x1"

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v0, "edge_zone_width"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_3
    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "TspStateManagerInternal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateInputMethodPolicy portX1="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",portX2="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",portY1="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",landX1="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",edgeZone="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/TspStateManager;->updateTspCommand(IIIII)V

    return-void

    :cond_5
    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mDefault3rdPartyDeadzone:I

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mDefault3rdPartyDeadzone:I

    iget v5, p0, Lcom/android/server/policy/TspStateManager;->mDefault3rdPartyDeadzone:I

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mDefault3rdPartyEdgeZone:I

    goto/16 :goto_0
.end method

.method public updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V
    .locals 21

    sget-boolean v2, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/TspStateManager;->mTypePolicy:Lcom/android/server/policy/TspStateManager$TypePolicy;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/TspStateManager;->mTypePolicy:Lcom/android/server/policy/TspStateManager$TypePolicy;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/policy/TspStateManager$TypePolicy;->updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzonePortX1:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzonePortX2:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzonePortY1:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/TspStateManager;->mDefaultDeadzoneLandX1:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/TspStateManager;->mDefaultEdgeZone:I

    const/4 v8, 0x0

    if-eqz p1, :cond_5

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v19, 0x7d0

    move/from16 v0, v19

    if-lt v2, v0, :cond_8

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v19, 0xbb7

    move/from16 v0, v19

    if-gt v2, v0, :cond_7

    const/4 v8, 0x1

    :goto_0
    if-nez v8, :cond_2

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/view/IWindowStateBridge;->isHomeTask()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v0, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v2, "com.sec.android.app.launcher"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "com.sec.android.app.easylauncher"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :cond_2
    :goto_1
    if-nez v8, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/TspStateManager;->mDefault3rdPartyDeadzone:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/TspStateManager;->mDefault3rdPartyDeadzone:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/TspStateManager;->mDefault3rdPartyDeadzone:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/TspStateManager;->mDefault3rdPartyEdgeZone:I

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getEdgeTspDeadzone()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_4
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTspDeadzone()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string/jumbo v2, "dead_zone_port_x1"

    invoke-virtual {v9, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v2, "dead_zone_port_x2"

    invoke-virtual {v9, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v2, "dead_zone_port_y1"

    invoke-virtual {v9, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v2, "dead_zone_land_x1"

    invoke-virtual {v9, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v2, "edge_zone_width"

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :cond_5
    sget-boolean v2, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "TspStateManagerInternal"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "updateWindowPolicy focusedWindow = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", isDeviceDefault="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",packageName="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",portX1="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",portX2="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",portY1="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",landX1="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/TspStateManager;->updateTspCommand(IIIII)V

    return-void

    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDeviceDefaultTheme()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_b
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v0, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    const-string/jumbo v2, "com.sec.android."

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    const-string/jumbo v2, "com.samsung."

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_1

    :cond_d
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    :try_start_0
    move-object/from16 v0, v17

    array-length v2, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_10

    const/4 v2, 0x0

    aget-object v2, v17, v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    :goto_3
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_2

    :cond_f
    const/4 v14, 0x0

    goto :goto_3

    :cond_10
    move-object/from16 v0, v17

    array-length v2, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v2, v0, :cond_11

    const/4 v2, 0x0

    aget-object v2, v17, v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_11
    move-object/from16 v0, v17

    array-length v2, v0

    const/16 v19, 0x3

    move/from16 v0, v19

    if-lt v2, v0, :cond_12

    const/4 v2, 0x1

    aget-object v2, v17, v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    :goto_5
    const/4 v2, 0x2

    aget-object v2, v17, v2

    if-eqz v2, :cond_16

    const/4 v2, 0x2

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    :goto_6
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_12
    move-object/from16 v0, v17

    array-length v2, v0

    const/16 v19, 0x4

    move/from16 v0, v19

    if-lt v2, v0, :cond_13

    const/4 v2, 0x3

    aget-object v2, v17, v2

    if-eqz v2, :cond_17

    const/4 v2, 0x3

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    :goto_7
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :cond_13
    move-object/from16 v0, v17

    array-length v2, v0

    const/16 v19, 0x5

    move/from16 v0, v19

    if-lt v2, v0, :cond_4

    const/4 v2, 0x4

    aget-object v2, v17, v2

    if-eqz v2, :cond_18

    const/4 v2, 0x4

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    :goto_8
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto/16 :goto_2

    :cond_14
    const/4 v13, 0x0

    goto :goto_4

    :cond_15
    const/4 v14, 0x0

    goto :goto_5

    :cond_16
    const/4 v15, 0x0

    goto :goto_6

    :cond_17
    const/4 v12, 0x0

    goto :goto_7

    :cond_18
    const/4 v11, 0x0

    goto :goto_8

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_2
.end method
