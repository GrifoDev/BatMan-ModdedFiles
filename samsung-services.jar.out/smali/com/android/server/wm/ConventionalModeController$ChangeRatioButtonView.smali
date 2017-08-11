.class Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;
.super Landroid/widget/FrameLayout;
.source "ConventionalModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ConventionalModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeRatioButtonView"
.end annotation


# instance fields
.field private mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

.field final synthetic this$0:Lcom/android/server/wm/ConventionalModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ConventionalModeController;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->makeNewButtonView()Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getTextSize()I
    .locals 7

    iget-object v5, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v5}, Lcom/android/server/wm/ConventionalModeController;->-get9(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v6, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v6, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v5, v1

    int-to-float v6, v3

    div-float v4, v5, v6

    div-int/lit16 v5, v1, 0x168

    mul-int/lit16 v0, v5, 0xa0

    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-ge v0, v5, :cond_0

    const/high16 v5, 0x42300000    # 44.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    return v5

    :cond_0
    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-le v0, v5, :cond_1

    const/high16 v5, 0x42600000    # 56.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    return v5

    :cond_1
    const/high16 v5, 0x42500000    # 52.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    return v5
.end method

.method private makeNewButtonView()Lcom/android/server/wm/ConventionalModeController$VerticalTextView;
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2}, Lcom/android/server/wm/ConventionalModeController;->-get9(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;-><init>(Lcom/android/server/wm/ConventionalModeController;Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0x50506

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setBackgroundColor(I)V

    const v1, 0x1040934

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setText(I)V

    const-string/jumbo v1, "sec-roboto-light"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, -0x767677

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setTextSize(IF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setLines(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->getPaddingSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->getPaddingSize()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setPadding(IIII)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setGravity(I)V

    new-instance v1, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView$1;-><init>(Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public getPaddingSize()I
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v1}, Lcom/android/server/wm/ConventionalModeController;->-get9(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float v0, v1, v2

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public resetView()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->makeNewButtonView()Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    const v1, 0x1040934

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setText(I)V

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->getPaddingSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->getPaddingSize()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->mChangeRatioButton:Lcom/android/server/wm/ConventionalModeController$VerticalTextView;

    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setTextSize(IF)V

    goto :goto_0
.end method
