.class Lcom/android/launcher3/home/HomeBindController$11;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeBindController;->finishBindingItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeBindController;

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$11;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iput-wide p2, p0, Lcom/android/launcher3/home/HomeBindController$11;->val$screenId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController$11;->this$0:Lcom/android/launcher3/home/HomeBindController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeBindController;->access$000(Lcom/android/launcher3/home/HomeBindController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/home/HomeBindController$11;->val$screenId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/home/Workspace;->snapToScreenId(J)V

    return-void
.end method
