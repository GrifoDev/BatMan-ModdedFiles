.class public final enum Lcom/android/launcher3/util/LightingEffectManager;
.super Ljava/lang/Enum;
.source "LightingEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher3/util/LightingEffectManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/util/LightingEffectManager;

.field private static final ANIMATION_HIDING:I = 0x0

.field private static final ANIMATION_SHOWING:I = 0x1

.field public static final DIRECTION_BOTTOM:I = 0x1

.field public static final DIRECTION_TOP:I = 0x0

.field public static final enum INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

.field private static final TAG:Ljava/lang/String; = "LightingEffectManager"


# instance fields
.field private mEffectAnim:Landroid/animation/Animator;

.field private mEffectBottomOff:Landroid/view/View;

.field private mEffectBottomOn:Landroid/view/View;

.field private mEffectLayer:Landroid/view/View;

.field private mEffectTopOn:Landroid/view/View;

.field private mExceptBottom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher3/util/LightingEffectManager;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/LightingEffectManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/util/LightingEffectManager;

    sget-object v1, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/launcher3/util/LightingEffectManager;->$VALUES:[Lcom/android/launcher3/util/LightingEffectManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/util/LightingEffectManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/util/LightingEffectManager;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/util/LightingEffectManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectTopOn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/util/LightingEffectManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectBottomOn:Landroid/view/View;

    return-object v0
.end method

.method private isShowingAnimation()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAnimationType(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectAnim:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/util/LightingEffectManager;
    .locals 1

    const-class v0, Lcom/android/launcher3/util/LightingEffectManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/LightingEffectManager;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/util/LightingEffectManager;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->$VALUES:[Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v0}, [Lcom/android/launcher3/util/LightingEffectManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/util/LightingEffectManager;

    return-object v0
.end method


# virtual methods
.method public setup(Landroid/app/Activity;)V
    .locals 2

    const v0, 0x7f1100b6

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    const v1, 0x7f1100bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectTopOn:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    const v1, 0x7f1100c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectBottomOn:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    const v1, 0x7f1100c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectBottomOff:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public showEffect(ZIZ)V
    .locals 7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/launcher3/util/LightingEffectManager;->isShowingAnimation()Z

    move-result v0

    if-ne v0, p1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mExceptBottom:Z

    if-eq v1, p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    iput-boolean p3, p0, Lcom/android/launcher3/util/LightingEffectManager;->mExceptBottom:Z

    iget-boolean v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mExceptBottom:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectBottomOn:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectBottomOff:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    if-lez p2, :cond_b

    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [F

    if-eqz p1, :cond_a

    :goto_3
    aput v3, v6, v4

    invoke-static {v1, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectAnim:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectAnim:Landroid/animation/Animator;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/LightingEffectManager;->setAnimationType(Z)V

    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectAnim:Landroid/animation/Animator;

    new-instance v2, Lcom/android/launcher3/util/LightingEffectManager$1;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/util/LightingEffectManager$1;-><init>(Lcom/android/launcher3/util/LightingEffectManager;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_0

    :cond_5
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mExceptBottom:Z

    if-eq v1, p3, :cond_0

    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v6, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    if-eqz p1, :cond_8

    move v1, v2

    :goto_4
    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_8
    move v1, v3

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectBottomOn:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectBottomOff:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_a
    move v3, v2

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    if-eqz p1, :cond_c

    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    if-eqz p1, :cond_d

    move v1, v4

    :goto_6
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    move v3, v2

    goto :goto_5

    :cond_d
    move v1, v5

    goto :goto_6
.end method

.method public turnOffAllLight()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectTopOn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectBottomOn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public turnOnEachLight(IZ)V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectLayer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/util/LightingEffectManager;->isShowingAnimation()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectTopOn:Landroid/view/View;

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager;->mEffectBottomOn:Landroid/view/View;

    goto :goto_1
.end method
