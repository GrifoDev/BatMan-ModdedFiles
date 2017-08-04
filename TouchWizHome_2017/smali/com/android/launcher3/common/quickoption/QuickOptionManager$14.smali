.class Lcom/android/launcher3/common/quickoption/QuickOptionManager$14;
.super Ljava/lang/Object;
.source "QuickOptionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionAddToPersonal(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
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
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$14;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$14;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$14;->val$componentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$14;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$14;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$14;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$14;->val$componentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$14;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v3, v3, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$14;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v4, v4, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Utilities;->addToPersonal(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$14;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$200(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "HSQO"

    :goto_0
    const-string v3, "Add to personal"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void

    :cond_0
    const-string v2, "APQO"

    goto :goto_0
.end method
