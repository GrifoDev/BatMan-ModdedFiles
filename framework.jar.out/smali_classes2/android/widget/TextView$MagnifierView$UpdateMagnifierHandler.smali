.class Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;
.super Landroid/os/Handler;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$MagnifierView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateMagnifierHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$MagnifierView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView$MagnifierView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView$MagnifierView;Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;-><init>(Landroid/widget/TextView$MagnifierView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const v6, 0x3f2b851f    # 0.67f

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    iget-object v0, v0, Landroid/widget/TextView$MagnifierView;->builder:Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;

    invoke-virtual {v0}, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->clearAnimations()V

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    iget-object v0, v0, Landroid/widget/TextView$MagnifierView;->builder:Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;

    sget-object v1, Landroid/widget/TextView$SFEffectsAPI$AnimParam;->kAnimRegionPosX:Landroid/widget/TextView$SFEffectsAPI$AnimParam;

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v2}, Landroid/widget/TextView$MagnifierView;->-get12(Landroid/widget/TextView$MagnifierView;)F

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get16(Landroid/widget/TextView$MagnifierView;)[F

    move-result-object v3

    aget v3, v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get15(Landroid/widget/TextView$MagnifierView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get6(Landroid/widget/TextView$MagnifierView;)F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get5(Landroid/widget/TextView$MagnifierView;)[I

    move-result-object v3

    aget v3, v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget-object v3, Landroid/widget/TextView$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/TextView$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/TextView$SFEffectsAPI$AnimParam;IFLandroid/widget/TextView$SFEffectsAPI$InterpMode;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$SFEffectsAPI$AnimParam;->kAnimRegionPosY:Landroid/widget/TextView$SFEffectsAPI$AnimParam;

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v2}, Landroid/widget/TextView$MagnifierView;->-get13(Landroid/widget/TextView$MagnifierView;)F

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get16(Landroid/widget/TextView$MagnifierView;)[F

    move-result-object v3

    aget v3, v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get15(Landroid/widget/TextView$MagnifierView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get18(Landroid/widget/TextView$MagnifierView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get8(Landroid/widget/TextView$MagnifierView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get6(Landroid/widget/TextView$MagnifierView;)F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get5(Landroid/widget/TextView$MagnifierView;)[I

    move-result-object v3

    aget v3, v3, v5

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget-object v3, Landroid/widget/TextView$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/TextView$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/TextView$SFEffectsAPI$AnimParam;IFLandroid/widget/TextView$SFEffectsAPI$InterpMode;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$SFEffectsAPI$AnimParam;->kAnimRegionSizeX:Landroid/widget/TextView$SFEffectsAPI$AnimParam;

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v2}, Landroid/widget/TextView$MagnifierView;->-get0(Landroid/widget/TextView$MagnifierView;)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Landroid/widget/TextView$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/TextView$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/TextView$SFEffectsAPI$AnimParam;IFLandroid/widget/TextView$SFEffectsAPI$InterpMode;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$SFEffectsAPI$AnimParam;->kAnimRegionSizeY:Landroid/widget/TextView$SFEffectsAPI$AnimParam;

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v2}, Landroid/widget/TextView$MagnifierView;->-get1(Landroid/widget/TextView$MagnifierView;)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Landroid/widget/TextView$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/TextView$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/TextView$SFEffectsAPI$AnimParam;IFLandroid/widget/TextView$SFEffectsAPI$InterpMode;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$SFEffectsAPI$AnimParam;->kAnimRegionFactorX:Landroid/widget/TextView$SFEffectsAPI$AnimParam;

    sget-object v2, Landroid/widget/TextView$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/TextView$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v6, v2}, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/TextView$SFEffectsAPI$AnimParam;IFLandroid/widget/TextView$SFEffectsAPI$InterpMode;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$SFEffectsAPI$AnimParam;->kAnimRegionFactorY:Landroid/widget/TextView$SFEffectsAPI$AnimParam;

    sget-object v2, Landroid/widget/TextView$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/TextView$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v6, v2}, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/TextView$SFEffectsAPI$AnimParam;IFLandroid/widget/TextView$SFEffectsAPI$InterpMode;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$SFEffectsAPI$AnimParam;->kAnimRegionOffsetX:Landroid/widget/TextView$SFEffectsAPI$AnimParam;

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v2}, Landroid/widget/TextView$MagnifierView;->-get16(Landroid/widget/TextView$MagnifierView;)[F

    move-result-object v2

    aget v2, v2, v4

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get14(Landroid/widget/TextView$MagnifierView;)[F

    move-result-object v3

    aget v3, v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get6(Landroid/widget/TextView$MagnifierView;)F

    move-result v3

    mul-float/2addr v2, v3

    sget-object v3, Landroid/widget/TextView$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/TextView$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/TextView$SFEffectsAPI$AnimParam;IFLandroid/widget/TextView$SFEffectsAPI$InterpMode;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$SFEffectsAPI$AnimParam;->kAnimRegionOffsetY:Landroid/widget/TextView$SFEffectsAPI$AnimParam;

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v2}, Landroid/widget/TextView$MagnifierView;->-get18(Landroid/widget/TextView$MagnifierView;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get8(Landroid/widget/TextView$MagnifierView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get16(Landroid/widget/TextView$MagnifierView;)[F

    move-result-object v3

    aget v3, v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get14(Landroid/widget/TextView$MagnifierView;)[F

    move-result-object v3

    aget v3, v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get6(Landroid/widget/TextView$MagnifierView;)F

    move-result v3

    mul-float/2addr v2, v3

    sget-object v3, Landroid/widget/TextView$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/TextView$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/TextView$SFEffectsAPI$AnimParam;IFLandroid/widget/TextView$SFEffectsAPI$InterpMode;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$SFEffectsAPI$AnimParam;->kAnimRegionSizeT:Landroid/widget/TextView$SFEffectsAPI$AnimParam;

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v2}, Landroid/widget/TextView$MagnifierView;->-get2(Landroid/widget/TextView$MagnifierView;)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Landroid/widget/TextView$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/TextView$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/TextView$SFEffectsAPI$AnimParam;IFLandroid/widget/TextView$SFEffectsAPI$InterpMode;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    iget-object v0, v0, Landroid/widget/TextView$MagnifierView;->builder:Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;

    invoke-virtual {v0}, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->build()Landroid/widget/TextView$SFEffectsAPI$Effect;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v1}, Landroid/widget/TextView$MagnifierView;->-get7(Landroid/widget/TextView$MagnifierView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v2}, Landroid/widget/TextView$MagnifierView;->-get19(Landroid/widget/TextView$MagnifierView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView$SFEffectsAPI$Effect;->start(Landroid/content/Context;Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v0, v4}, Landroid/widget/TextView$MagnifierView;->-set0(Landroid/widget/TextView$MagnifierView;Z)Z

    return-void
.end method
