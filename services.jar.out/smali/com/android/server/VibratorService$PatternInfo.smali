.class Lcom/android/server/VibratorService$PatternInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatternInfo"
.end annotation


# instance fields
.field private engine:[I

.field private pattern:[J

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorService$PatternInfo;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$PatternInfo;->engine:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/VibratorService$PatternInfo;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$PatternInfo;->pattern:[J

    return-object v0
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService$PatternInfo;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$PatternInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService$PatternInfo;-><init>(Lcom/android/server/VibratorService;)V

    return-void
.end method


# virtual methods
.method init(Landroid/content/res/Resources;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$PatternInfo;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/VibratorService;->-wrap1(Lcom/android/server/VibratorService;Landroid/content/res/Resources;II)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService$PatternInfo;->pattern:[J

    iget-object v0, p0, Lcom/android/server/VibratorService$PatternInfo;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0, p1, p2}, Lcom/android/server/VibratorService;->-wrap0(Lcom/android/server/VibratorService;Landroid/content/res/Resources;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService$PatternInfo;->engine:[I

    return-void
.end method
