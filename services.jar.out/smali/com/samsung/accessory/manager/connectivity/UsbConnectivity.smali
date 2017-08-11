.class public Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "UsbConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$AdapterStateChangedHandler;,
        Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ccic:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;

.field private mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;-><init>(Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->ccic:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;

    new-instance v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$AdapterStateChangedHandler;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$AdapterStateChangedHandler;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

    return-void
.end method

.method private sendStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-interface {v0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public disable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public enable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabledInternally()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabledInternally()Z

    move-result v0

    return v0
.end method

.method public sendDexFanControl(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->ccic:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;

    invoke-static {v0, p1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->-wrap1(Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;I)V

    return-void
.end method

.method public sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public sendStopAuth()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->ccic:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;

    invoke-static {v0, p1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;->-wrap0(Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;Ljava/lang/String;)V

    return-void
.end method

.method public setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V

    return-void
.end method
