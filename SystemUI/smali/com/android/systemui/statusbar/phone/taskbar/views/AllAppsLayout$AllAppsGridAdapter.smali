.class Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "AllAppsLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllAppsGridAdapter"
.end annotation


# instance fields
.field isCheckBoxVisible:Z

.field itemDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;",
            ">;"
        }
    .end annotation
.end field

.field search:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->isCheckBoxVisible:Z

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->setItems(Ljava/util/List;)V

    return-void
.end method

.method private displayHighlightedName(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, -0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->search:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->search:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-static {v5, p2, v6}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->search:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ltz v3, :cond_0

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01eb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v6, v3, v1

    invoke-interface {v0, v5, v3, v6, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->search:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public checkAll()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->itemDataList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCheckedItemCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->itemDataList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getCheckedItemList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->itemDataList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->itemDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->itemDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04001c

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V

    const v2, 0x7f1300d7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;)Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    const v2, 0x7f1300a5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-set1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->applyBaseItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setTag(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setShadowLayerForAllApps()V

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->showBadge()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->search:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->displayHighlightedName(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->isCheckBoxVisible:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->setContextClickable(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get3(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Landroid/view/View$OnContextClickListener;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resetCheckState()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->itemDataList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCheckBoxVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->isCheckBoxVisible:Z

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    if-eqz p1, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->itemDataList:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get4(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get4(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v7, v8, :cond_4

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->itemDataList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->itemDataList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->itemDataList:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-direct {v8, v9, v4, v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Z)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->itemDataList:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v8

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;)Z

    move-result v7

    invoke-static {v2, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;Z)Z

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->itemDataList:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->itemDataList:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-direct {v8, v9, v4, v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Z)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->search:Ljava/lang/String;

    return-void
.end method
