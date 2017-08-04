.class public Lcom/android/launcher3/home/ScreenGridPanel;
.super Landroid/widget/LinearLayout;
.source "ScreenGridPanel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenGridPanel"

.field private static mSpanDescriptionFormat:Ljava/lang/String;


# instance fields
.field private mApplyView:Landroid/view/View;

.field private mAppsCellX:I

.field private mAppsCellY:I

.field private mAppsGridButtonMap:[Ljava/lang/String;

.field private mCancelView:Landroid/view/View;

.field private mCancleButtonClickListener:Landroid/view/View$OnClickListener;

.field private mGridBtnLayout:Landroid/widget/LinearLayout;

.field private mGridButtonClickListener:Landroid/view/View$OnClickListener;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHomeGridInfoMap:[Ljava/lang/String;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mSaveButtonClickListener:Landroid/view/View$OnClickListener;

.field private mScreenGridButtonMap:[Ljava/lang/String;

.field private mScreenGridExplainView:Landroid/widget/TextView;

.field private mScreenGridTopContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/ScreenGridPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/ScreenGridPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    new-instance v0, Lcom/android/launcher3/home/ScreenGridPanel$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/ScreenGridPanel$1;-><init>(Lcom/android/launcher3/home/ScreenGridPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher3/home/ScreenGridPanel$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/ScreenGridPanel$2;-><init>(Lcom/android/launcher3/home/ScreenGridPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mSaveButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher3/home/ScreenGridPanel$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/ScreenGridPanel$3;-><init>(Lcom/android/launcher3/home/ScreenGridPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancleButtonClickListener:Landroid/view/View$OnClickListener;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/ScreenGridPanel;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/ScreenGridPanel;->getGridInfoIndex(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/ScreenGridPanel;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/home/HomeController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/ScreenGridPanel;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellX:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/launcher3/home/ScreenGridPanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellX:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/ScreenGridPanel;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellY:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/launcher3/home/ScreenGridPanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellY:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/launcher3/home/ScreenGridPanel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ScreenGridPanel;->updateBtnForScreenGrid(Ljava/lang/String;)V

    return-void
.end method

.method private getButtonResId(Ljava/lang/String;)I
    .locals 4

    const-string v1, "drawable/screen_grid_icon_"

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

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

    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private getGridInfoIndex(II)I
    .locals 9

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v1, v6, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    if-ne v2, p1, :cond_1

    if-ne v3, p2, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    array-length v5, v5

    if-lt v0, v5, :cond_0

    move v0, v4

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private setSpanDescription(Landroid/view/View;Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

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

    sput-object v4, Lcom/android/launcher3/home/ScreenGridPanel;->mSpanDescriptionFormat:Ljava/lang/String;

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
    iget-object v6, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

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

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/home/ScreenGridPanel;->setSpanDescription(Landroid/view/View;Z)V

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    sget-object v6, Lcom/android/launcher3/home/ScreenGridPanel;->mSpanDescriptionFormat:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method


# virtual methods
.method bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/home/HomeController;

    iput-object p1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-void
.end method

.method changeColorForBg(Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v3, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-static {v2, v3, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    return-void
.end method

.method public checkMatchGridOption(Ljava/lang/String;)Z
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkValidGridOption(Ljava/lang/String;)Z
    .locals 10

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v4, v7, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v2, :cond_1

    if-ne v1, v3, :cond_1

    const/4 v5, 0x1

    :cond_0
    return v5

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public getGriBtnLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method getScreenGridTopConatiner()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    return-object v0
.end method

.method initScreenGridTopContainer()V
    .locals 8

    const v7, 0x7f0200d5

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0f0089

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellX:I

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellY:I

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0f008d

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08009f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-static {v0, v1, v6}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    const v1, 0x7f0f008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    const v1, 0x7f0f008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mSaveButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancleButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_TOP_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_TOP_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {p0, v0, v5}, Lcom/android/launcher3/home/ScreenGridPanel;->setApplyDescription(Landroid/view/View;Z)V

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/ScreenGridPanel;->changeColorForBg(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_3
    return-void
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/ScreenGridPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f0f008a

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/ScreenGridPanel;->updateTextSize(Landroid/widget/TextView;)V

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/ScreenGridPanel;->updateTextSize(Landroid/widget/TextView;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 21

    invoke-super/range {p0 .. p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v15}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v7, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v7, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v15, 0x7f0801c5

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/android/launcher3/home/ScreenGridPanel;->mSpanDescriptionFormat:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v8

    const v15, 0x7f090127

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v15, 0x7f090144

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    if-nez v15, :cond_0

    const v15, 0x7f0a0005

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    if-nez v15, :cond_1

    const v15, 0x7f0a0002

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    if-nez v15, :cond_2

    const/high16 v15, 0x7f0a0000

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_6

    const v15, 0x7f0f00d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher3/home/ScreenGridPanel;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    aget-object v4, v16, v15

    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/home/ScreenGridPanel;->getButtonResId(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v14, v0, v13, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v18, 0x7f10000c

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v18, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v18, 0x7f020072

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    if-eqz v8, :cond_3

    const v18, 0x7f0200d5

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v14, v11, v11, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v18, "ar"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "fa"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v18, 0x7f090146

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setWidth(I)V

    const v18, 0x7f09008e

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setHeight(I)V

    const/16 v18, 0x31

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v10, v0, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method setApplyDescription(Landroid/view/View;Z)V
    .locals 6

    const v5, 0x7f080013

    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f08002f

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

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

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

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

    const/4 v2, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v5, v8, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v0, v3, :cond_1

    if-ne v1, v4, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method updateButtonStatus()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/ScreenGridPanel;->updateBtnForScreenGrid(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/home/ScreenGridPanel;->setApplyDescription(Landroid/view/View;Z)V

    return-void
.end method
