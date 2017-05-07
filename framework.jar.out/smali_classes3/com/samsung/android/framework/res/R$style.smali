.class public final Lcom/samsung/android/framework/res/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/framework/res/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static DefaultPopupStyle:I

.field public static RobotoCondensedRegularFontStyle:I

.field public static RobotoRegularFontStyle:I

.field public static loading_screen_animation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xc0003

    sput v0, Lcom/samsung/android/framework/res/R$style;->DefaultPopupStyle:I

    const v0, 0xc0001

    sput v0, Lcom/samsung/android/framework/res/R$style;->RobotoCondensedRegularFontStyle:I

    const v0, 0xc0002

    sput v0, Lcom/samsung/android/framework/res/R$style;->RobotoRegularFontStyle:I

    const/high16 v0, 0xc0000

    sput v0, Lcom/samsung/android/framework/res/R$style;->loading_screen_animation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
