.class Lcom/android/launcher3/home/PostHomePositioner$1;
.super Ljava/lang/Object;
.source "PostHomePositioner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/PostHomePositioner;->addItem(Lcom/android/launcher3/common/customer/ItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/PostHomePositioner;

.field final synthetic val$info:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

.field final synthetic val$itemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/PostHomePositioner;Lcom/android/launcher3/common/customer/ItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/PostHomePositioner$1;->this$0:Lcom/android/launcher3/home/PostHomePositioner;

    iput-object p2, p0, Lcom/android/launcher3/home/PostHomePositioner$1;->val$itemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    iput-object p3, p0, Lcom/android/launcher3/home/PostHomePositioner$1;->val$info:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    iput-object p4, p0, Lcom/android/launcher3/home/PostHomePositioner$1;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner$1;->this$0:Lcom/android/launcher3/home/PostHomePositioner;

    iget-object v1, p0, Lcom/android/launcher3/home/PostHomePositioner$1;->val$itemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    invoke-static {v0, v1}, Lcom/android/launcher3/home/PostHomePositioner;->access$000(Lcom/android/launcher3/home/PostHomePositioner;Lcom/android/launcher3/common/customer/ItemRecord;)V

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner$1;->this$0:Lcom/android/launcher3/home/PostHomePositioner;

    iget-object v1, p0, Lcom/android/launcher3/home/PostHomePositioner$1;->val$info:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    iget-object v2, p0, Lcom/android/launcher3/home/PostHomePositioner$1;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v3, p0, Lcom/android/launcher3/home/PostHomePositioner$1;->val$itemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/home/PostHomePositioner;->access$100(Lcom/android/launcher3/home/PostHomePositioner;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner$1;->this$0:Lcom/android/launcher3/home/PostHomePositioner;

    invoke-static {v0}, Lcom/android/launcher3/home/PostHomePositioner;->access$200(Lcom/android/launcher3/home/PostHomePositioner;)Lcom/android/launcher3/common/customer/PostPositionProvider;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/home/PostHomePositioner$1;->val$itemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    invoke-virtual {v2}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/customer/PostPositionProvider;->updateItemRecordResult(ZLjava/lang/String;)V

    const-string v0, "PostHomePositioner"

    const-string v1, "addItem() result failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
