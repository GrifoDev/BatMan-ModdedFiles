.class Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;
.super Ljava/lang/Object;
.source "AppsTransitionAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getTidyUpAnimation(ZLjava/util/HashMap;ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

.field final synthetic val$enter:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;->val$enter:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$6;->val$enter:Z

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$500(Lcom/android/launcher3/allapps/AppsTransitionAnimation;IZ)V

    return-void
.end method
