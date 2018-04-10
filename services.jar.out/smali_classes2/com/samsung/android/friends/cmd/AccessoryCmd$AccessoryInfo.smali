.class Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;
.super Ljava/lang/Object;
.source "AccessoryCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/friends/cmd/AccessoryCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryInfo"
.end annotation


# instance fields
.field private final bundle:Landroid/os/Bundle;

.field private final id:I

.field private serialNo:Ljava/lang/String;

.field private serviceId:I

.field private serviceType:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->id:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->serviceId:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->serviceType:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->serialNo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->serviceId:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->serviceType:I

    return p1
.end method

.method private constructor <init>(Landroid/os/Bundle;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->bundle:Landroid/os/Bundle;

    iput p2, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->id:I

    iput v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->serviceId:I

    iput v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->serviceType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->serialNo:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;ILcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;-><init>(Landroid/os/Bundle;I)V

    return-void
.end method
