.class Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;
.super Ljava/util/HashMap;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->AUDIO:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "A"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->COMMUNICATIONS_AND_CDC_CONTROL:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "B"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->HID:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "C"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->PHYSICAL:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "D"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->IMAGE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "E"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->PRINTER:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "F"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->MASS_STORAGE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "G"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->HUB:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "H"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->CDC_DATA:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "I"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->SMART_CARD:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "J"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->CONTENT_SECURITY:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "K"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->VIDEO:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "L"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->PERSOLNAL_HEALTHCARE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "M"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->AUDIO_VIDEO_DEVICES:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "N"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->BILLBOARD_DEVICE_CLASS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "O"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->USB_TYPE_C_BRIDGE_CLASS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "P"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->DIAGONOSTIC_DEVICES:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "Q"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->WIRELESS_CONTROLLER:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "R"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->MISCELLANEOUS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "S"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->APPLICATION_SPECIFIC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "T"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->VENDOR_SPECIFIC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "U"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
