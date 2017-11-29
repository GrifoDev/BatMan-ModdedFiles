.class Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;
.super Ljava/lang/Object;
.source "CheckLongKeyHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/event/CheckLongKeyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongKey"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/event/CheckLongKeyHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/event/CheckLongKeyHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;->this$0:Lcom/android/launcher3/util/event/CheckLongKeyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;->this$0:Lcom/android/launcher3/util/event/CheckLongKeyHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->access$000(Lcom/android/launcher3/util/event/CheckLongKeyHelper;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;->this$0:Lcom/android/launcher3/util/event/CheckLongKeyHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->access$000(Lcom/android/launcher3/util/event/CheckLongKeyHelper;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;->this$0:Lcom/android/launcher3/util/event/CheckLongKeyHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->access$000(Lcom/android/launcher3/util/event/CheckLongKeyHelper;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;->this$0:Lcom/android/launcher3/util/event/CheckLongKeyHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->access$100(Lcom/android/launcher3/util/event/CheckLongKeyHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;->this$0:Lcom/android/launcher3/util/event/CheckLongKeyHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->access$100(Lcom/android/launcher3/util/event/CheckLongKeyHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;->this$0:Lcom/android/launcher3/util/event/CheckLongKeyHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->access$200(Lcom/android/launcher3/util/event/CheckLongKeyHelper;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;->this$0:Lcom/android/launcher3/util/event/CheckLongKeyHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->access$300(Lcom/android/launcher3/util/event/CheckLongKeyHelper;)V

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongKeyHelper$CheckForLongKey;->this$0:Lcom/android/launcher3/util/event/CheckLongKeyHelper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher3/util/event/CheckLongKeyHelper;->access$202(Lcom/android/launcher3/util/event/CheckLongKeyHelper;Z)Z

    :cond_1
    return-void
.end method
