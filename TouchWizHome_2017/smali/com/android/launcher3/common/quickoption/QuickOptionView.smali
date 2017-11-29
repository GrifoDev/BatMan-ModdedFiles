.class public Lcom/android/launcher3/common/quickoption/QuickOptionView;
.super Landroid/widget/LinearLayout;
.source "QuickOptionView.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;


# static fields
.field private static final MAX_ITEM_SIZE_WITHOUT_SCROLL:I = 0x9

.field public static final STATE_REMOVED:I = 0x1

.field public static final STATE_SHOWING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "QuickOptionListAdapter"


# instance fields
.field private mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

.field private mAnchor:Landroid/graphics/Rect;

.field private mArrow:Landroid/view/View;

.field private mHasDeepShortcut:Z

.field private mHasDrawn:Z

.field private mHideAnim:Landroid/animation/AnimatorSet;

.field private mIsAboveIcon:Z

.field private final mIsRtl:Z

.field private mIsSingleClick:Z

.field private mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field private mKeyListener:Landroid/view/View$OnKeyListener;

.field private mLastTouchPos:Landroid/graphics/Point;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mQuickOptionListView:Landroid/widget/ListView;

.field private mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field private mShowAnim:Landroid/animation/AnimatorSet;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mState:I

    iput-boolean v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDeepShortcut:Z

    iput-boolean v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDrawn:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLastTouchPos:Landroid/graphics/Point;

    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView$1;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;)V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mKeyListener:Landroid/view/View$OnKeyListener;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    iput-boolean v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsRtl:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsSingleClick:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher3/common/quickoption/QuickOptionView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsSingleClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->performSingleItemClick(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/launcher3/common/quickoption/QuickOptionView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDrawn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/common/quickoption/QuickOptionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private addArrowView()Landroid/view/View;
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a00d0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a00cf

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    int-to-float v8, v4

    int-to-float v9, v2

    iget-boolean v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsAboveIcon:Z

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    invoke-static {v8, v9, v5}, Lcom/android/launcher3/graphics/TriangleShape;->create(FFZ)Lcom/android/launcher3/graphics/TriangleShape;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getElevation()F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setElevation(F)V

    iget-boolean v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsAboveIcon:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {p0, v1, v6, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v1

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1
.end method

.method private addDeepShortcuts(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/QuickOptionListItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v3

    iget-object v7, p3, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0, p2, v7}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->queryForShortcutsContainer(Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v6

    new-instance v4, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v4}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setType(I)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    new-instance v2, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setType(I)V

    invoke-static {v5}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->fromInfo(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setShortcutKey(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V

    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->getShortcutIconDrawable(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v8, v9}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->setIcon(Landroid/graphics/Bitmap;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private animateHide(Ljava/lang/Runnable;)V
    .locals 8

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    :cond_0
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private animateShow()V
    .locals 8

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleX(F)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleY(F)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setAlpha(F)V

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x14d

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/util/ElasticEaseOut;

    const v5, 0x3fb33333    # 1.4f

    invoke-direct {v4, v6, v5}, Lcom/android/launcher3/util/ElasticEaseOut;-><init>(FF)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;

    invoke-direct {v4, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;

    invoke-direct {v3, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private beginDragging(Landroid/view/View;)Z
    .locals 9

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v7

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v0

    invoke-virtual {v0, v8, v7, v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v8

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLastTouchPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getX()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, v5, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLastTouchPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/android/launcher3/util/BitmapUtils;->getIconBitmapSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v5, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v1, p1

    move-object v3, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Launcher;->beginDragFromQuickOptionPopup(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;F)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "QuickOptionListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected dragging view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method private getEdgeMargin(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 10

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    iget-object v5, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v4

    add-int/2addr v4, v2

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v8, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/launcher3/home/HomeController;->getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellWidth()I

    move-result v5

    iget-object v6, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_0

    :cond_2
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    iget-object v5, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_0

    :cond_3
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    iget-object v5, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_0
.end method

.method private getPopupHeight()I
    .locals 12

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    if-nez v9, :cond_1

    :cond_0
    move v7, v8

    :goto_0
    return v7

    :cond_1
    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/ListView;->measure(II)V

    iget-boolean v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDeepShortcut:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v9}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    :goto_1
    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00d3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v9

    add-int v10, v3, v3

    sub-int v1, v9, v10

    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0187

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/16 v9, 0x9

    if-le v5, v9, :cond_3

    mul-int/lit8 v8, v1, 0x9

    add-int/2addr v8, v3

    mul-int/lit8 v9, v2, 0x9

    add-int/2addr v8, v9

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v8, v9

    add-int v9, v6, v2

    add-int/2addr v8, v9

    add-int/2addr v8, v0

    add-int v7, v8, v3

    iget-object v8, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v8, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v11, v7, v0

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v9}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->getCount()I

    move-result v5

    goto :goto_1

    :cond_3
    mul-int v9, v1, v5

    add-int/2addr v9, v3

    add-int/lit8 v10, v5, -0x1

    mul-int/2addr v10, v2

    add-int/2addr v9, v10

    iget-boolean v10, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDeepShortcut:Z

    if-eqz v10, :cond_4

    add-int v8, v6, v2

    :cond_4
    add-int/2addr v8, v9

    add-int/2addr v8, v0

    add-int v7, v8, v3

    iget-object v8, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v8, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v11, v7, v0

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private getPopupWidth()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private needDarkBG()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    :goto_1
    return v2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method private performKeyClick(Landroid/view/View;I)V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getType()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitleRsrId()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertQOEventLog(ILcom/android/launcher3/Launcher;)V

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->isOptionRemove()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->createItemRemoveAnimation()Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->getAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/common/quickoption/QuickOptionView$6;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView$6;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;Lcom/android/launcher3/common/quickoption/QuickOptionListItem;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getShortcutKey()Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->startShortcut(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V

    goto :goto_1
.end method

.method private performSingleItemClick(Landroid/widget/ListView;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->performKeyClick(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private setBG()V
    .locals 4

    const v3, 0x3f733333    # 0.95f

    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->needDarkBG()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0e002c

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0e002b

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method private shiftPopup()V
    .locals 15

    const/high16 v14, 0x40000000    # 2.0f

    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/common/view/DragLayer;->getWidth()I

    move-result v10

    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/common/view/DragLayer;->getHeight()I

    move-result v9

    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0185

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getPopupWidth()I

    move-result v8

    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getPopupHeight()I

    move-result v6

    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, v12}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getEdgeMargin(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v12, v12, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v12, :cond_2

    const v12, 0x7f0a004b

    :goto_0
    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00c2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00d0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    int-to-float v13, v8

    div-float/2addr v13, v14

    sub-float v3, v12, v13

    int-to-float v12, v5

    cmpg-float v12, v3, v12

    if-gez v12, :cond_3

    int-to-float v3, v5

    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    int-to-float v13, v5

    sub-float/2addr v12, v13

    invoke-virtual {p0, v12}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotX(F)V

    :goto_1
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v6

    sub-int/2addr v12, v7

    int-to-float v4, v12

    int-to-float v12, v11

    cmpl-float v12, v4, v12

    if-lez v12, :cond_5

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsAboveIcon:Z

    iget-boolean v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsAboveIcon:Z

    if-nez v12, :cond_6

    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v7

    int-to-float v4, v12

    int-to-float v12, v6

    add-float/2addr v12, v4

    int-to-float v13, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_0

    sub-int v12, v9, v6

    sub-int/2addr v12, v7

    int-to-float v4, v12

    :cond_0
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotY(F)V

    :goto_3
    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->addArrowView()Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/view/View;

    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    sub-float/2addr v12, v3

    int-to-float v13, v1

    div-float/2addr v13, v14

    sub-float v0, v12, v13

    iget-boolean v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsRtl:Z

    if-eqz v12, :cond_1

    sub-int v12, v8, v1

    int-to-float v12, v12

    sub-float/2addr v0, v12

    :cond_1
    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mArrow:Landroid/view/View;

    invoke-virtual {v12, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-boolean v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mIsRtl:Z

    if-eqz v12, :cond_7

    sub-int v12, v10, v8

    sub-int/2addr v12, v2

    int-to-float v12, v12

    sub-float/2addr v3, v12

    :goto_4
    int-to-float v12, v2

    sub-float/2addr v4, v12

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setX(F)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setY(F)V

    return-void

    :cond_2
    const v12, 0x7f0a00d1

    goto/16 :goto_0

    :cond_3
    int-to-float v12, v8

    add-float/2addr v12, v3

    sub-int v13, v10, v5

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    sub-int v12, v10, v8

    sub-int/2addr v12, v5

    int-to-float v3, v12

    iget-object v12, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int v12, v10, v12

    sub-int/2addr v12, v5

    sub-int v12, v8, v12

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-virtual {p0, v12}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotX(F)V

    goto/16 :goto_1

    :cond_4
    int-to-float v12, v8

    div-float/2addr v12, v14

    invoke-virtual {p0, v12}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotX(F)V

    goto/16 :goto_1

    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_6
    int-to-float v12, v6

    invoke-virtual {p0, v12}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setPivotY(F)V

    goto :goto_3

    :cond_7
    int-to-float v12, v2

    sub-float/2addr v3, v12

    goto :goto_4
.end method


# virtual methods
.method public enable()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    return-object v0
.end method

.method public getOutlineColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mState:I

    return v0
.end method

.method public onDragEnd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    const/4 v0, 0x1

    return v0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 0

    return-void
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onItemLongClick(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)Z
    .locals 3

    new-instance v0, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, p1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    new-instance v1, Lcom/android/launcher3/common/view/IconView;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/view/IconView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->beginDragging(Landroid/view/View;)Z

    move-result v2

    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDrawn:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    :cond_0
    return-void
.end method

.method public remove(Z)V
    .locals 4

    const/4 v3, 0x1

    iget v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mState:I

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mState:I

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mShowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->clearItemBounceAnimation()V

    if-eqz p1, :cond_3

    move-object v1, p0

    new-instance v0, Lcom/android/launcher3/common/quickoption/QuickOptionView$2;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView$2;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;Lcom/android/launcher3/common/quickoption/QuickOptionView;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->animateHide(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/common/view/DragLayer;->removeViewInLayout(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/common/drag/DragManager;->removeDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    goto :goto_1
.end method

.method public show(Lcom/android/launcher3/common/drag/DropTarget$DragObject;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    if-eqz v1, :cond_1

    iput v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mState:I

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getAnchorRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAnchor:Landroid/graphics/Rect;

    const v1, 0x7f1100eb

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptions(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)Ljava/util/List;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0, v0, p3, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->addDeepShortcuts(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/common/base/item/IconInfo;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHasDeepShortcut:Z

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->setItems(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mAdapter:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mQuickOptionListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->shiftPopup()V

    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setBG()V

    invoke-direct {p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->animateShow()V

    :cond_1
    return-void
.end method
