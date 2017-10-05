.class Lcom/android/launcher3/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->updateShortcutInfo(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/common/base/item/IconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$fullDetail:Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

.field final synthetic val$info:Lcom/android/launcher3/common/base/item/IconInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$4;->val$info:Lcom/android/launcher3/common/base/item/IconInfo;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$4;->val$fullDetail:Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$4;->val$info:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$4;->val$fullDetail:Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/base/item/IconInfo;->updateFromDeepShortcutInfo(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$4;->val$info:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$4;->val$fullDetail:Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/home/HomeLoader;->bindUpdatedDeepShortcuts(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    return-void
.end method
