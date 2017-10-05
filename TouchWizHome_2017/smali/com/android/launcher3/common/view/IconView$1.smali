.class Lcom/android/launcher3/common/view/IconView$1;
.super Ljava/lang/Object;
.source "IconView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/view/IconView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/view/IconView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/view/IconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/view/IconView$1;->this$0:Lcom/android/launcher3/common/view/IconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView$1;->this$0:Lcom/android/launcher3/common/view/IconView;

    iget-object v2, v2, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v1

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->canSelectItem()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    :goto_0
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView$1;->this$0:Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView$1;->this$0:Lcom/android/launcher3/common/view/IconView;

    iget-object v2, v2, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/common/view/IconView$1;->this$0:Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/common/stage/StageManager;->onCheckedChanged(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView$1;->this$0:Lcom/android/launcher3/common/view/IconView;

    invoke-static {v2, v3}, Lcom/android/launcher3/common/view/IconView;->access$000(Lcom/android/launcher3/common/view/IconView;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
