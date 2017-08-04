.class Lcom/android/launcher3/home/EdgeLight$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EdgeLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/EdgeLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/EdgeLight;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/EdgeLight;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/EdgeLight$1;->this$0:Lcom/android/launcher3/home/EdgeLight;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight$1;->this$0:Lcom/android/launcher3/home/EdgeLight;

    invoke-static {v0}, Lcom/android/launcher3/home/EdgeLight;->access$300(Lcom/android/launcher3/home/EdgeLight;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight$1;->this$0:Lcom/android/launcher3/home/EdgeLight;

    invoke-static {v0}, Lcom/android/launcher3/home/EdgeLight;->access$300(Lcom/android/launcher3/home/EdgeLight;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
