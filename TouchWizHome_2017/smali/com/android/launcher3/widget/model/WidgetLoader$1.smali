.class Lcom/android/launcher3/widget/model/WidgetLoader$1;
.super Ljava/lang/Object;
.source "WidgetLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/model/WidgetLoader;->getSortedByPackage(Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/model/WidgetLoader;

.field final synthetic val$collector:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/model/WidgetLoader;Ljava/text/Collator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/model/WidgetLoader$1;->this$0:Lcom/android/launcher3/widget/model/WidgetLoader;

    iput-object p2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$1;->val$collector:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)I
    .locals 5

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v0, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mLabel:Ljava/lang/String;

    :goto_0
    iget-object v4, p2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v3, p2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mLabel:Ljava/lang/String;

    :goto_1
    instance-of v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v4, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v4, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v4, v4, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v0, v4, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    :cond_0
    instance-of v4, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v4, :cond_1

    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v4, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v4, v4, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v3, v4, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/widget/model/WidgetLoader$1;->val$collector:Ljava/text/Collator;

    invoke-virtual {v4, v0, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    check-cast p2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/model/WidgetLoader$1;->compare(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)I

    move-result v0

    return v0
.end method
