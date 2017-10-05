.class Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;
.super Ljava/lang/Object;
.source "DeepShortcutsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->populateAndShow(Lcom/android/launcher3/common/view/IconView;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

.field final synthetic val$activity:Landroid/content/ComponentName;

.field final synthetic val$ids:Ljava/util/List;

.field final synthetic val$uiHandler:Landroid/os/Handler;

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;->this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;->val$activity:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;->val$ids:Ljava/util/List;

    iput-object p4, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object p5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;->val$uiHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->access$000()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;->val$activity:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;->val$ids:Ljava/util/List;

    iget-object v6, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->queryForShortcutsContainer(Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutFilter;->sortAndFilterShortcuts(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;->this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    invoke-static {v3}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->access$100(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;->val$uiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UpdateShortcutChild;

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;->this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    new-instance v6, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;

    iget-object v7, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$1;->this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    invoke-static {v7}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->access$200(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;)Lcom/android/launcher3/Launcher;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;-><init>(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    invoke-direct {v4, v5, v0, v6}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UpdateShortcutChild;-><init>(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;ILcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$UnbadgedShortcutInfo;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
