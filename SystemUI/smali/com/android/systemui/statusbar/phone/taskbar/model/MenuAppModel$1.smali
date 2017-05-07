.class final Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$1;
.super Ljava/lang/Object;
.source "MenuAppModel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer",
        "<",
        "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)I
    .locals 6

    const/4 v3, -0x1

    const/4 v0, 0x0

    iget v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-eq v1, v3, :cond_4

    iget v1, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-eq v1, v3, :cond_4

    iget v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    iget v2, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->-wrap0(II)I

    move-result v0

    if-nez v0, :cond_0

    iget v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCell:I

    iget v2, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCell:I

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->-wrap0(II)I

    move-result v0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->-get0()Ljava/text/Collator;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    :goto_1
    if-nez v0, :cond_3

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_a

    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    iget-wide v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    iget-wide v4, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->-wrap1(JJ)I

    move-result v0

    :cond_3
    return v0

    :cond_4
    iget v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    iget v2, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-ne v1, v2, :cond_5

    iget-wide v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCreateTime:J

    iget-wide v4, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCreateTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->-wrap1(JJ)I

    move-result v0

    goto :goto_0

    :cond_5
    iget v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-ne v1, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, -0x1

    goto :goto_0

    :cond_7
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_8
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_9

    const/4 v0, -0x1

    goto :goto_1

    :cond_9
    const/4 v0, 0x1

    goto :goto_1

    :cond_a
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eq v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_b

    const/4 v0, -0x1

    goto :goto_2

    :cond_b
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    check-cast p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$1;->compare(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)I

    move-result v0

    return v0
.end method

.method public normalize(Ljava/util/List;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;IZ)V"
        }
    .end annotation

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mSecretItem:Z

    if-nez v6, :cond_0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-eq v3, v2, :cond_3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    if-eqz p3, :cond_1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    :cond_1
    if-eqz v4, :cond_2

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    :cond_2
    move v2, v3

    :cond_3
    if-ne v3, v5, :cond_4

    iget v6, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCell:I

    if-eq v6, v4, :cond_5

    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mDirty:Z

    iput v5, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    iput v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCell:I

    :cond_5
    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_0

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "MenuAppModel.MENU_CUSTOM_NORMALIZER"

    return-object v0
.end method
