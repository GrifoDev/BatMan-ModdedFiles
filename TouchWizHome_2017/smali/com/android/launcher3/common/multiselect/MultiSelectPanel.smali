.class public Lcom/android/launcher3/common/multiselect/MultiSelectPanel;
.super Landroid/widget/LinearLayout;
.source "MultiSelectPanel.java"


# static fields
.field public static final BTN_ADD_TO_PERSONAL:I = 0x4

.field public static final BTN_CREATE_FOLDER:I = 0x2

.field public static final BTN_MAX:I = 0x5

.field public static final BTN_REMOVE_SHORTCUT:I = 0x1

.field public static final BTN_SECURE_FOLDER:I = 0x3

.field public static final BTN_UNINSTALL:I = 0x0

.field public static final DIM_TYPE_ALL_FOLDER_ITEMS:I = 0x3

.field public static final DIM_TYPE_ENABLE:I = 0x0

.field public static final DIM_TYPE_ONE_ITEM:I = 0x1

.field public static final DIM_TYPE_SELECT_FOLDER:I = 0x2

.field private static final SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

.field private static final SINE_IN_OUT_80:Landroid/view/animation/Interpolator;


# instance fields
.field private mAcceptDropToFolder:Z

.field private mAddToPersonalButton:Landroid/widget/TextView;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mCreateFolderButton:Landroid/widget/TextView;

.field private mDimTypeCreateFolder:I

.field private mEnabledBtn:[Z

.field private mHasFolderItem:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mRemoveShortcutButton:Landroid/widget/TextView;

.field private mSecureFolderButton:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    iput-boolean v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAcceptDropToFolder:Z

    iput-boolean v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mHasFolderItem:Z

    iput v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mEnabledBtn:[Z

    new-instance v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$1;-><init>(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$2;-><init>(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;Landroid/view/View;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getIdByView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->onClickMultiSelectPanel(I)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private changeColorForBg(Z)V
    .locals 5

    const/4 v4, 0x1

    const v1, 0x7f1100ca

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mEnabledBtn:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setShadowLayer(Landroid/widget/TextView;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mEnabledBtn:[Z

    aget-boolean v2, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setShadowLayer(Landroid/widget/TextView;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mEnabledBtn:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setShadowLayer(Landroid/widget/TextView;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mEnabledBtn:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setShadowLayer(Landroid/widget/TextView;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mEnabledBtn:[Z

    const/4 v3, 0x4

    aget-boolean v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setShadowLayer(Landroid/widget/TextView;Z)V

    return-void
.end method

.method private getIdByView(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getViewById(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getWeightSumPanel()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private onClickMultiSelectPanel(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->onClickMultiSelectPanel(I)V

    :cond_0
    return-void
.end method

.method private setContentDescription()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    invoke-direct {p0, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getButtonEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setShadowLayer(Landroid/widget/TextView;Z)V
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v3

    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/StageManager;->getSecondTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v6

    if-eq v6, v4, :cond_0

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v6

    if-ne v6, v4, :cond_2

    :cond_0
    move v0, v4

    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    and-int/2addr p2, v4

    if-eqz p2, :cond_4

    const v4, 0x7f0b0054

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x7f0b0052

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x7f0e003a

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {p1, v4, v8, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_2
    return-void

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v8, v8, v8, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_2
.end method

.method private updateAddToPersonalButton(Landroid/view/View;Z)V
    .locals 5

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz p2, :cond_6

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    instance-of v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isPossibleAddToPersonal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addAddToPersonalList(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getAddToPersonalListSize()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    :cond_2
    return-void

    :cond_3
    const-string v2, ""

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addAddToPersonalPendingList(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addAddToPersonalPendingList(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->containsAddToPersonalList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeAddToPersonalList(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->containsAddToPersonalPendingList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeAddToPersonalPendingList(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateSecureFolderButton(Landroid/view/View;Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz p2, :cond_6

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    instance-of v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/SecureFolderHelper;->canAddAppToSecureFolder(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addSecureFolderList(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getSecureFolderListSize()I

    move-result v3

    if-lez v3, :cond_2

    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    :cond_2
    return-void

    :cond_3
    const-string v2, ""

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addSecureFolderPendingList(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addSecureFolderPendingList(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->containsSecureFolderList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeSecureFolderList(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->containsSecureFolderPendingList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeSecureFolderPendingList(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateTextSize(Landroid/widget/TextView;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private updateUninstallButtonText(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f090075

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f090069

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public acceptDropToFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAcceptDropToFolder:Z

    return v0
.end method

.method public getButtonEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mEnabledBtn:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getDimTypeCreateFolder()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    return v0
.end method

.method public getEnabledButton()Landroid/util/SparseBooleanArray;
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v16, 0x3

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v16, 0x4

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAcceptDropToFolder:Z

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mHasFolderItem:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearUninstallPendigList()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_10

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    const/16 v16, 0x2

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v16

    if-eqz v16, :cond_1

    instance-of v0, v15, Lcom/android/launcher3/folder/view/FolderIconView;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mHasFolderItem:Z

    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    const/16 v16, 0x2

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v16, 0x3

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v16, 0x4

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    :goto_2
    instance-of v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    iget-object v5, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    const/4 v11, 0x0

    if-nez v5, :cond_2

    move-object/from16 v16, v10

    check-cast v16, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    :cond_3
    if-nez v4, :cond_4

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lcom/android/launcher3/Utilities;->canUninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-nez v4, :cond_5

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lcom/android/launcher3/Utilities;->canDisable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    :cond_5
    const/16 v16, 0x0

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_6
    :goto_3
    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v16, v18, v20

    if-lez v16, :cond_0

    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    goto/16 :goto_0

    :cond_8
    instance-of v0, v15, Lcom/android/launcher3/common/view/IconView;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAcceptDropToFolder:Z

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v18, v0

    iget-object v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    iget-object v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addUninstallPendingList(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string v16, ""

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateUninstallButtonText(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v14, v0, :cond_f

    add-int/lit8 v16, v14, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    long-to-int v0, v12

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/launcher3/common/model/DataLoader;->getFolderInfo(I)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v14, :cond_f

    const/4 v7, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v17, v18, v12

    if-eqz v17, :cond_c

    const/4 v7, 0x1

    :cond_d
    if-nez v7, :cond_e

    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    :cond_e
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v3, v0, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_f
    :goto_5
    return-object v3

    :cond_10
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mDimTypeCreateFolder:I

    goto :goto_5
.end method

.method public getTextForUninstallButton()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFolderItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mHasFolderItem:Z

    return v0
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a002f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f1100ca

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a00b5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v6, 0x7f0a00b6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateTextSize(Landroid/widget/TextView;)V

    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateTextSize(Landroid/widget/TextView;)V

    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateTextSize(Landroid/widget/TextView;)V

    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateTextSize(Landroid/widget/TextView;)V

    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateTextSize(Landroid/widget/TextView;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f1100cb

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1100cc

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1100cd

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1100ce

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1100cf

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEditTextBg()V

    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 12

    const/16 v11, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p2, :cond_2

    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v6

    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/common/stage/StageManager;->getSecondTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v9

    if-eq v9, v8, :cond_0

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v9

    if-ne v9, v8, :cond_3

    :cond_0
    move v0, v8

    :goto_0
    const v9, 0x7f1100ca

    invoke-virtual {p0, v9}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f0a00b5

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz v0, :cond_6

    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getWeightSumPanel()I

    move-result v9

    int-to-float v9, v9

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v0, :cond_7

    :goto_3
    invoke-direct {p0, v8}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->changeColorForBg(Z)V

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void

    :cond_3
    move v0, v7

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v9}, Lcom/android/launcher3/util/SecureFolderHelper;->isSecureFolderExist(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    iget-object v9, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getWeightSumPanel()I

    move-result v9

    int-to-float v9, v9

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_7
    move v8, v7

    goto :goto_3
.end method

.method public setEditTextBg()V
    .locals 5

    const v4, 0x7f0200d8

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0167

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mUninstallButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mRemoveShortcutButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mCreateFolderButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mSecureFolderButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAddToPersonalButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setEnabledButton(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setShadowLayer(Landroid/widget/TextView;Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mEnabledBtn:[Z

    aput-boolean p2, v1, p1

    :cond_0
    return-void

    :cond_1
    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method setFolderSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mHasFolderItem:Z

    return-void
.end method

.method public showMultiSelectPanel(ZZ)V
    .locals 9

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->cancelAnimation()V

    if-eqz p1, :cond_0

    move v0, v2

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    if-eqz p2, :cond_2

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [F

    aput v2, v7, v5

    invoke-static {p0, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [F

    aput v2, v7, v5

    invoke-static {p0, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [F

    aput v0, v7, v5

    invoke-static {p0, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v6, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v6, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v6, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v3, v7, v5

    aput-object v4, v7, v8

    const/4 v5, 0x2

    aput-object v1, v7, v5

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$3;

    invoke-direct {v6, p0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$3;-><init>(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;Z)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v2, 0x3f733333    # 0.95f

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleX(F)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setScaleY(F)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setAlpha(F)V

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/16 v5, 0x8

    goto :goto_3
.end method

.method public updateEnabledButton(Landroid/view/View;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getEnabledButton()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setEnabledButton(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateSecureFolderButton(Landroid/view/View;Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateAddToPersonalButton(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setContentDescription()V

    return-void
.end method
