.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;
.super Landroid/os/Handler;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ZVV"

    sget-object v6, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget-boolean v5, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v5, :cond_3

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050151

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v0

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8, v8, v8, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget-boolean v5, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v5, :cond_6

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050151

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v0

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8, v8, v8, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    :cond_6
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    :cond_7
    sget-boolean v5, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_NO_SIM_INFO_AT_PLMN:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/keyguard/CarrierText;->sPlmnOfNetworkControllerImpl:Ljava/lang/String;

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get5(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;ILandroid/widget/TextView;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateCarrierTextInfo()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    const-string/jumbo v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v5, v6, :cond_a

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    :cond_a
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_4

    :cond_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v5, v6, :cond_f

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    :cond_f
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v5, v6, :cond_f

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_11
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_5

    :cond_12
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get7(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get7(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
