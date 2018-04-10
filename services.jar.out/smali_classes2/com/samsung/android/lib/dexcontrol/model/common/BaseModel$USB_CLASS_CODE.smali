.class public final enum Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;
.super Ljava/lang/Enum;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "USB_CLASS_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum APPLICATION_SPECIFIC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum AUDIO:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum AUDIO_VIDEO_DEVICES:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum BILLBOARD_DEVICE_CLASS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum CDC_DATA:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum COMMUNICATIONS_AND_CDC_CONTROL:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum CONTENT_SECURITY:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum DIAGONOSTIC_DEVICES:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum HID:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum HUB:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum IMAGE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum MASS_STORAGE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum MISCELLANEOUS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum PERSOLNAL_HEALTHCARE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum PHYSICAL:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum PRINTER:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum SMART_CARD:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum USB_TYPE_C_BRIDGE_CLASS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum VENDOR_SPECIFIC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum VIDEO:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum WIRELESS_CONTROLLER:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->AUDIO:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "COMMUNICATIONS_AND_CDC_CONTROL"

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->COMMUNICATIONS_AND_CDC_CONTROL:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "HID"

    invoke-direct {v0, v1, v5, v6}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->HID:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "PHYSICAL"

    invoke-direct {v0, v1, v6, v7}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->PHYSICAL:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "IMAGE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v8}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->IMAGE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "PRINTER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->PRINTER:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "MASS_STORAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->MASS_STORAGE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "HUB"

    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->HUB:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "CDC_DATA"

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->CDC_DATA:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "SMART_CARD"

    const/16 v2, 0x9

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->SMART_CARD:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "CONTENT_SECURITY"

    const/16 v2, 0xa

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->CONTENT_SECURITY:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "VIDEO"

    const/16 v2, 0xb

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->VIDEO:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "PERSOLNAL_HEALTHCARE"

    const/16 v2, 0xc

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->PERSOLNAL_HEALTHCARE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "AUDIO_VIDEO_DEVICES"

    const/16 v2, 0xd

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->AUDIO_VIDEO_DEVICES:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "BILLBOARD_DEVICE_CLASS"

    const/16 v2, 0xe

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->BILLBOARD_DEVICE_CLASS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "USB_TYPE_C_BRIDGE_CLASS"

    const/16 v2, 0xf

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->USB_TYPE_C_BRIDGE_CLASS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "DIAGONOSTIC_DEVICES"

    const/16 v2, 0x10

    const/16 v3, 0xdc

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->DIAGONOSTIC_DEVICES:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "WIRELESS_CONTROLLER"

    const/16 v2, 0x11

    const/16 v3, 0xe0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->WIRELESS_CONTROLLER:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "MISCELLANEOUS"

    const/16 v2, 0x12

    const/16 v3, 0xef

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->MISCELLANEOUS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "APPLICATION_SPECIFIC"

    const/16 v2, 0x13

    const/16 v3, 0xfe

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->APPLICATION_SPECIFIC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const-string/jumbo v1, "VENDOR_SPECIFIC"

    const/16 v2, 0x14

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->VENDOR_SPECIFIC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->AUDIO:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->COMMUNICATIONS_AND_CDC_CONTROL:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->HID:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->PHYSICAL:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->IMAGE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->PRINTER:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->MASS_STORAGE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->HUB:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->CDC_DATA:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->SMART_CARD:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->CONTENT_SECURITY:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->VIDEO:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->PERSOLNAL_HEALTHCARE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->AUDIO_VIDEO_DEVICES:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->BILLBOARD_DEVICE_CLASS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->USB_TYPE_C_BRIDGE_CLASS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->DIAGONOSTIC_DEVICES:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->WIRELESS_CONTROLLER:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->MISCELLANEOUS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->APPLICATION_SPECIFIC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->VENDOR_SPECIFIC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->$VALUES:[Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->$VALUES:[Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->mValue:I

    return v0
.end method
