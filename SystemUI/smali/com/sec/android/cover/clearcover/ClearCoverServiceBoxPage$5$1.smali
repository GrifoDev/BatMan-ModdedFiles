.class Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ClearCoverServiceBoxPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$5;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$5;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$5;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$5$1;->this$1:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$5$1;->this$1:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$5;

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$5;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-set1(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)Z

    return-void
.end method
