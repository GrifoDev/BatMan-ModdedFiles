.class public final Lcom/android/launcher3/util/BlurUtils;
.super Ljava/lang/Object;
.source "BlurUtils.java"


# static fields
.field public static final BLUR_MAX_AMOUNT:F = 0.3f

.field private static final BLUR_UPDATE_LEVEL:F = 14.0f

.field private static final DEFAULT_BLUR_AMOUNT:F = 0.2f

.field private static final DEFAULT_BLUR_DURATION:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "BlurUtils"

.field private static sBlur:Z

.field private static sBlurAmount:F

.field private static sRangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/util/BlurUtils;->sBlur:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/util/BlurUtils;->sBlurAmount:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/BlurUtils;->sRangeList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/launcher3/util/BlurUtils;->sRangeList:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher3/util/BlurUtils;->sRangeList:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher3/util/BlurUtils;->sRangeList:Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher3/util/BlurUtils;->sRangeList:Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher3/util/BlurUtils;->sRangeList:Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher3/util/BlurUtils;->sRangeList:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher3/util/BlurUtils;->sRangeList:Ljava/util/ArrayList;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blurByWindowManager(ZLandroid/view/Window;)V
    .locals 4

    const v0, 0x3e4ccccd    # 0.2f

    const-wide/16 v2, -0x1

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    return-void
.end method

.method public static blurByWindowManager(ZLandroid/view/Window;FJ)V
    .locals 9

    const/16 v7, 0x40

    const/4 v6, 0x2

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/launcher3/util/BlurUtils;->sBlur:Z

    if-ne v2, p0, :cond_1

    sget-object v2, Lcom/android/launcher3/util/BlurUtils;->sRangeList:Ljava/util/ArrayList;

    sget v3, Lcom/android/launcher3/util/BlurUtils;->sBlurAmount:F

    const/high16 v4, 0x41600000    # 14.0f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v2, v3, p2, v4, v5}, Lcom/android/launcher3/Utilities;->compareByStage(Ljava/util/ArrayList;FFFF)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/android/launcher3/util/BlurUtils;->sBlur:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    cmpl-float v2, p2, v1

    if-eqz v2, :cond_0

    :cond_2
    const-string v2, "BlurUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blurByWindowManager with show = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dest = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", amount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sBlur="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/launcher3/util/BlurUtils;->sBlur:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportBackgroundBlurByWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p0, :cond_3

    invoke-virtual {v0, v7}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    invoke-virtual {v0, p3, p4}, Landroid/view/WindowManager$LayoutParams;->semSetEnterDimDuration(J)V

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v6}, Landroid/view/Window;->addFlags(I)V

    :goto_1
    sput-boolean p0, Lcom/android/launcher3/util/BlurUtils;->sBlur:Z

    if-eqz p0, :cond_4

    :goto_2
    sput p2, Lcom/android/launcher3/util/BlurUtils;->sBlurAmount:F

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v7}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    invoke-virtual {v0, p3, p4}, Landroid/view/WindowManager$LayoutParams;->semSetEnterDimDuration(J)V

    invoke-virtual {p1, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    :cond_4
    move p2, v1

    goto :goto_2
.end method

.method public static getBlurAmount()F
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/util/BlurUtils;->sBlur:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/launcher3/util/BlurUtils;->sBlurAmount:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetBlur()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/util/BlurUtils;->sBlur:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/util/BlurUtils;->sBlurAmount:F

    return-void
.end method
