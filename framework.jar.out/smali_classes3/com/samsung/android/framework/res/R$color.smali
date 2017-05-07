.class public final Lcom/samsung/android/framework/res/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/framework/res/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static decor_button_dark_color:I

.field public static decor_button_light_color:I

.field public static dex_dialog_launch_button_color:I

.field public static dex_dialog_launch_msg_color:I

.field public static dex_dialog_launch_title_color:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xa0003

    sput v0, Lcom/samsung/android/framework/res/R$color;->decor_button_dark_color:I

    const v0, 0xa0004

    sput v0, Lcom/samsung/android/framework/res/R$color;->decor_button_light_color:I

    const v0, 0xa0002

    sput v0, Lcom/samsung/android/framework/res/R$color;->dex_dialog_launch_button_color:I

    const v0, 0xa0001

    sput v0, Lcom/samsung/android/framework/res/R$color;->dex_dialog_launch_msg_color:I

    const/high16 v0, 0xa0000

    sput v0, Lcom/samsung/android/framework/res/R$color;->dex_dialog_launch_title_color:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
