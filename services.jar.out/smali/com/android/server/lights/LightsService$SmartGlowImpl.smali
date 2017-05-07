.class final Lcom/android/server/lights/LightsService$SmartGlowImpl;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartGlowImpl"
.end annotation


# instance fields
.field private mColor:[I

.field private mLedno:I

.field private mOffMS:[I

.field private mOnMS:[I

.field private mRepeatCount:I

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method static synthetic -get0(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mColor:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mLedno:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOffMS:[I

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOnMS:[I

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mRepeatCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mColor:[I

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mLedno:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOffMS:[I

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mOnMS:[I

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mRepeatCount:I

    return p1
.end method

.method private constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/LightsService$SmartGlowImpl;->mColor:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SmartGlowImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$SmartGlowImpl;-><init>(Lcom/android/server/lights/LightsService;)V

    return-void
.end method
