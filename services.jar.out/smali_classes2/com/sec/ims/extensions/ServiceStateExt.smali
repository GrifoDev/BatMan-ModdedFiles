.class public Lcom/sec/ims/extensions/ServiceStateExt;
.super Ljava/lang/Object;
.source "ServiceStateExt.java"


# static fields
.field public static final LTE_IMS_VOICE_AVAIL_NOT_SUPPORT:I

.field public static final LTE_IMS_VOICE_AVAIL_SUPPORT:I

.field public static final LTE_IMS_VOICE_AVAIL_UNKNOWN:I

.field public static final SNAPSHOT_STATUS_ACTIVATED:I

.field public static final SNAPSHOT_STATUS_DEACTIVATED:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "LTE_IMS_VOICE_AVAIL_UNKNOWN"

    invoke-static {v0, v2}, Lcom/sec/ims/extensions/ServiceStateExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ServiceStateExt;->LTE_IMS_VOICE_AVAIL_UNKNOWN:I

    const-string/jumbo v0, "LTE_IMS_VOICE_AVAIL_SUPPORT"

    invoke-static {v0, v3}, Lcom/sec/ims/extensions/ServiceStateExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ServiceStateExt;->LTE_IMS_VOICE_AVAIL_SUPPORT:I

    const-string/jumbo v0, "LTE_IMS_VOICE_AVAIL_NOT_SUPPORT"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ServiceStateExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ServiceStateExt;->LTE_IMS_VOICE_AVAIL_NOT_SUPPORT:I

    const-string/jumbo v0, "SNAPSHOT_STATUS_DEACTIVATED"

    invoke-static {v0, v2}, Lcom/sec/ims/extensions/ServiceStateExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_DEACTIVATED:I

    const-string/jumbo v0, "SNAPSHOT_STATUS_ACTIVATED"

    invoke-static {v0, v3}, Lcom/sec/ims/extensions/ServiceStateExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_ACTIVATED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getIntField(Ljava/lang/String;I)I
    .locals 4

    :try_start_0
    const-class v3, Landroid/telephony/ServiceState;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return p1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
