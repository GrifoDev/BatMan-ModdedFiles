.class Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask$1;
.super Ljava/lang/Object;
.source "IconViewStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;->onPostExecute(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask$1;->this$1:Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;

    iput-object p2, p0, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask$1;->this$1:Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;

    iget-object v0, v0, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;->this$0:Lcom/android/launcher3/common/view/IconViewStub;

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask$1;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/launcher3/common/view/IconViewStub;->access$000(Lcom/android/launcher3/common/view/IconViewStub;Landroid/view/View;)V

    return-void
.end method
