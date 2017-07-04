.class Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "VoiceCallButtonCallPlusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallPagerAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PAGE_COUNT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$700()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$700()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 11

    const v10, 0x7f0a041d

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InCallPagerAdapterCallPlus instantiateItem position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    move-object v4, p1

    check-cast v4, Landroid/support/v4/view/ViewPager;

    invoke-static {v9}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$602(I)I

    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$800()I

    move-result v5

    if-ne p2, v5, :cond_3

    const-string v5, "InCallPagerAdapter instantiateItem position : PAGE_CALLPLUS"

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "InCallPagerAdapter instantiateItem isShowMultiWindowMode() position : PAGE_CALLPLUS"

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040171

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f100424

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-static {v5, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$900(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/view/View;)V

    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instantiateItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    invoke-virtual {v4, v3, v9}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-static {v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    return-object v3

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040170

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$200()I

    move-result v5

    if-ne p2, v5, :cond_5

    const-string v5, "InCallPagerAdapter instantiateItem position : PAGE_INCALL"

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "InCallPagerAdapter isInMultiWindowMode() position : PAGE_INCALL"

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04016d

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f100419

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-static {v5, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/view/View;)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04016f

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1100()I

    move-result v5

    if-ne p2, v5, :cond_0

    const-string v5, "InCallPagerAdapter instantiateItem position : PAGE_EXTRA"

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040174

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-static {v5, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1200(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/view/View;)V

    goto/16 :goto_1
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
