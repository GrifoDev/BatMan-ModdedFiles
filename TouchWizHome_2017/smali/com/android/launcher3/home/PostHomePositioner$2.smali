.class Lcom/android/launcher3/home/PostHomePositioner$2;
.super Ljava/lang/Object;
.source "PostHomePositioner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/PostHomePositioner;->addItem(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/PostHomePositioner;

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$itemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/PostHomePositioner;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/PostHomePositioner$2;->this$0:Lcom/android/launcher3/home/PostHomePositioner;

    iput-object p2, p0, Lcom/android/launcher3/home/PostHomePositioner$2;->val$cn:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/launcher3/home/PostHomePositioner$2;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object p4, p0, Lcom/android/launcher3/home/PostHomePositioner$2;->val$itemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner$2;->this$0:Lcom/android/launcher3/home/PostHomePositioner;

    iget-object v1, p0, Lcom/android/launcher3/home/PostHomePositioner$2;->val$cn:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/home/PostHomePositioner$2;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v3, p0, Lcom/android/launcher3/home/PostHomePositioner$2;->val$itemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/home/PostHomePositioner;->access$300(Lcom/android/launcher3/home/PostHomePositioner;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)V

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner$2;->this$0:Lcom/android/launcher3/home/PostHomePositioner;

    invoke-static {v0}, Lcom/android/launcher3/home/PostHomePositioner;->access$400(Lcom/android/launcher3/home/PostHomePositioner;)Lcom/android/launcher3/common/customer/PostPositionProvider;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/home/PostHomePositioner$2;->val$itemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    invoke-virtual {v2}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/customer/PostPositionProvider;->updateItemRecordResult(ZLjava/lang/String;)V

    return-void
.end method
