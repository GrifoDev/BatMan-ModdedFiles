.class Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;
.super Ljava/lang/Object;
.source "ClearCoverServiceBoxPage.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-virtual {v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v2

    if-nez v2, :cond_0

    cmpl-float v2, p2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get9(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->isScrolledByUser()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap5(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    :cond_0
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->mScrollState:I

    if-ne v2, v5, :cond_3

    cmpl-float v2, p2, v3

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get8(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->getCount()I

    move-result v2

    if-le v2, v5, :cond_3

    if-nez p1, :cond_2

    iput v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->mScrollState:I

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get9(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v3}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get8(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setCurrentItem(IZ)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2, p1, p2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap8(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;IF)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get8(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    iput v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->mScrollState:I

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get9(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->mScrollState:I

    if-nez v2, :cond_1

    cmpl-float v2, p2, v3

    if-eqz v2, :cond_1

    iput v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->mScrollState:I

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap0(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lockscreen_aod_servicebox_page"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPageSelected() pageKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v1, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lockscreen_aod_servicebox_page"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
