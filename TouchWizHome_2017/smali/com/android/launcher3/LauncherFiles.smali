.class public Lcom/android/launcher3/LauncherFiles;
.super Ljava/lang/Object;
.source "LauncherFiles.java"


# static fields
.field public static final ALL_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_ICONS_DB:Ljava/lang/String; = "app_icons.db"

.field public static final AUTOALIGN_SHOW_DIALOG_KEY:Ljava/lang/String; = "com.sec.android.app.launcher.showdialog.prefs"

.field public static final CUSTOMER_PAGE_KEY:Ljava/lang/String; = "customerPagePref"

.field public static final DEFAULT_WALLPAPER_THUMBNAIL:Ljava/lang/String; = "default_thumb2.jpg"

.field public static final DEFAULT_WALLPAPER_THUMBNAIL_OLD:Ljava/lang/String; = "default_thumb.jpg"

.field public static final HIDEAPPS_PREFERENCES_KEY:Ljava/lang/String; = "com.sec.android.app.launcher.hideapps.prefs"

.field public static final HOMEEASY_DEFAULT_PAGE_KEY:Ljava/lang/String; = "com.sec.android.app.launcher.homeeasy.defaultpage.prefs"

.field public static final HOMEONLY_DEFAULT_PAGE_KEY:Ljava/lang/String; = "com.sec.android.app.launcher.homeonly.defaultpage.prefs"

.field public static final HOME_DEFAULT_PAGE_KEY:Ljava/lang/String; = "com.sec.android.app.launcher.home.defaultpage.prefs"

.field public static final LAUNCHER_DB:Ljava/lang/String; = "launcher.db"

.field public static final MANAGED_USER_PREFERENCES_KEY:Ljava/lang/String; = "com.sec.android.app.launcher.managedusers.prefs"

.field public static final MULTI_SELECT_HELP_KEY:Ljava/lang/String; = "com.sec.android.app.launcher.multiselect.help.prefs"

.field public static final OBSOLETE_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAMSUNG_ANALYTICS_PREFERENCES_KEY:Ljava/lang/String; = "com.sec.android.app.launcher.prefs.sa"

.field public static final SAMSUNG_ANALYTICS_PREFERENCES_KEY_LEGACY:Ljava/lang/String; = "SASettingPref"

.field public static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "com.sec.android.app.launcher.prefs"

.field public static final WALLPAPER_CROP_PREFERENCES_KEY:Ljava/lang/String; = "com.android.launcher3.WallpaperCropActivity"

.field public static final WALLPAPER_IMAGES_DB:Ljava/lang/String; = "saved_wallpaper_images.db"

.field public static final WIDGET_PREVIEWS_DB:Ljava/lang/String; = "widgetpreviews.db"

.field private static final XML:Ljava/lang/String; = ".xml"

.field public static final ZEROPAGE_ACTIVE_STATE_KEY:Ljava/lang/String; = "com.sec.android.app.launcher.zeropage.state.prefs"

.field public static final ZEROPAGE_CLASS_NAME_KEY:Ljava/lang/String; = "com.sec.android.app.launcher.zeropage.class.prefs"

.field public static final ZEROPAGE_PACKAGE_NAME_KEY:Ljava/lang/String; = "com.sec.android.app.launcher.zeropage.package.prefs"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default_thumb2.jpg"

    aput-object v1, v0, v3

    const-string v1, "default_thumb.jpg"

    aput-object v1, v0, v4

    const-string v1, "launcher.db"

    aput-object v1, v0, v5

    const-string v1, "com.sec.android.app.launcher.prefs.xml"

    aput-object v1, v0, v6

    const-string v1, "com.android.launcher3.WallpaperCropActivity.xml"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "saved_wallpaper_images.db"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "widgetpreviews.db"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.launcher.managedusers.prefs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sec.android.app.launcher.home.defaultpage.prefs"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sec.android.app.launcher.zeropage.package.prefs"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sec.android.app.launcher.zeropage.class.prefs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.sec.android.app.launcher.zeropage.state.prefs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "app_icons.db"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.sec.android.app.launcher.prefs.sa"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherFiles;->ALL_FILES:Ljava/util/List;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "launches.log"

    aput-object v1, v0, v3

    const-string v1, "stats.log"

    aput-object v1, v0, v4

    const-string v1, "launcher.preferences"

    aput-object v1, v0, v5

    const-string v1, "com.android.launcher3.common.compat.PackageInstallerCompatV16.queue"

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherFiles;->OBSOLETE_FILES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
