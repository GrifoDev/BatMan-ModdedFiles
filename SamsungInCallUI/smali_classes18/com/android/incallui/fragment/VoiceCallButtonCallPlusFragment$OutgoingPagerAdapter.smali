.class Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "VoiceCallButtonCallPlusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutgoingPagerAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

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
    .locals 3

    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PAGE_COUNT_OUT : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1500()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1500()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 12

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutgoingPagerAdapter instantiateItem  position : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v4, 0x0

    move-object v6, p1

    check-cast v6, Landroid/support/v4/view/ViewPager;

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$602(I)I

    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$800()I

    move-result v7

    if-ne p2, v7, :cond_3

    const-string v7, "OutgoingPagerAdapter instantiateItem position : PAGE_CALLPLUS"

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "ims_rcs"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040173

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :goto_0
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-static {v7, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$900(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/view/View;)V

    :cond_0
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "instantiateItem: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    :cond_1
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-static {v7}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    return-object v4

    :cond_2
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040172

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$200()I

    move-result v7

    if-ne p2, v7, :cond_0

    const-string v7, "OutgoingPagerAdapter instantiateItem position : PAGE_INCALL"

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "ims_rcs"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "OutgoingPagerAdapter isInMultiWindowMode() position : PAGE_INCALL"

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04016d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a041d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v9}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0419

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateLayoutParamsMW(Landroid/view/View;II)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->getDeviceDefaultHeight()I

    move-result v7

    int-to-float v2, v7

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->getApplicationHeight()I

    move-result v7

    int-to-float v1, v7

    div-float v5, v1, v2

    float-to-double v8, v5

    const-wide v10, 0x3fd6666666666666L    # 0.35

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a041e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a041a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v0, v7

    :goto_2
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v7, v4, v3, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateLayoutParamsMW(Landroid/view/View;II)V

    :goto_3
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-static {v7, v4}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/view/View;)V

    goto/16 :goto_1

    :cond_4
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a041d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0419

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v0, v7

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$OutgoingPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04016f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

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
