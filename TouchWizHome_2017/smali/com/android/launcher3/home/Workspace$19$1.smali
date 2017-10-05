.class Lcom/android/launcher3/home/Workspace$19$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace$19;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/Workspace$19;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/Workspace$19;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$19$1;->this$1:Lcom/android/launcher3/home/Workspace$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$19$1;->this$1:Lcom/android/launcher3/home/Workspace$19;

    iget-object v0, v0, Lcom/android/launcher3/home/Workspace$19;->this$0:Lcom/android/launcher3/home/Workspace;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->access$1100(Lcom/android/launcher3/home/Workspace;ZZ)V

    return-void
.end method
