.class Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;
.super Landroid/os/AsyncTask;
.source "IconViewStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/view/IconViewStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InflateUrgentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/launcher3/common/base/item/IconInfo;",
        "Ljava/lang/Void;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/view/IconViewStub;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/common/view/IconViewStub;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;->this$0:Lcom/android/launcher3/common/view/IconViewStub;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/common/view/IconViewStub;Lcom/android/launcher3/common/view/IconViewStub$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;-><init>(Lcom/android/launcher3/common/view/IconViewStub;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    aget-object v0, p1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;->this$0:Lcom/android/launcher3/common/view/IconViewStub;

    invoke-static {v2, v0}, Lcom/android/launcher3/common/view/IconViewStub;->access$300(Lcom/android/launcher3/common/view/IconViewStub;Lcom/android/launcher3/common/base/item/IconInfo;)V

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;->this$0:Lcom/android/launcher3/common/view/IconViewStub;

    invoke-static {v2}, Lcom/android/launcher3/common/view/IconViewStub;->access$400(Lcom/android/launcher3/common/view/IconViewStub;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;->doInBackground([Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;->this$0:Lcom/android/launcher3/common/view/IconViewStub;

    invoke-static {v0}, Lcom/android/launcher3/common/view/IconViewStub;->access$100(Lcom/android/launcher3/common/view/IconViewStub;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask$1;-><init>(Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconViewStub$InflateUrgentTask;->onPostExecute(Landroid/view/View;)V

    return-void
.end method
