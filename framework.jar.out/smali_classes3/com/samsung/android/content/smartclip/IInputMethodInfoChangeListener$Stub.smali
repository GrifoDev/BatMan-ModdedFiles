.class public abstract Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener$Stub;
.super Landroid/os/Binder;
.source "IInputMethodInfoChangeListener.java"

# interfaces
.implements Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.content.smartclip.IInputMethodInfoChangeListener"

.field static final TRANSACTION_onInputInfoChanged:I = 0x1

.field static final TRANSACTION_onKeyboardClosed:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.content.smartclip.IInputMethodInfoChangeListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.content.smartclip.IInputMethodInfoChangeListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_0
    const-string/jumbo v2, "com.samsung.android.content.smartclip.IInputMethodInfoChangeListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_1
    const-string/jumbo v2, "com.samsung.android.content.smartclip.IInputMethodInfoChangeListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener$Stub;->onInputInfoChanged(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V

    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "com.samsung.android.content.smartclip.IInputMethodInfoChangeListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener$Stub;->onKeyboardClosed()V

    return v3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
