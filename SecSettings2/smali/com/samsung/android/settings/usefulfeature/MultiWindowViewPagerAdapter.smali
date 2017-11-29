.class public Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MultiWindowViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mAnimationView:Landroid/widget/ImageView;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->setDescriptions()V

    return-void
.end method

.method private setDescriptions()V
    .locals 9

    const v8, 0x7f0b0ab8

    const v7, 0x7f020412

    const v6, 0x7f020411

    const v5, 0x7f020410

    const v4, 0x7f0b0ab7

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.multiwindow.snap_view"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "recents_key"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    iput v7, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.software.freeform_window_management"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz v1, :cond_2

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0b0ab9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput v5, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "split_screen"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    iput v7, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0b0ab9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0b0aba

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    iput v5, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;-><init>()V

    const-string/jumbo v2, "pop_up_gesture"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x7f02040d

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0b0ab3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    if-eqz v1, :cond_8

    const v2, 0x7f02040a

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    goto :goto_2

    :cond_8
    const v2, 0x7f020407

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    goto :goto_2
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4

    const/4 v3, -0x1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, v0

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0401d2

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v4, 0x7f1105d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f1105d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f1105d7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int p2, v4, p2

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->title:I

    if-nez v4, :cond_2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_2
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v3, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    return-object v3

    :cond_2
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->title:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->key:Ljava/lang/String;

    const-string/jumbo v5, "pop_up_gesture"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
