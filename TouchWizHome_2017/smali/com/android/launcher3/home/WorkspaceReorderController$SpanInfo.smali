.class Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
.super Ljava/lang/Object;
.source "WorkspaceReorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/WorkspaceReorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpanInfo"
.end annotation


# instance fields
.field minSpanX:I

.field minSpanY:I

.field spanX:I

.field spanY:I

.field final supportSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IIIILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList",
            "<[I>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    iput p2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    iput p3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    iput p4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    iput-object p5, p0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    return-void
.end method

.method static getSpanInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .locals 9

    instance-of v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v7, 0x1

    :goto_0
    const/4 v5, 0x0

    iget v1, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v2, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-eqz v7, :cond_2

    const/4 v8, 0x0

    instance-of v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v8, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    :cond_1
    :goto_1
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v1

    invoke-virtual {v8}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v2

    invoke-virtual {v8}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSupportedSpans()Ljava/util/ArrayList;

    move-result-object v5

    :cond_2
    :goto_2
    new-instance v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    iget v3, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v4, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;-><init>(IIIILjava/util/ArrayList;)V

    return-object v0

    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v6, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    goto :goto_1

    :cond_5
    const-string v0, "WSReorderController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widgetInfo is null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
