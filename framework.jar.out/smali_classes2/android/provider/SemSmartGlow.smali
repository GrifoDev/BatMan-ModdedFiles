.class public Landroid/provider/SemSmartGlow;
.super Ljava/lang/Object;
.source "SemSmartGlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SemSmartGlow$ColorValues;,
        Landroid/provider/SemSmartGlow$RepeatValue;,
        Landroid/provider/SemSmartGlow$SmartGlowColor;
    }
.end annotation


# static fields
.field public static final ALL_DAY_ALERTS:Ljava/lang/String; = "ml_all_day"

.field public static final ASSISTIVE_ALERT_BATTERY_STATUS:Ljava/lang/String; = "ml_aa_battery_status"

.field public static final ASSISTIVE_ALERT_BATTERY_VALUE:Ljava/lang/String; = "ml_aa_battery_value"

.field public static final ASSISTIVE_ALERT_DATA_USAGE_STATUS:Ljava/lang/String; = "ml_aa_du_status"

.field public static final ASSISTIVE_ALERT_STATUS:Ljava/lang/String; = "ml_aa_status"

.field public static final ASSISTIVE_ALERT_STORAGE_STATUS:Ljava/lang/String; = "ml_aa_storage_status"

.field public static final ASSISTIVE_ALERT_STORAGE_VALUE:Ljava/lang/String; = "ml_aa_storage_value"

.field public static final COLOR_PACKAGE_SEPARATOR:Ljava/lang/String; = ":"

.field public static final DISCLAIMER_STATUS:Ljava/lang/String; = "ml_disclaimer"

.field public static final DISCOVERY_STATUS:Ljava/lang/String; = "ml_discovery"

.field public static final END_TIME:Ljava/lang/String; = "ml_end_time"

.field public static final NOTIFICATIONS_BATTERY_CHARGING_STATUS:Ljava/lang/String; = "ml_battery_charging"

.field public static final NOTIFICATIONS_EMAIL:Ljava/lang/String; = "ml_email"

.field public static final NOTIFICATIONS_MESSAGE:Ljava/lang/String; = "ml_message"

.field public static final NOTIFICATIONS_MISSED_CALL:Ljava/lang/String; = "ml_missed_call"

.field public static final PACKAGE_NOT_FOUND:I = -0x1

.field public static final PACKAGE_SEPARATOR:Ljava/lang/String; = ";"

.field public static final PRIORITY_NOTIFIER_PACKAGE_LIST:Ljava/lang/String; = "ml_pn_package"

.field public static final PRIORITY_NOTIFIER_STATUS:Ljava/lang/String; = "ml_pn_status"

.field public static final REPEAT_VALUE:Ljava/lang/String; = "ml_repeat_value"

.field public static final SMART_GLOW_STATUS:Ljava/lang/String; = "ml_status"

.field public static final START_TIME:Ljava/lang/String; = "ml_start_time"

.field public static final STORAGE_PATH_SELFIE_ASSIST_PICTURES:Ljava/lang/String; = "ml_storage_path"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorForAssistiveAlert(Landroid/content/ContentResolver;)I
    .locals 2

    const-string/jumbo v0, "ml_color_assistive"

    invoke-static {}, Landroid/provider/SemSmartGlow$SmartGlowColor;->-get2()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getColorForIndex(Landroid/content/ContentResolver;I)I
    .locals 3

    const/high16 v2, -0x1000000

    invoke-static {}, Landroid/provider/SemSmartGlow$SmartGlowColor;->-get0()I

    move-result v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const-string/jumbo v1, "ml_color_1"

    invoke-static {}, Landroid/provider/SemSmartGlow$SmartGlowColor;->-get1()I

    move-result v2

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "ml_color_2"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "ml_color_3"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "ml_color_4"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setColorForAssistiveAlert(Landroid/content/ContentResolver;I)V
    .locals 1

    const-string/jumbo v0, "ml_color_assistive"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setColorForIndex(Landroid/content/ContentResolver;II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "ml_color_1"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "ml_color_2"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "ml_color_3"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "ml_color_4"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
