.class Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;
.super Ljava/lang/Object;
.source "WidgetSearchbar.java"

# interfaces
.implements Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/view/WidgetSearchbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;Lcom/android/launcher3/widget/view/WidgetSearchbar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;-><init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V

    return-void
.end method


# virtual methods
.method public filterWidgets(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v10, -0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-static {v7}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->access$100(Lcom/android/launcher3/widget/view/WidgetSearchbar;)Landroid/widget/SearchView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-static {v7}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->access$500(Lcom/android/launcher3/widget/view/WidgetSearchbar;)Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-static {v7}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->access$500(Lcom/android/launcher3/widget/view/WidgetSearchbar;)Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;->setSearchString(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/util/List;

    const/4 v0, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    iget-object v9, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v9}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v10, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_1

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v5
.end method
