.class Lcom/android/launcher3/home/Workspace$13;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace;->initDefaultHomeIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$13;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$13;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$13;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/home/Workspace;->access$1200(Lcom/android/launcher3/home/Workspace;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$13;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v1}, Lcom/android/launcher3/home/Workspace;->access$1300(Lcom/android/launcher3/home/Workspace;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$13;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/home/Workspace;->access$600(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->setHomeDefaultIconClick(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$13;->this$0:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$13;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v1}, Lcom/android/launcher3/home/Workspace;->access$1200(Lcom/android/launcher3/home/Workspace;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace$13;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v2}, Lcom/android/launcher3/home/Workspace;->access$1400(Lcom/android/launcher3/home/Workspace;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->updateDefaultHome(II)V

    :cond_1
    return-void
.end method
