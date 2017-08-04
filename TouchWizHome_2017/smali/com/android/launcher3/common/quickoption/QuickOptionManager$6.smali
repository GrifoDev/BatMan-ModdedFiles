.class Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;
.super Ljava/lang/Object;
.source "QuickOptionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionUninstall(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/common/base/item/IconInfo;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iput-object p3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->val$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/DualAppUtils;->isDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/DualAppUtils;->hasDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/DualAppUtils;->uninstallOrDisableDualApp(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$200(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "HSQO"

    :goto_1
    const-string v3, "Uninstall"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->val$componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$6;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v3, v3, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->startApplicationUninstallActivity(Landroid/content/ComponentName;ILcom/android/launcher3/common/compat/UserHandleCompat;Z)Z

    goto :goto_0

    :cond_2
    const-string v2, "APQO"

    goto :goto_1
.end method
