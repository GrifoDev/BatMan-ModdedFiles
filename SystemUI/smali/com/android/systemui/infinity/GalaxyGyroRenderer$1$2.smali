.class Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$2;
.super Ljava/lang/Object;
.source "GalaxyGyroRenderer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$2;->this$1:Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$2;->this$1:Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v1, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x1

    aput v0, v1, v2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$2;->this$1:Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$2;->this$1:Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;

    iget-object v1, v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v1, v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroData:[F

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->onChangeGyroData([F)V

    return-void
.end method
