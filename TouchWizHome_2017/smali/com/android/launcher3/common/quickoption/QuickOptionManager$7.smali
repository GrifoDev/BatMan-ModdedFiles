.class Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;
.super Ljava/lang/Object;
.source "QuickOptionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionDisable(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
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

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iput-object p3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->val$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/DualAppUtils;->isDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/DualAppUtils;->hasDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/DualAppUtils;->uninstallOrDisableDualApp(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v11, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    if-eqz v13, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->val$packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    if-eqz v11, :cond_1

    if-nez v4, :cond_3

    invoke-virtual {v13, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v3, v3, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->createAndShow(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/FragmentManager;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$7;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$200(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v6, "HSQO"

    :goto_2
    const-string v7, "Disable"

    const-wide/16 v8, -0x1

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    :catch_0
    move-exception v12

    const-string v0, "QuickOptionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameNotFoundException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v6, "APQO"

    goto :goto_2
.end method
