.class public Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW$CcicPrintWriter;
.super Ljava/io/PrintWriter;
.source "UsbConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$ccicFW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CcicPrintWriter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method protected clearError()V
    .locals 0

    invoke-super {p0}, Ljava/io/PrintWriter;->clearError()V

    return-void
.end method
