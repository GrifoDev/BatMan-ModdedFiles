.class Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans$1;
.super Ljava/lang/Object;
.source "LauncherAppWidgetProviderInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->parseSupportSpans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans$1;->this$1:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans$1;->compare([I[I)I

    move-result v0

    return v0
.end method

.method public compare([I[I)I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget v0, p1, v3

    aget v1, p1, v4

    mul-int/2addr v0, v1

    aget v1, p2, v3

    aget v2, p2, v4

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    aget v0, p1, v3

    aget v1, p2, v3

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    aget v0, p1, v3

    aget v1, p1, v4

    mul-int/2addr v0, v1

    aget v1, p2, v3

    aget v2, p2, v4

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method
