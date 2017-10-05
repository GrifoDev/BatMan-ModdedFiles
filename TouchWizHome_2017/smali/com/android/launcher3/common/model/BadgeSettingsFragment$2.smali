.class Lcom/android/launcher3/common/model/BadgeSettingsFragment$2;
.super Ljava/lang/Object;
.source "BadgeSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/BadgeSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$2;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$2;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-static {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$100(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$2;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-static {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$100(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Landroid/widget/Switch;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$2;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-static {v1, v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$200(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Z)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$2;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-static {v2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$300(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$2;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-static {v2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$300(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x1

    :goto_1
    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method
