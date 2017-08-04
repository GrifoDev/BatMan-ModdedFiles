.class Lcom/android/launcher3/util/logging/SALogging$2;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$2;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const v10, 0x7f080148

    const/4 v9, 0x2

    const/4 v8, 0x1

    const-string v5, ""

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v4

    if-ne v4, v8, :cond_5

    const v6, 0x7f08019a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->access$200(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v5, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v6, v2, v0, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v6, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v6, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v6, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :cond_4
    const v6, 0x7f080149

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-ne v4, v9, :cond_6

    const v6, 0x7f08018c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->access$200(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v6, 0x5

    if-ne v4, v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->access$200(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$2;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v3

    if-ne v3, v8, :cond_8

    const v6, 0x7f080192

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    :goto_1
    const v6, 0x7f080116

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    if-ne v3, v9, :cond_7

    const v6, 0x7f080186

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
