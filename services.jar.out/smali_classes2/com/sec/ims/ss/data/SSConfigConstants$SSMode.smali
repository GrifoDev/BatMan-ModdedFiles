.class public Lcom/sec/ims/ss/data/SSConfigConstants$SSMode;
.super Ljava/lang/Object;
.source "SSConfigConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ss/data/SSConfigConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSMode"
.end annotation


# static fields
.field public static final SS_MODE_ACTIVATE:I = 0x3

.field public static final SS_MODE_DEACTIVATE:I = 0x4

.field public static final SS_MODE_DEREG:I = 0x2

.field public static final SS_MODE_REG:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
