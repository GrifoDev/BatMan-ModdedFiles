.class Lcom/android/launcher3/executor/AbstractStateHandler$1;
.super Ljava/lang/Object;
.source "AbstractStateHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/executor/AbstractStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/executor/AbstractStateHandler;

.field final synthetic val$callback:Lcom/android/launcher3/executor/StateExecutionCallback;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/AbstractStateHandler;Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/executor/AbstractStateHandler$1;->this$0:Lcom/android/launcher3/executor/AbstractStateHandler;

    iput-object p2, p0, Lcom/android/launcher3/executor/AbstractStateHandler$1;->val$callback:Lcom/android/launcher3/executor/StateExecutionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/executor/AbstractStateHandler$1;->val$callback:Lcom/android/launcher3/executor/StateExecutionCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/executor/StateExecutionCallback;->executionCompleted(Z)V

    return-void
.end method
