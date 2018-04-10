.class final Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;
.super Ljava/lang/Object;
.source "ExecAccessoryMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/friends/executable/ExecAccessoryMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessoryData"
.end annotation


# instance fields
.field private mActionNo:I

.field private mBundle:Landroid/os/Bundle;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mActionNo:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method private constructor <init>(ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mActionNo:I

    iput-object p2, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(ILandroid/os/Bundle;Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;-><init>(ILandroid/os/Bundle;)V

    return-void
.end method
