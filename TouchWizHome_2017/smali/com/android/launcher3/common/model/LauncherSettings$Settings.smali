.class public final Lcom/android/launcher3/common/model/LauncherSettings$Settings;
.super Ljava/lang/Object;
.source "LauncherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.launcher.settings"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRA_DEFAULT_VALUE:Ljava/lang/String; = "default_value"

.field public static final EXTRA_VALUE:Ljava/lang/String; = "value"

.field public static final METHOD_GET_BOOLEAN:Ljava/lang/String; = "get_boolean_setting"

.field public static final METHOD_SET_BOOLEAN:Ljava/lang/String; = "set_boolean_setting"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.launcher.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
