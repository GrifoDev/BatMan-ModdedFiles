.class public Lcom/android/launcher3/allapps/AppsScreenGridPanel;
.super Landroid/widget/LinearLayout;
.source "AppsScreenGridPanel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsScreenGridPanel"


# instance fields
.field private mApplyButtonClickListener:Landroid/view/View$OnClickListener;

.field private mApplyView:Landroid/view/View;

.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private mAppsGridButtonMap:[Ljava/lang/String;

.field private mAppsScreenGridPanelKeyListener:Landroid/view/View$OnKeyListener;

.field private mCancelView:Landroid/view/View;

.field private mCancleButtonClickListener:Landroid/view/View$OnClickListener;

.field private mGridBtnLayout:Landroid/widget/LinearLayout;

.field private mGridBtnTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mGridButtonClickListener:Landroid/view/View$OnClickListener;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mScreenGridButtonMap:[Ljava/lang/String;

.field private mScreenGridTopContainer:Landroid/view/View;

.field private mSpanDescriptionFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    new-instance v0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;-><init>(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel$2;-><init>(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel$3;-><init>(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mCancleButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;-><init>(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mAppsScreenGridPanelKeyListener:Landroid/view/View$OnKeyListener;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/AppsScreenGridPanel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateBtnForScreenGrid(Ljava/lang/String;)V

    return-void
.end method

.method private addGridButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v9, -0x2

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090127

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090144

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getButtonResId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v8, v4, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v6, 0x7f10000c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mAppsScreenGridPanelKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v6, 0x7f020072

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    if-eqz v0, :cond_0

    const v6, 0x7f0200d5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    invoke-direct {p0, v5, p1}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->setGridBtnText(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900b5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09008e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHeight(I)V

    const/16 v6, 0x31

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v8, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnTextViews:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnTextViews:Ljava/util/ArrayList;

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnTextViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getButtonResId(Ljava/lang/String;)I
    .locals 4

    const-string v1, "drawable/screen_grid_icon_"

    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private setGridBtnText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSpanDescription(Landroid/view/View;Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0800a1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080071

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    move-object v2, v3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0801c5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mSpanDescriptionFormat:Ljava/lang/String;

    return-void

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method private updateBtnForScreenGrid(Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->setSpanDescription(Landroid/view/View;Z)V

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mSpanDescriptionFormat:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private updateTextSize(Landroid/widget/TextView;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/allapps/controller/AppsController;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-void
.end method

.method public getGridBtnLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getScreenGridTopConatiner()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    return-object v0
.end method

.method public initScreenGridTopContainer()V
    .locals 4

    const v3, 0x7f0200d5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0f0025

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    const v1, 0x7f0f0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    const v1, 0x7f0f0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mCancelView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mCancelView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mCancleButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mCancelView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->setApplyDescription(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_1
    return-void
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f0f008a

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateTextSize(Landroid/widget/TextView;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mCancelView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateTextSize(Landroid/widget/TextView;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0801c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mSpanDescriptionFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadAppsSupportedGridSet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "\\|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/high16 v5, 0x7f0a0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_3

    const v5, 0x7f0f0046

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v0, v6, v5

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->addGridButton(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const v5, 0x7f0a0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-void
.end method

.method setApplyDescription(Landroid/view/View;Z)V
    .locals 6

    const v5, 0x7f080013

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f08002f

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setScreenGridProxy(Ljava/lang/String;)V
    .locals 11

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    :goto_1
    if-ge v6, v9, :cond_0

    aget-object v5, v8, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v2, v0, :cond_2

    if-ne v3, v1, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    iget-object v7, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public updateButtonStatus()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateBtnForScreenGrid(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->setApplyDescription(Landroid/view/View;Z)V

    return-void
.end method

.method public updateGridBtnLayout()V
    .locals 12

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadAppsSupportedGridSet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "AppsScreenGridPanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateGridBtnLayout gridSet: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "\\|"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    :goto_0
    iget-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnTextViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnTextViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-direct {p0, v8, v9}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->setGridBtnText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnTextViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    array-length v8, v8

    iget-object v9, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnTextViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    iget-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnTextViews:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    array-length v9, v9

    iget-object v10, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnTextViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    array-length v11, v11

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnTextViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_3
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateBtnForScreenGrid(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    array-length v8, v8

    iget-object v9, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnTextViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnTextViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    array-length v3, v8

    move v4, v6

    :goto_4
    if-ge v4, v3, :cond_5

    iget-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-direct {p0, v8, v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->addGridButton(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    iget-object v8, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_3
.end method
