.class Lcom/android/launcher3/home/HomeProxyCallbacksImpl$2;
.super Ljava/lang/Object;
.source "HomeProxyCallbacksImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->addHomeWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeProxyCallbacksImpl;

.field final synthetic val$moveTo:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeProxyCallbacksImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl$2;->this$0:Lcom/android/launcher3/home/HomeProxyCallbacksImpl;

    iput p2, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl$2;->val$moveTo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl$2;->this$0:Lcom/android/launcher3/home/HomeProxyCallbacksImpl;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->access$000(Lcom/android/launcher3/home/HomeProxyCallbacksImpl;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl$2;->this$0:Lcom/android/launcher3/home/HomeProxyCallbacksImpl;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;->access$000(Lcom/android/launcher3/home/HomeProxyCallbacksImpl;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/home/HomeProxyCallbacksImpl$2;->val$moveTo:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->moveToScreen(IZ)V

    :cond_0
    return-void
.end method
