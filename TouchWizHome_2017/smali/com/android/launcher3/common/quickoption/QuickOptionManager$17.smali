.class Lcom/android/launcher3/common/quickoption/QuickOptionManager$17;
.super Ljava/lang/Object;
.source "QuickOptionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionMoveFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field final synthetic val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$17;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$17;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$17;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$300(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$17;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->moveItemFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$17;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$200(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "HSQO"

    :goto_0
    const-string v3, "Move from folder"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void

    :cond_0
    const-string v2, "APQO"

    goto :goto_0
.end method
