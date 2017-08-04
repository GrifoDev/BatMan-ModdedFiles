.class Lcom/android/launcher3/common/view/PageIndicator$1;
.super Ljava/lang/Object;
.source "PageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorMarkerClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/view/PageIndicator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/view/PageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/widget/view/WidgetPagedView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->isPageMoving()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$100(Lcom/android/launcher3/common/view/PageIndicator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v3, v0}, Lcom/android/launcher3/common/view/PageIndicator;->access$200(Lcom/android/launcher3/common/view/PageIndicator;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v4}, Lcom/android/launcher3/common/view/PageIndicator;->access$300(Lcom/android/launcher3/common/view/PageIndicator;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v2}, Lcom/android/launcher3/common/view/PageIndicator;->isGrouping()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$100(Lcom/android/launcher3/common/view/PageIndicator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    invoke-virtual {v2}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->getMarkerType()Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->ZEROPAGE:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$100(Lcom/android/launcher3/common/view/PageIndicator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    invoke-virtual {v2}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->getMarkerType()Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    iget-object v3, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v3}, Lcom/android/launcher3/common/view/PageIndicator;->access$300(Lcom/android/launcher3/common/view/PageIndicator;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/android/launcher3/common/view/PageIndicator;->access$400(Lcom/android/launcher3/common/view/PageIndicator;I)V

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v3}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(I)V

    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageSALoggging(Z)V

    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$1;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-static {v2}, Lcom/android/launcher3/common/view/PageIndicator;->access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1
.end method
