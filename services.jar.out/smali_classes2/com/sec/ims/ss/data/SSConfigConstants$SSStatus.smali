.class public Lcom/sec/ims/ss/data/SSConfigConstants$SSStatus;
.super Ljava/lang/Object;
.source "SSConfigConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ss/data/SSConfigConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSStatus"
.end annotation


# static fields
.field public static final SS_STATUS_ACTIVE:I = 0x2

.field public static final SS_STATUS_NOT_ACTIVE:I = 0x1

.field public static final SS_STATUS_NOT_SUBSCRIBER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
