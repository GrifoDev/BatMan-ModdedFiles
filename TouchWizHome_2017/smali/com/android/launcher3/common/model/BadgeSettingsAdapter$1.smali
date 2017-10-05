.class Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;
.super Ljava/lang/Object;
.source "BadgeSettingsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->onBindViewHolder(Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

.field final synthetic val$holder:Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/BadgeSettingsAdapter;Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    iput-object p2, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;->val$holder:Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;

    iput p3, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;->val$holder:Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;

    iget-object v1, v1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;->val$holder:Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;

    iget-object v1, v1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mItem:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->setHidden(Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;->val$holder:Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;

    iget-object v2, v1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v1, "BadgeSettingsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;->val$holder:Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mItem:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    invoke-virtual {v3}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-static {v1}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->access$000(Lcom/android/launcher3/common/model/BadgeSettingsAdapter;)Lcom/android/launcher3/common/model/BadgeSettingsAdapter$OnChangeListener;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;->val$position:I

    invoke-interface {v1, p1, v2}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$OnChangeListener;->onChange(Landroid/view/View;I)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-static {v2}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->access$100(Lcom/android/launcher3/common/model/BadgeSettingsAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-static {v3}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->access$100(Lcom/android/launcher3/common/model/BadgeSettingsAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090147

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;->val$holder:Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;

    iget-object v4, v4, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mItem:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
