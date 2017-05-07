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
    .locals 2

    new-instance v0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel$2;->this$0:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v1}, Lcom/android/launcher3/home/OverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getCanExtract()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->startExtractLayout()V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
