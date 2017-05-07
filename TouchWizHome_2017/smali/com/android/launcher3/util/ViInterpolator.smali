.class public final Lcom/android/launcher3/util/ViInterpolator;
.super Ljava/lang/Object;
.source "ViInterpolator.java"


# static fields
.field public static final ACCELERATION:I = 0x1

.field public static final DECELERATION:I = 0x2

.field public static final SHARP:I = 0x3

.field public static final SINE_IN_33:I = 0xa

.field public static final SINE_IN_50:I = 0xb

.field public static final SINE_IN_60:I = 0xc

.field public static final SINE_IN_70:I = 0xd

.field public static final SINE_IN_80:I = 0xe

.field public static final SINE_IN_90:I = 0xf

.field public static final SINE_IN_OUT_33:I = 0x1e

.field public static final SINE_IN_OUT_50:I = 0x1f

.field public static final SINE_IN_OUT_60:I = 0x20

.field public static final SINE_IN_OUT_70:I = 0x21

.field public static final SINE_IN_OUT_80:I = 0x22

.field public static final SINE_IN_OUT_90:I = 0x23

.field public static final SINE_OUT_33:I = 0x14

.field public static final SINE_OUT_50:I = 0x15

.field public static final SINE_OUT_60:I = 0x16

.field public static final SINE_OUT_70:I = 0x17

.field public static final SINE_OUT_80:I = 0x18

.field public static final SINE_OUT_90:I = 0x19

.field public static final STANDARD:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterploator(I)Landroid/view/animation/PathInterpolator;
    .locals 5

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x0

    move v1, v3

    move v2, v3

    move v0, v3

    :goto_0
    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v0, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v4

    :pswitch_1
    const v0, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_2
    const v0, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_4
    const v0, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v1, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_5
    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v1, 0x3f547ae1    # 0.83f

    const v3, 0x3f547ae1    # 0.83f

    goto :goto_0

    :pswitch_6
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const v1, 0x3f547ae1    # 0.83f

    const v3, 0x3f547ae1    # 0.83f

    goto :goto_0

    :pswitch_7
    const v0, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    const v1, 0x3f547ae1    # 0.83f

    const v3, 0x3f547ae1    # 0.83f

    goto :goto_0

    :pswitch_8
    const v0, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const v1, 0x3f547ae1    # 0.83f

    const v3, 0x3f547ae1    # 0.83f

    goto :goto_0

    :pswitch_9
    const v0, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    const v1, 0x3f547ae1    # 0.83f

    const v3, 0x3f547ae1    # 0.83f

    goto :goto_0

    :pswitch_a
    const v0, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const v1, 0x3f547ae1    # 0.83f

    const v3, 0x3f547ae1    # 0.83f

    goto :goto_0

    :pswitch_b
    const v0, 0x3e2e147b    # 0.17f

    const v2, 0x3e2e147b    # 0.17f

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_c
    const v0, 0x3e2e147b    # 0.17f

    const v2, 0x3e2e147b    # 0.17f

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_d
    const v0, 0x3e2e147b    # 0.17f

    const v2, 0x3e2e147b    # 0.17f

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_e
    const v0, 0x3e2e147b    # 0.17f

    const v2, 0x3e2e147b    # 0.17f

    const v1, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_f
    const v0, 0x3e2e147b    # 0.17f

    const v2, 0x3e2e147b    # 0.17f

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_10
    const v0, 0x3e2e147b    # 0.17f

    const v2, 0x3e2e147b    # 0.17f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_11
    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_12
    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_13
    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_14
    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v1, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_15
    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_16
    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
