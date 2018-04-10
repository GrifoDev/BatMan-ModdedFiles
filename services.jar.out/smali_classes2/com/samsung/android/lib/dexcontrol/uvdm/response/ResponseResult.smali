.class public Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;
.super Ljava/lang/Object;
.source "ResponseResult.java"


# static fields
.field public static final DATA_NULL_ERROR:I = -0x4

.field public static final UVDM_ERROR_NONE:I = 0x0

.field public static final UVDM_OPEN_ERROR:I = -0x1

.field public static final UVDM_READ_ERROR:I = -0x3

.field public static final UVDM_WRITE_ERROR:I = -0x2


# instance fields
.field private mData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->mData:[B

    return-object v0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->mData:[B

    return-void
.end method
