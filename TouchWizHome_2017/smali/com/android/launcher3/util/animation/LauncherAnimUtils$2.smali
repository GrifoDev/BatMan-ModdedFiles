.class final Lcom/android/launcher3/util/animation/LauncherAnimUtils$2;
.super Ljava/lang/Object;
.source "LauncherAnimUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/animation/LauncherAnimUtils;->startAnimationAfterNextDraw(Landroid/animation/Animator;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mStarted:Z

.field final synthetic val$animator:Landroid/animation/Animator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/animation/Animator;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/util/animation/LauncherAnimUtils$2;->val$animator:Landroid/animation/Animator;

    iput-object p2, p0, Lcom/android/launcher3/util/animation/LauncherAnimUtils$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/animation/LauncherAnimUtils$2;->mStarted:Z

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 6

    iget-boolean v1, p0, Lcom/android/launcher3/util/animation/LauncherAnimUtils$2;->mStarted:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/util/animation/LauncherAnimUtils$2;->mStarted:Z

    iget-object v1, p0, Lcom/android/launcher3/util/animation/LauncherAnimUtils$2;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/animation/LauncherAnimUtils$2;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    move-object v0, p0

    iget-object v1, p0, Lcom/android/launcher3/util/animation/LauncherAnimUtils$2;->val$view:Landroid/view/View;

    new-instance v2, Lcom/android/launcher3/util/animation/LauncherAnimUtils$2$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils$2$1;-><init>(Lcom/android/launcher3/util/animation/LauncherAnimUtils$2;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
