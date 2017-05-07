.class Lcom/android/launcher3/folder/controller/FolderController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/controller/FolderController;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/controller/FolderController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/controller/FolderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderController$2;->this$0:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController$2;->this$0:Lcom/android/launcher3/folder/controller/FolderController;

    # invokes: Lcom/android/launcher3/folder/controller/FolderController;->setupFolderBgLayout()Z
    invoke-static {v0}, Lcom/android/launcher3/folder/controller/FolderController;->access$100(Lcom/android/launcher3/folder/controller/FolderController;)Z

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController$2;->this$0:Lcom/android/launcher3/folder/controller/FolderController;

    # getter for: Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;
    invoke-static {v0}, Lcom/android/launcher3/folder/controller/FolderController;->access$300(Lcom/android/launcher3/folder/controller/FolderController;)Lcom/android/launcher3/folder/view/FolderBgView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController$2;->this$0:Lcom/android/launcher3/folder/controller/FolderController;

    # getter for: Lcom/android/launcher3/folder/controller/FolderController;->mStateTransitionDuration:I
    invoke-static {v1}, Lcom/android/launcher3/folder/controller/FolderController;->access$200(Lcom/android/launcher3/folder/controller/FolderController;)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/launcher3/folder/view/FolderBgView;->showHelpForEdit(ZIZ)V

    return-void
.end method
