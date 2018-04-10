.class public Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;
.super Ljava/lang/Object;
.source "UvdmFileHelper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native ccic_close()I
.end method

.method public native ccic_open()I
.end method

.method public native ioctl_longDataRead(I)[B
.end method

.method public native ioctl_longDataWrite(I[B)I
.end method

.method public native ioctl_shortDataRead(I)[B
.end method

.method public native ioctl_shortDataWrite(I[B)I
.end method
