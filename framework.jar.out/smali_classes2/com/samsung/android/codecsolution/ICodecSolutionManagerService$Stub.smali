.class public abstract Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;
.super Landroid/os/Binder;
.source "ICodecSolutionManagerService.java"

# interfaces
.implements Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.codecsolution.ICodecSolutionManagerService"

.field static final TRANSACTION_checkblackbarstatus:I = 0xb

.field static final TRANSACTION_debug:I = 0x11

.field static final TRANSACTION_getSmartFittingMode:I = 0x8

.field static final TRANSACTION_getWhiteListStatus:I = 0xd

.field static final TRANSACTION_hideSmartFittingButton:I = 0xf

.field static final TRANSACTION_reportMediaStatisticsEvent:I = 0x10

.field static final TRANSACTION_setMhdrEnable:I = 0x3

.field static final TRANSACTION_setMhdrMetaData:I = 0x4

.field static final TRANSACTION_setSecVideoUseSmartFitting:I = 0x9

.field static final TRANSACTION_setSmartFittingMode:I = 0x7

.field static final TRANSACTION_setWhiteListStatus:I = 0xc

.field static final TRANSACTION_showSmartFittingButton:I = 0xe

.field static final TRANSACTION_startMhdrService:I = 0x1

.field static final TRANSACTION_startSmartFittingService:I = 0x5

.field static final TRANSACTION_stopMhdrService:I = 0x2

.field static final TRANSACTION_stopSmartFittingService:I = 0x6

.field static final TRANSACTION_updateblackbarstatus:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_0
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_1
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->startMhdrService(ILjava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_2
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->stopMhdrService()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_3
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->setMhdrEnable(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_4
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->setMhdrMetaData(IIII)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_5
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->startSmartFittingService()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_6
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->stopSmartFittingService()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_7
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->setSmartFittingMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_8
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->getSmartFittingMode()I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :sswitch_9
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->setSecVideoUseSmartFitting(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_a
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->updateblackbarstatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_b
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->checkblackbarstatus()I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :sswitch_c
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->setWhiteListStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_d
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->getWhiteListStatus()I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :sswitch_e
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->showSmartFittingButton()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_f
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->hideSmartFittingButton()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_10
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->reportMediaStatisticsEvent(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_11
    const-string/jumbo v7, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->debug()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
