.class Lcom/android/systemui/stackdivider/WindowManagerProxy$13;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/WindowManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$13;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$13;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get7(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->alignTasksToStackBounds()V

    return-void
.end method
