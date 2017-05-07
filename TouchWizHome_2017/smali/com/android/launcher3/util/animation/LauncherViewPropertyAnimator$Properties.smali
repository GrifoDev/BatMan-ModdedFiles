.class final enum Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;
.super Ljava/lang/Enum;
.source "LauncherViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Properties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

.field public static final enum ALPHA:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

.field public static final enum DURATION:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

.field public static final enum INTERPOLATOR:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

.field public static final enum ROTATION_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

.field public static final enum SCALE_X:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

.field public static final enum SCALE_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

.field public static final enum START_DELAY:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

.field public static final enum TRANSLATION_X:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

.field public static final enum TRANSLATION_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

.field public static final enum WITH_LAYER:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    const-string v1, "TRANSLATION_X"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    new-instance v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    const-string v1, "TRANSLATION_Y"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    new-instance v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    const-string v1, "SCALE_X"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    new-instance v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    const-string v1, "SCALE_Y"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    new-instance v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    const-string v1, "ROTATION_Y"

    invoke-direct {v0, v1, v7}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    new-instance v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    const-string v1, "ALPHA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    new-instance v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    const-string v1, "START_DELAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    new-instance v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    const-string v1, "DURATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    new-instance v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    const-string v1, "INTERPOLATOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    new-instance v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    const-string v1, "WITH_LAYER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->WITH_LAYER:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->WITH_LAYER:Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->$VALUES:[Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;
    .locals 1

    const-class v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->$VALUES:[Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0}, [Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/util/animation/LauncherViewPropertyAnimator$Properties;

    return-object v0
.end method
