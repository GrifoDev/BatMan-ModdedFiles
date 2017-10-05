.class Lcom/android/launcher3/home/WorkspaceCellLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WorkspaceCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceCellLayout;->endPageFullVI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceCellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-static {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->access$000(Lcom/android/launcher3/home/WorkspaceCellLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-static {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->access$100(Lcom/android/launcher3/home/WorkspaceCellLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-static {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->access$100(Lcom/android/launcher3/home/WorkspaceCellLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-static {v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->access$100(Lcom/android/launcher3/home/WorkspaceCellLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-static {v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->access$100(Lcom/android/launcher3/home/WorkspaceCellLayout;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setPadding(IIII)V

    return-void
.end method
