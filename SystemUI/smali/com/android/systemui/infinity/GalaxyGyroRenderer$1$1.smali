.class Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$1;
.super Ljava/lang/Object;
.source "GalaxyGyroRenderer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$1;->this$1:Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$1;->this$1:Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iput-boolean v1, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$1;->this$1:Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iput-boolean v1, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isPendingAnimation:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$1;->this$1:Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iput-boolean v1, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$1;->this$1:Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iput-boolean v1, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isPendingAnimation:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1$1;->this$1:Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isAnimating:Z

    return-void
.end method
