.class public Lcom/android/launcher3/pagetransition/PageTransitionManager;
.super Ljava/lang/Object;
.source "PageTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;
    }
.end annotation


# static fields
.field private static final DEFAULT_TRANSITION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HomePageTransitionController"

.field public static mLeftMove:Z

.field private static mPagedView:Lcom/android/launcher3/common/base/view/PagedView;


# instance fields
.field public isPageTransformEnabled:Z

.field protected mCurrentTransitionEffect:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPageTransitionEffects:Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;

.field private final mTransitionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mLeftMove:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->DEFAULT:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    iput-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mCurrentTransitionEffect:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->isPageTransformEnabled:Z

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->initializeTransitionMap()V

    return-void
.end method

.method public static getChildCount()I
    .locals 1

    sget-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public static getMaxScrollX()F
    .locals 1

    sget-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getMaxScrollX()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static getPageBackgroundAlpha()F
    .locals 1

    sget-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageBackgroundAlpha()F

    move-result v0

    return v0
.end method

.method public static getScrollX()F
    .locals 1

    sget-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static getShrinkX()F
    .locals 1

    sget-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getMaxScrollX()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private initializeTransitionMap()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CASCADE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-class v2, Lcom/android/launcher3/pagetransition/effects/Cascade;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->OUTERCUBE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-class v2, Lcom/android/launcher3/pagetransition/effects/OuterCube;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->INNERCUBE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-class v2, Lcom/android/launcher3/pagetransition/effects/InnerCube;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CAROUSAL:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-class v2, Lcom/android/launcher3/pagetransition/effects/Carousal;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->PLAIN:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-class v2, Lcom/android/launcher3/pagetransition/effects/Plain;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CONVEYOR:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-class v2, Lcom/android/launcher3/pagetransition/effects/Conveyor;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CARD:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-class v2, Lcom/android/launcher3/pagetransition/effects/Card;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->ACCORDIAN:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-class v2, Lcom/android/launcher3/pagetransition/effects/Accordian;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CARDFLIP:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-class v2, Lcom/android/launcher3/pagetransition/effects/CardFlip;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->FAN:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-class v2, Lcom/android/launcher3/pagetransition/effects/Fan;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->ROTATE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-class v2, Lcom/android/launcher3/pagetransition/effects/Rotate;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->SPIRAL:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-class v2, Lcom/android/launcher3/pagetransition/effects/Spiral;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->ZOOM:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-class v2, Lcom/android/launcher3/pagetransition/effects/ZoomOut;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static isLeftScroll()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mLeftMove:Z

    return v0
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public getCurrentTransitionEffect()Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mCurrentTransitionEffect:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    return-object v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    sget-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getPageTransitionEffects()Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPageTransitionEffects:Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;

    return-object v0
.end method

.method public onLayout(Landroid/view/ViewGroup;ZIIII)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPageTransitionEffects:Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPageTransitionEffects:Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->onLayout(Landroid/view/ViewGroup;ZIIII)V

    :cond_0
    return-void
.end method

.method public onPageBeginMoving()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->isPageTransformEnabled:Z

    return-void
.end method

.method public onPageEndMoving()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->isPageTransformEnabled:Z

    return-void
.end method

.method public reset(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPageTransitionEffects:Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->reset(Landroid/view/View;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setCurrentTransitionEffect(I)V
    .locals 5

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->values()[Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    move-result-object v2

    array-length v2, v2

    if-lt p1, v2, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    if-nez p1, :cond_2

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mCurrentTransitionEffect:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    iget-object v2, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mCurrentTransitionEffect:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    if-nez v2, :cond_3

    iput-object v3, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPageTransitionEffects:Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;

    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->values()[Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    move-result-object v2

    aget-object v2, v2, p1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mTransitionMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mCurrentTransitionEffect:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mCurrentTransitionEffect:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " effect not found!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;

    iput-object v2, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPageTransitionEffects:Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mCurrentTransitionEffect:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fail to create instance"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setLeftScroll(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mLeftMove:Z

    return-void
.end method

.method public setup(Lcom/android/launcher3/common/base/view/PagedView;)V
    .locals 0

    sput-object p1, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    return-void
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->isPageTransformEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mCurrentTransitionEffect:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setPadding(IIII)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eq v1, v3, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPageTransitionEffects:Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;

    sget-object v2, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->applyTransform(Landroid/view/View;FI)V

    goto :goto_0
.end method
