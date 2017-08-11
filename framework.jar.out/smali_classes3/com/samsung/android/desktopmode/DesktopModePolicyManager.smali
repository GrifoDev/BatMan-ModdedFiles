.class public Lcom/samsung/android/desktopmode/DesktopModePolicyManager;
.super Ljava/lang/Object;
.source "DesktopModePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_DATABASE:Ljava/lang/String; = "com.samsung.android.desktopmode.action.UPDATE_DATABASE"

.field private static final DEBUG:Z

.field private static final DEX_SUPPORTED:Ljava/lang/String; = "com.samsung.android.dex.launchpolicy.supported"

.field private static final KEEPALIVE_DENSITY:Ljava/lang/String; = "com.samsung.android.keepalive.density"

.field public static final LAUNCH_POLICY_COMPATIBILITY:I = 0x2

.field public static final LAUNCH_POLICY_FREEFORM:I = 0x10

.field public static final LAUNCH_POLICY_GAME:I = 0x8000

.field public static final LAUNCH_POLICY_NOT_SUPPORTED_DECLARED_CATEGORY_HOME:I = 0x80

.field public static final LAUNCH_POLICY_NOT_SUPPORTED_DECLARED_TOUCHSCREEN:I = 0x40

.field public static final LAUNCH_POLICY_NOT_SUPPORTED_LISTED:I = 0x20

.field public static final LAUNCH_POLICY_UNDEFINED:I = 0x1

.field public static final RESIZE_MODE_CROP_WINDOWS:I = 0x1

.field public static final RESIZE_MODE_FORCE_RESIZEABLE:I = 0x4

.field public static final RESIZE_MODE_RESIZEABLE:I = 0x2

.field public static final RESIZE_MODE_RESIZEABLE_AND_PIPABLE:I = 0x3

.field public static final RESIZE_MODE_UNRESIZEABLE:I

.field public static final TAG:Ljava/lang/String;

.field private static hKeepPolicyPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static hKillPolicyPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mDeXLaunchPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sCategoryHomeExceptPackages:[Ljava/lang/String;

.field private static sNotSupportedListPackages:[Ljava/lang/String;

.field private static sTouchScreenExceptPackages:[Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.google.android.apps.tachyon"

    aput-object v2, v1, v4

    const-string/jumbo v2, "com.google.android.music"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.google.android.videos"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.google.android.apps.photos"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.google.android.apps.docs"

    aput-object v2, v1, v8

    const-string/jumbo v2, "com.google.android.apps.docs.editors.docs"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.google.android.apps.docs.editors.sheets"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.google.android.apps.docs.editors.slides"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->hKeepPolicyPackages:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.sec.android.app.sbrowser"

    aput-object v2, v1, v4

    const-string/jumbo v2, "com.sec.android.inputmethod"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.sec.android.inputmethod.beta"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.sec.android.inputmethod.iwnnime.japan"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.samsung.android.app.spage"

    aput-object v2, v1, v8

    const-string/jumbo v2, "com.microsoft.office.word"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.microsoft.office.excel"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.microsoft.office.powerpoint"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.facebook.katana"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->hKillPolicyPackages:Ljava/util/HashSet;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.app.spage"

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->sNotSupportedListPackages:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "com.microsoft.office.powerpoint"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.google.android.music"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.google.android.videos"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->sTouchScreenExceptPackages:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.settings"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.sec.android.app.desktoplauncher"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.asurion.android.mobilerecovery.att"

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->sCategoryHomeExceptPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeLaunchPolicyDB()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    sput-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    return-void
.end method

.method public static createLaunchModePolicyCacheFromDB(Landroid/content/Context;)I
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->getAllLaunchPolicy()Ljava/util/HashMap;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createLaunchModePolicyCacheFromDB ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createLaunchModePolicyCacheFromDB ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") already cache is exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    goto :goto_0
.end method

.method public static getDesktopModeKillPolicy()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "DeX"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "kill_packages"

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->hKillPolicyPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "keep_packages"

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->hKeepPolicyPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "skip_sdk_version_check"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDesktopModeKillPolicy.., args ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static getLaunchModePolicyFromCache(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    const/4 v2, 0x2

    sget-object v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->getAllLaunchPolicy()Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLaunchModePolicyFromCache ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mDeXLaunchPolicy:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/16 v2, 0x10

    :cond_1
    :goto_0
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLaunchModePolicyFromCache ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/16 v2, 0x20

    goto :goto_0
.end method

.method public static getLaunchModePolicyList(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 13

    const/4 v7, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->getAllLaunchPolicy()Ljava/util/HashMap;

    move-result-object v7

    if-eqz v7, :cond_3

    sget-boolean v10, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getLaunchModePolicy ( "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v5, v10, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const-string/jumbo v10, "white_list"

    invoke-virtual {v0, v10, v8}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v10, "black_list"

    invoke-virtual {v0, v10, v5}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    :cond_3
    return-object v0
.end method

.method public static getResizeableMode(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x2

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getResizeableMode().start"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getResizeableMode(). App SDK Ver :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " appInfo.privateFlags : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_9

    if-eqz p1, :cond_7

    iget v0, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getResizeableMode(). N & over, resizeMode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eq v0, v5, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isResizeableExplicitlyActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isResizeableExplicitlyApplication(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    return v6

    :cond_5
    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    :cond_6
    if-nez v0, :cond_b

    return v5

    :cond_7
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_8

    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isResizeableExplicitlyApplication(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_b

    return v6

    :cond_8
    return v5

    :cond_9
    if-eqz p1, :cond_b

    iget v0, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_a

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getResizeableMode(). under N, resizeMode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-nez v0, :cond_b

    return v5

    :cond_b
    return v1
.end method

.method public static isCategoryHomeDeclared(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->sCategoryHomeExceptPackages:[Ljava/lang/String;

    invoke-static {p0, v3, p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isExceptList(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCategoryHomeDeclared ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v0, v4, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCategoryHomeDeclared ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2
.end method

.method public static isDexSupported(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDexSupported, tmpAppInfo.metaData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    const-string/jumbo v4, "com.samsung.android.dex.launchpolicy.supported"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_2
    :goto_2
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDexSupported ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isDexSupported, ApplicationInfo is null."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_5
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isDexSupported, ApplicationInfo.metaData is null."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static isExceptList(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_0
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isExceptList ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isGame(Ljava/lang/String;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v6, "gamemanager"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_3

    invoke-interface {v2, p0}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    move-result v3

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isGame ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-ne v3, v4, :cond_2

    :goto_0
    return v4

    :cond_2
    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isGame ( false , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v5
.end method

.method public static isKeepAlive(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    const-string/jumbo v4, "com.samsung.android.keepalive.density"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_1
    :goto_1
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isKeepAlive ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    :try_start_1
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isKeepAlive, ApplicationInfo is null."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_2
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isKeepAlive, ApplicationInfo.metaData is null."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public static isKeepWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->hKeepPolicyPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKeepWhiteList ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public static isLaunchModePolicyAvailable()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->-wrap0()Z

    move-result v0

    return v0
.end method

.method public static isNotSupportedListed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->sNotSupportedListPackages:[Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->sNotSupportedListPackages:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_2

    :cond_0
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "no sNotSupportedListPackages"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    sget-object v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->sNotSupportedListPackages:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v1, 0x1

    :cond_3
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNotSupportedListed ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isPreloadedAppResizeable(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v2, "com.samsung"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.sec"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.android"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.google"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isPreloadedAppResizeable, preload app."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v1, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPreloadedAppResizeable ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :cond_4
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPreloadedAppResizeable, NOT samsung app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isResizeableExplicitlyActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v3, "resizeableSetExplicitly"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isResizeableExplicitlyActivity ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :catch_0
    move-exception v1

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isResizeableExplicitlyApplication(Landroid/content/pm/ApplicationInfo;)Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v3, "resizeableSetExplicitly"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isResizeableExplicitlyApplication ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :catch_0
    move-exception v1

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isTouchScreenDeclared(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v8, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->sTouchScreenExceptPackages:[Ljava/lang/String;

    invoke-static {p0, v8, p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isExceptList(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isTouchScreenDeclared ( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v6

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x4000

    invoke-virtual {v8, p1, v9, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    if-eqz v4, :cond_a

    array-length v8, v4

    if-lez v8, :cond_a

    array-length v8, v4

    :goto_0
    if-ge v7, v8, :cond_8

    aget-object v3, v4, v7

    if-eqz v3, :cond_2

    iget-object v9, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const-string/jumbo v10, "android.hardware.touchscreen"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, v3, Landroid/content/pm/FeatureInfo;->flags:I

    if-ne v9, v11, :cond_4

    const/4 v0, 0x1

    sget-boolean v9, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "isTouchScreenDeclared, FEATURE_TOUCHSCREEN is true."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    iget-object v9, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const-string/jumbo v10, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v3, Landroid/content/pm/FeatureInfo;->flags:I

    if-ne v9, v11, :cond_7

    const/4 v1, 0x1

    sget-boolean v9, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v9, :cond_3

    sget-object v9, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "isTouchScreenDeclared, FEATURE_TOUCHSCREEN_MULTITOUCH is true."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    sget-boolean v9, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "isTouchScreenDeclared, FEATURE_TOUCHSCREEN is false."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_3
    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isTouchScreenDeclared ( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v6

    :cond_7
    const/4 v1, 0x0

    :try_start_1
    sget-boolean v9, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v9, :cond_3

    sget-object v9, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "isTouchScreenDeclared, FEATURE_TOUCHSCREEN_MULTITOUCH is false."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    if-nez v0, :cond_9

    if-eqz v1, :cond_5

    :cond_9
    const/4 v6, 0x1

    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isTouchScreenDeclared, ( bTouchScreen || bTouchScreenMultitouch ) = true. "

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isTouchScreenDeclared, FeatureInfo is null."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isTouchScreenDeclared, PackageInfo is null."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
