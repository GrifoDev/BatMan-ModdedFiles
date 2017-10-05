.class Lcom/android/launcher3/home/OverviewPanel$2;
.super Ljava/lang/Object;
.source "OverviewPanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/OverviewPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/OverviewPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/OverviewPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/OverviewPanel$2;->this$0:Lcom/android/launcher3/home/OverviewPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    new-instance v0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    iget-object v2, p0, Lcom/android/launcher3/home/OverviewPanel$2;->this$0:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v2}, Lcom/android/launcher3/home/OverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getCanExtract()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->startExtractLayout()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/OverviewPanel$2;->this$0:Lcom/android/launcher3/home/OverviewPanel;

    invoke-static {v2}, Lcom/android/launcher3/home/OverviewPanel;->access$000(Lcom/android/launcher3/home/OverviewPanel;)Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/home/ZeroPageController;->checkHiddenDirectory()V

    :cond_1
    const/4 v2, 0x1

    return v2
.end method
