.class public final Landroid/provider/SemSmartGlow$ColorValues;
.super Ljava/lang/Object;
.source "SemSmartGlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SemSmartGlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorValues"
.end annotation


# static fields
.field public static final COLOR_BLACK:I

.field public static final COLOR_GREEN:I

.field public static final COLOR_LIGHT_BLUE:I

.field public static final COLOR_MAGENTA:I

.field public static final COLOR_RED:I

.field public static final COLOR_SKY_BLUE:I

.field public static final COLOR_YELLOW_GREEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xff

    const/4 v2, 0x0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/SemSmartGlow$ColorValues;->COLOR_BLACK:I

    const/16 v0, 0xd2

    const/16 v1, 0xf1

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/SemSmartGlow$ColorValues;->COLOR_SKY_BLUE:I

    invoke-static {v2, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/SemSmartGlow$ColorValues;->COLOR_GREEN:I

    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/SemSmartGlow$ColorValues;->COLOR_RED:I

    const/16 v0, 0x70

    const/16 v1, 0xae

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/SemSmartGlow$ColorValues;->COLOR_YELLOW_GREEN:I

    const/16 v0, 0x26

    const/16 v1, 0x4d

    const/16 v2, 0xf5

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/SemSmartGlow$ColorValues;->COLOR_LIGHT_BLUE:I

    const/16 v0, 0xde

    const/16 v1, 0x37

    const/16 v2, 0xb9

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/SemSmartGlow$ColorValues;->COLOR_MAGENTA:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
