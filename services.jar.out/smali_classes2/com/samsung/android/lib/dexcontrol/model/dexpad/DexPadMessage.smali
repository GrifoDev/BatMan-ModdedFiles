.class Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPadMessage;
.super Ljava/lang/Object;
.source "DexPadMessage.java"


# static fields
.field public static final ACK:B = 0x0t

.field public static final ACK_DATA_SIZE:I = 0x4

.field public static final ACK_NAK:I = 0x2

.field public static final AUTHENTICATION_RESULT_NOTIFICATION:B = 0x2t

.field public static final AUTHENTICATION_RESULT_REPONSE:B = 0x2t

.field public static final COMMAND:I = 0x1

.field public static final COMMAND_AUTHENTICATION_REQUEST:B = 0x1t

.field public static final COMMAND_AUTHENTICATION_RESPONSE:B = 0x1t

.field public static final COMMAND_CERTIFICATE_REQUEST:B = 0x0t

.field public static final COMMAND_CERTIFICATE_RESPONSE:B = 0x0t

.field public static final COMMAND_CHARGER_TYPE_REQUEST:B = 0x10t

.field public static final COMMAND_CHARGER_TYPE_RESPONSE:B = 0x10t

.field public static final COMMAND_CHARGING_CONTROL_REQUEST:B = 0x1t

.field public static final COMMAND_CHARGING_CONTROL_RESPONSE:B = 0x1t

.field public static final COMMAND_CHARGING_MODE_SUPPORT_REQUEST:B = 0x0t

.field public static final COMMAND_CHARGING_MODE_SUPPORT_RESPONSE:B = 0x0t

.field public static final COMMAND_CURRENT_CHARGING_MODE_REPONSE:B = 0x10t

.field public static final COMMAND_CURRENT_CHARGING_MODE_REQUEST:B = 0x10t

.field public static final COMMAND_CURRENT_FAN_STATUS_REQUEST:B = 0x10t

.field public static final COMMAND_CURRENT_FAN_STATUS_RESPONSE:B = 0x10t

.field public static final COMMAND_FAN_CONTROL_REQUEST:B = 0x1t

.field public static final COMMAND_FAN_CONTROL_RESPONSE:B = 0x1t

.field public static final COMMAND_FAN_IC_INIT_REQUEST:B = 0x0t

.field public static final COMMAND_FAN_IC_INIT_RESPONSE:B = 0x0t

.field public static final COMMAND_FW_MODE_REQUEST:B = 0x2t

.field public static final COMMAND_FW_MODE_RESPONSE:B = 0x2t

.field public static final COMMAND_FW_VERSION_REQUEST:B = 0x1t

.field public static final COMMAND_FW_VERSION_RESPONSE:B = 0x1t

.field public static final COMMAND_PD_STATE_REQUEST:B = 0x1t

.field public static final COMMAND_PD_STATE_RESPONSE:B = 0x1t

.field public static final COMMAND_SYSTEM_MEMORY_SIZE_REPONSE:B = -0x10t

.field public static final COMMAND_SYSTEM_MEMORY_SIZE_REQUEST:B = -0x10t

.field public static final COMMAND_TYPE_C_STATE_REQUEST:B = 0x0t

.field public static final COMMAND_TYPE_C_STATE_RESPONSE:B = 0x0t

.field public static final COMMAND_UN_NUMBER_REQUEST:B = 0x0t

.field public static final COMMAND_UN_NUMBER_RESPONSE:B = 0x0t

.field public static final DATA:I = 0x3

.field public static final DS_VERSION_PACKET_LENGTH:B = 0xbt

.field public static final DS_VERSION_SIZE:B = 0x3t

.field public static final ERROR:I = 0x3

.field public static final ERROR_MSG_SYSTEM_BUSY:B = -0x10t

.field public static final ERROR_MSG_SYSTEM_FAULT:B = -0xft

.field public static final NAK:B = 0x1t

.field public static final TA_CAPACITY:I = 0x4

.field public static final TA_NONE_SIZE_NEW:I = 0xa

.field public static final TA_NONE_SIZE_OLD:I = 0x4

.field public static final TA_TYPE:I = 0x3

.field public static final TYPE:I = 0x0

.field public static final TYPE_AUTHENTICATION:B = 0x1t

.field public static final TYPE_BIG_DATA:B = -0x50t

.field public static final TYPE_CHARGING_CONTROL:B = 0x3t

.field public static final TYPE_FAN_CONTROL:B = 0x2t


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(BB)[B
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [B

    int-to-byte v1, p0

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static getBytes(BBI)[B
    .locals 3

    const/4 v1, 0x3

    new-array v0, v1, [B

    int-to-byte v1, p0

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    int-to-byte v1, p2

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    return-object v0
.end method
