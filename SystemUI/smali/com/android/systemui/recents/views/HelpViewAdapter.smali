.class Lcom/android/systemui/recents/views/HelpViewAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "HelpViewPager.java"


# instance fields
.field mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

.field mInflater:Landroid/view/LayoutInflater;

.field mLastDeviceOrientation:I

.field mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/AbstractHelpPopup;I)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mWm:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 6

    move-object v1, p3

    check-cast v1, Landroid/view/View;

    const v2, 0x7f0a0204

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-string/jumbo v1, "HelpViewAdapter"

    const-string/jumbo v2, "destroyItem(%d)\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 23

    const-string/jumbo v2, "HelpViewAdapter"

    const-string/jumbo v3, "instantiateItem(%d)\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v4, v22

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    const v2, 0x7f0d0169

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v2, 0x7f0a01fd

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070515

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    :goto_0
    const-string/jumbo v2, "HelpAdapter"

    const-string/jumbo v3, "instantiateItem() padding=%d, mConfiguration.orientation=%d\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v4, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v4, v22

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v11, v0, v2, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->setAccessibilityLiveRegion(I)V

    const v2, 0x7f0a019b

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v2, 0x7f0a0204

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    const v2, 0x7f0a0208

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    const v2, 0x7f0a0202

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/misc/HelpHubTextView;

    const v2, 0x7f0a0207

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->isValidContent()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070514

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    iget v3, v8, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->imageResId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v14, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    iget v3, v8, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v15, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070514

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mWm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    mul-int/lit8 v3, v18, 0x2

    sub-int/2addr v2, v3

    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_1
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070513

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v10, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    iput v2, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_2
    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, v8, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->subtitleResId:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v8, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->helpHubImageResId:[I

    if-eqz v2, :cond_3

    iget-object v2, v8, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->helpHubImageResId:[I

    invoke-virtual {v13, v2}, Lcom/android/systemui/recents/misc/HelpHubTextView;->setIconList([I)V

    :cond_3
    iget v2, v8, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->helpHubTextResId:I

    invoke-virtual {v13, v2}, Lcom/android/systemui/recents/misc/HelpHubTextView;->changeText(I)V

    iget v2, v8, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->buttonTitleId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "com.android.settings"

    invoke-static {v2}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->isInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget v2, v8, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->buttonTitleId:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lcom/android/systemui/recents/views/HelpViewAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/HelpViewAdapter$1;-><init>(Lcom/android/systemui/recents/views/HelpViewAdapter;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    iget v3, v8, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/android/systemui/recents/views/HelpViewAdapter$2;

    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/recents/views/HelpViewAdapter$2;-><init>(Lcom/android/systemui/recents/views/HelpViewAdapter;ILandroid/view/View;Landroid/view/View;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v7, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4
    return-object v6

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mWm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-int/lit8 v3, v18, 0x2

    sub-int/2addr v2, v3

    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto/16 :goto_2

    :cond_7
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
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

.method public onConfigurationChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/HelpViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setContents(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/HelpViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
