.class Lcom/android/launcher3/common/quickoption/QuickOptionManager$9;
.super Ljava/lang/Object;
.source "QuickOptionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionAppInfo(Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$9;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$9;->val$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$9;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$9;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$9;->val$componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$9;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$9;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$200(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HSQO"

    :goto_0
    const-string v3, "App info"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void

    :cond_0
    const-string v2, "APQO"

    goto :goto_0
.end method
