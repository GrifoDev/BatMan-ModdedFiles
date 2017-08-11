.class Landroid/widget/TextView$SFEffectsAPI$Animation;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$SFEffectsAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Animation"
.end annotation


# instance fields
.field public animParam:Landroid/widget/TextView$SFEffectsAPI$AnimParam;

.field public frame:I

.field public mode:Landroid/widget/TextView$SFEffectsAPI$InterpMode;

.field public value:F


# direct methods
.method public constructor <init>(Landroid/widget/TextView$SFEffectsAPI$AnimParam;IFLandroid/widget/TextView$SFEffectsAPI$InterpMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TextView$SFEffectsAPI$Animation;->animParam:Landroid/widget/TextView$SFEffectsAPI$AnimParam;

    iput p2, p0, Landroid/widget/TextView$SFEffectsAPI$Animation;->frame:I

    iput p3, p0, Landroid/widget/TextView$SFEffectsAPI$Animation;->value:F

    iput-object p4, p0, Landroid/widget/TextView$SFEffectsAPI$Animation;->mode:Landroid/widget/TextView$SFEffectsAPI$InterpMode;

    return-void
.end method
