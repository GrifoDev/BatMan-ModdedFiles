.class Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GuideArrowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator$1;->this$0:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator$1;->this$0:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->hide()V

    return-void
.end method
