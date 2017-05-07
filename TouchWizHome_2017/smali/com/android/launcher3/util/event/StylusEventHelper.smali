.class public Lcom/android/launcher3/util/event/StylusEventHelper;
.super Ljava/lang/Object;
.source "StylusEventHelper.java"


# instance fields
.field private mIsButtonPressed:Z

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/event/StylusEventHelper;->mView:Landroid/view/View;

    return-void
.end method

.method private static isStylusButtonPressed(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher3/util/event/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v0, v4

    iget-object v4, p0, Lcom/android/launcher3/util/event/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/util/event/StylusEventHelper;->isStylusButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/android/launcher3/util/event/StylusEventHelper;->mIsButtonPressed:Z

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/util/event/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->performLongClick()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v3, p0, Lcom/android/launcher3/util/event/StylusEventHelper;->mIsButtonPressed:Z

    move v2, v3

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/launcher3/util/event/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v4, v5, v6, v0}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher3/util/event/StylusEventHelper;->mIsButtonPressed:Z

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/util/event/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->performLongClick()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v3, p0, Lcom/android/launcher3/util/event/StylusEventHelper;->mIsButtonPressed:Z

    move v2, v3

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/android/launcher3/util/event/StylusEventHelper;->mIsButtonPressed:Z

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/launcher3/util/event/StylusEventHelper;->mIsButtonPressed:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lcom/android/launcher3/util/event/StylusEventHelper;->mIsButtonPressed:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public inStylusButtonPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/util/event/StylusEventHelper;->mIsButtonPressed:Z

    return v0
.end method
