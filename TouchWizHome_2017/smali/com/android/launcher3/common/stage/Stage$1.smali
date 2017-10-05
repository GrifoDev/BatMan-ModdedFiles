.class Lcom/android/launcher3/common/stage/Stage$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/stage/Stage;->updateSystemUIForState(ILandroid/animation/AnimatorSet;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/stage/Stage;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/stage/Stage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/stage/Stage$1;->this$0:Lcom/android/launcher3/common/stage/Stage;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage$1;->this$0:Lcom/android/launcher3/common/stage/Stage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/common/stage/Stage;->access$002(Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage$1;->this$0:Lcom/android/launcher3/common/stage/Stage;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/android/launcher3/common/stage/Stage;->access$102(Lcom/android/launcher3/common/stage/Stage;F)F

    return-void
.end method
