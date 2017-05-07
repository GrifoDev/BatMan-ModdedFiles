.class Lcom/android/launcher3/widget/controller/WidgetState$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WidgetState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/controller/WidgetState;->slideOut(Landroid/view/View;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/controller/WidgetState;

.field final synthetic val$titleBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetState$2;->this$0:Lcom/android/launcher3/widget/controller/WidgetState;

    iput-object p2, p0, Lcom/android/launcher3/widget/controller/WidgetState$2;->val$titleBar:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetState$2;->val$titleBar:Landroid/view/View;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher3/widget/controller/WidgetState;->sTitleLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetState$2;->val$titleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
