.class public Lcom/android/launcher3/home/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"


# static fields
.field static final DEBUG_FRAME:Z = true

.field private static final DIMMED_HANDLE_ALPHA:F = 0.0f

.field private static final RESIZE_THRESHOLD:F = 0.66f

.field private static final SNAP_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String; = "AppWidgetResizeFrame"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

.field private final mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private final mBorderOffset:I

.field private mBottomBorderActive:Z

.field private final mBottomHandle:Landroid/widget/ImageView;

.field private mBottomTouchRegionAdjustment:I

.field private final mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

.field private mDeltaX:I

.field private mDeltaXAddOn:I

.field private mDeltaY:I

.field private mDeltaYAddOn:I

.field private final mDirectionVector:[I

.field private final mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mForceInvalid:Z

.field private final mHandleWidth:I

.field private mIsInvalidArea:Z

.field private final mLastDirectionVector:[I

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mLeftBorderActive:Z

.field private final mLeftHandle:Landroid/widget/ImageView;

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

.field private mResizeMode:I

.field private mRightBorderActive:Z

.field private final mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private final mTmpPt:[I

.field private mTopBorderActive:Z

.field private final mTopHandle:Landroid/widget/ImageView;

.field private mTopTouchRegionAdjustment:I

.field private final mWidgetPadding:Landroid/graphics/Rect;

.field private mWidgetSpanFormat:Ljava/lang/String;

.field private final mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/drag/DragState;Lcom/android/launcher3/home/LauncherAppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/view/DragLayer;)V
    .locals 14

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mIsInvalidArea:Z

    const/4 v9, 0x2

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v9, 0x2

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v9, 0x2

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTmpPt:[I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mForceInvalid:Z

    move-object v9, p1

    check-cast v9, Lcom/android/launcher3/Launcher;

    iput-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast p4, Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode()I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mResizeMode:I

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mMinHSpan:I

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mMinVSpan:I

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f02010f

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackground:Landroid/graphics/drawable/Drawable;

    const v9, 0x7f020110

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

    const v9, 0x7f090131

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackgroundPadding:I

    const v9, 0x7f090132

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBorderOffset:I

    iget v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackgroundPadding:I

    iget v10, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackgroundPadding:I

    iget v11, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackgroundPadding:I

    iget v12, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackgroundPadding:I

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->setPadding(IIII)V

    const v9, 0x7f020111

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mHandleWidth:I

    const v9, 0x7f0801b8

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetSpanFormat:Ljava/lang/String;

    const v9, 0x7f0800af

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetSpanFormat:Ljava/lang/String;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanX()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanY()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const v10, 0x7f020111

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    const v9, 0x7f0e000d

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    sget-object v9, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v9}, Lcom/android/launcher3/util/Talk;->isTouchExplorationEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v3

    float-to-int v2, v9

    :goto_0
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const v9, 0x800013

    invoke-direct {v5, v2, v2, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0800ab

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v9, v5}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const v10, 0x7f020111

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const v9, 0x800015

    invoke-direct {v5, v2, v2, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0800b1

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v9, v5}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const v10, 0x7f020111

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v9, 0x31

    invoke-direct {v5, v2, v2, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0800b2

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v9, v5}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const v10, 0x7f020111

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v9, 0x51

    invoke-direct {v5, v2, v2, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0800a2

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v9, v5}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getPaddingForWidget()Landroid/graphics/Rect;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_1
    iget v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mMinHSpan:I

    iget-object v10, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCountX()I

    move-result v10

    if-lt v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mMinVSpan:I

    iget-object v10, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCountY()I

    move-result v10

    if-lt v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    new-instance v9, Lcom/android/launcher3/home/WorkspaceReorderController;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Lcom/android/launcher3/home/WorkspaceReorderController;-><init>(Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v10, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    iget-object v11, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/home/WorkspaceReorderController;->prepareChildForDrag(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v10, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/home/WorkspaceReorderController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0800b0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v4, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const/4 v2, -0x2

    goto/16 :goto_0

    :cond_4
    iget v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static getWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)Landroid/graphics/Rect;
    .locals 17

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v5, v15, Landroid/util/DisplayMetrics;->density:F

    iget-object v15, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v15}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    iget-object v15, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v15}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v3

    iget-object v15, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v15}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v14

    iget-object v15, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v15}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v8

    mul-int v15, p2, v4

    add-int/lit8 v16, p2, -0x1

    mul-int v16, v16, v14

    add-int v15, v15, v16

    int-to-float v15, v15

    div-float/2addr v15, v5

    float-to-int v13, v15

    mul-int v15, p3, v3

    add-int/lit8 v16, p3, -0x1

    mul-int v16, v16, v8

    add-int v15, v15, v16

    int-to-float v15, v15

    div-float/2addr v15, v5

    float-to-int v7, v15

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v15

    if-eqz v15, :cond_2

    if-eqz p1, :cond_2

    check-cast p1, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getResizeResult()Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v10

    iget v15, v10, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    if-eqz v15, :cond_0

    iget v15, v10, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    if-nez v15, :cond_1

    :cond_0
    mul-int v16, p2, v4

    const/4 v15, 0x2

    move/from16 v0, p2

    if-lt v0, v15, :cond_3

    add-int/lit8 v15, p2, -0x1

    mul-int/2addr v15, v14

    :goto_0
    add-int v12, v16, v15

    mul-int v16, p3, v3

    const/4 v15, 0x2

    move/from16 v0, p3

    if-lt v0, v15, :cond_4

    add-int/lit8 v15, p3, -0x1

    mul-int/2addr v15, v8

    :goto_1
    add-int v11, v16, v15

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v12, v11}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->calculateWidgetSize(IIII)Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v10

    :cond_1
    int-to-float v15, v13

    iget v0, v10, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-int v13, v15

    int-to-float v15, v7

    iget v0, v10, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-int v7, v15

    :cond_2
    invoke-virtual {v9, v13, v7, v13, v7}, Landroid/graphics/Rect;->set(IIII)V

    return-object v9

    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    :cond_4
    const/4 v15, 0x0

    goto :goto_1
.end method

.method private resizeWidgetIfNeeded(Z)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getWidthGap()I

    move-result v6

    add-int v28, v1, v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getHeightGap()I

    move-result v6

    add-int v29, v1, v6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaXAddOn:I

    add-int v13, v1, v6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaYAddOn:I

    add-int v14, v1, v6

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v6, v13

    mul-float/2addr v1, v6

    move/from16 v0, v28

    int-to-float v6, v0

    div-float/2addr v1, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v6, v6

    sub-float v18, v1, v6

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v6, v14

    mul-float/2addr v1, v6

    move/from16 v0, v29

    int-to-float v6, v0

    div-float/2addr v1, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v6, v6

    sub-float v27, v1, v6

    const/16 v17, 0x0

    const/16 v26, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCountX()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCountY()I

    move-result v12

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v6, 0x3f28f5c3    # 0.66f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v17

    :cond_0
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v6, 0x3f28f5c3    # 0.66f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v26

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, v22

    iget-boolean v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    :goto_0
    move-object/from16 v0, v22

    iget-boolean v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_8

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    :goto_1
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_9

    add-int v1, v2, v4

    sub-int v21, v11, v1

    :goto_2
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_a

    move/from16 v24, v2

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mForceInvalid:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_2

    add-int v1, v3, v5

    sub-int v1, v12, v1

    int-to-float v1, v1

    cmpg-float v1, v1, v27

    if-ltz v1, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_3

    neg-int v1, v3

    int-to-float v1, v1

    cmpl-float v1, v1, v27

    if-gtz v1, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_4

    move/from16 v0, v21

    neg-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, v18

    if-gtz v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_b

    move/from16 v0, v24

    int-to-float v1, v0

    cmpg-float v1, v1, v18

    if-gez v1, :cond_b

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->setVisualInvalid()V

    :goto_4
    if-nez p1, :cond_c

    if-nez v17, :cond_c

    if-nez v26, :cond_c

    :cond_6
    :goto_5
    return-void

    :cond_7
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    goto :goto_0

    :cond_8
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    goto :goto_1

    :cond_9
    move/from16 v21, v2

    goto :goto_2

    :cond_a
    add-int v1, v2, v4

    sub-int v24, v11, v1

    goto :goto_3

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->setVisualOk()V

    goto :goto_4

    :cond_c
    const/16 v16, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_16

    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_15

    mul-int/lit8 v17, v17, -0x1

    add-int v1, v2, v4

    sub-int v1, v11, v1

    move/from16 v0, v17

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    :goto_6
    move-object/from16 v0, v22

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v17

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v16, v0

    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_18

    neg-int v1, v3

    move/from16 v0, v26

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, v22

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v6

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    mul-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v26

    move-object/from16 v0, v22

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v26

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v25, v0

    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v1, v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v1, v6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_10

    :cond_f
    add-int v4, v4, v17

    add-int/2addr v2, v9

    if-eqz v16, :cond_10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_19

    const/4 v1, -0x1

    :goto_9
    aput v1, v6, v7

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_12

    :cond_11
    add-int v5, v5, v26

    add-int/2addr v3, v10

    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_1a

    const/4 v1, -0x1

    :goto_a
    aput v1, v6, v7

    :cond_12
    if-nez p1, :cond_13

    if-nez v25, :cond_13

    if-eqz v16, :cond_6

    :cond_13
    if-eqz p1, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v1, v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v1, v6

    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->isAvailableSize(II)Z

    move-result v20

    if-eqz v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDirectionVector:[I

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v1

    if-eqz v1, :cond_1c

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v22

    iput v3, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v22

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRunningVInc:I

    add-int v1, v1, v25

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRunningVInc:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRunningHInc:I

    add-int v1, v1, v16

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRunningHInc:I

    if-nez p1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetSpanFormat:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v22

    iget v8, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, v22

    iget v8, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v1, v15}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-static {v1, v6, v4, v5}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    const v6, 0x7f080190

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080149

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->requestLayout()V

    goto/16 :goto_5

    :cond_15
    neg-int v1, v2

    move/from16 v0, v17

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, v22

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v6

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    mul-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_17

    neg-int v1, v2

    move/from16 v0, v17

    neg-int v6, v0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, v22

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v6

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    :goto_d
    move-object/from16 v0, v22

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v17

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v16, v17

    goto/16 :goto_7

    :cond_17
    add-int v1, v2, v4

    sub-int v1, v11, v1

    move/from16 v0, v17

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    goto :goto_d

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_e

    add-int v1, v3, v5

    sub-int v1, v12, v1

    move/from16 v0, v26

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v26

    move-object/from16 v0, v22

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v26

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v25, v26

    goto/16 :goto_8

    :cond_19
    const/4 v1, 0x1

    goto/16 :goto_9

    :cond_1a
    const/4 v1, 0x1

    goto/16 :goto_a

    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v1, v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v1, v6

    goto/16 :goto_b

    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->setVisualInvalid()V

    goto/16 :goto_c
.end method

.method private setHandleDescription()V
    .locals 6

    iget-boolean v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800ac

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setVisualInvalid()V
    .locals 2

    const v1, 0x7f020112

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mIsInvalidArea:Z

    iget-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setVisualOk()V
    .locals 2

    const v1, 0x7f020111

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mIsInvalidArea:Z

    iget-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateDeltas(II)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    iget v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mMinHSpan:I

    iget v7, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mMinVSpan:I

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->spanToPixel(II)[I

    move-result-object v3

    aget v5, v3, v8

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {v6}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getResizeResult()Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    aget v5, v3, v9

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {v6}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getResizeResult()Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    mul-float/2addr v5, v6

    float-to-int v1, v5

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineX:I

    neg-int v5, v5

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaX:I

    iget v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaX:I

    iget v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int/2addr v5, p1

    if-gt v5, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineY:I

    neg-int v5, v5

    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaY:I

    iget v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaY:I

    iget v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int/2addr v5, p2

    if-gt v5, v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    if-eqz v4, :cond_5

    :cond_2
    iput-boolean v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mForceInvalid:Z

    :goto_2
    return-void

    :cond_3
    iget-boolean v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v5}, Lcom/android/launcher3/common/view/DragLayer;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineX:I

    iget v7, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaX:I

    iget v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineWidth:I

    neg-int v5, v5

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaX:I

    iget v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v5, p1

    if-gt v5, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v5}, Lcom/android/launcher3/common/view/DragLayer;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineY:I

    iget v7, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaY:I

    iget v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineHeight:I

    neg-int v5, v5

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaY:I

    iget v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v5, p2

    if-gt v5, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    iput-boolean v8, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mForceInvalid:Z

    goto :goto_2
.end method

.method static updateWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)V
    .locals 7

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)Landroid/graphics/Rect;

    move-result-object v6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getIsSetFlingOption()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fling"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getIsGSB()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AppWidgetResizeFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWidgetSizeRanges :google widget opts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getRight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getBottom()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "attached-launcher-identifier"

    const-string v2, "samsung-dream-launcher"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "requested-widget-style"

    const-string v2, "cqsb"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "widget-screen-bounds-left"

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "widget-screen-bounds-top"

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "widget-screen-bounds-right"

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "widget-screen-bounds-bottom"

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_1
    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    iget v4, v6, Landroid/graphics/Rect;->right:I

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    return-void
.end method

.method private visualizeResizeForDelta(IIZ)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->updateDeltas(II)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    iget-boolean v1, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    iget v1, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaX:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    iget v1, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaY:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    :cond_1
    :goto_1
    invoke-direct {p0, p3}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->requestLayout()V

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    goto :goto_1
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 10

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    move v1, v4

    :goto_0
    iget v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v3, v4

    :goto_1
    iget v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mHandleWidth:I

    int-to-float v6, v6

    iget-object v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {v9}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getResizeResult()Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v9

    iget v9, v9, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    iget v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v9, v9, 0x2

    add-int v2, v6, v9

    if-ge p1, v2, :cond_5

    if-eqz v1, :cond_5

    move v6, v4

    :goto_2
    iput-boolean v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftBorderActive:Z

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    if-le p1, v6, :cond_6

    if-eqz v1, :cond_6

    move v6, v4

    :goto_3
    iput-boolean v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightBorderActive:Z

    iget v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    add-int/2addr v6, v2

    if-ge p2, v6, :cond_7

    if-eqz v3, :cond_7

    move v6, v4

    :goto_4
    iput-boolean v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopBorderActive:Z

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getHeight()I

    move-result v6

    sub-int/2addr v6, v2

    iget v9, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    add-int/2addr v6, v9

    if-le p2, v6, :cond_8

    if-eqz v3, :cond_8

    move v6, v4

    :goto_5
    iput-boolean v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomBorderActive:Z

    iget-boolean v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v6, :cond_9

    :cond_0
    move v0, v4

    :goto_6
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineWidth:I

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getLeft()I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineX:I

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getTop()I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBaselineY:I

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v4, :cond_a

    move v4, v7

    :goto_7
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v4, :cond_b

    move v4, v7

    :goto_8
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v4, :cond_c

    move v4, v7

    :goto_9
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v5, :cond_d

    :goto_a
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    :cond_2
    return v0

    :cond_3
    move v1, v5

    goto/16 :goto_0

    :cond_4
    move v3, v5

    goto/16 :goto_1

    :cond_5
    move v6, v5

    goto/16 :goto_2

    :cond_6
    move v6, v5

    goto/16 :goto_3

    :cond_7
    move v6, v5

    goto/16 :goto_4

    :cond_8
    move v6, v5

    goto :goto_5

    :cond_9
    move v0, v5

    goto :goto_6

    :cond_a
    move v4, v8

    goto :goto_7

    :cond_b
    move v4, v8

    goto :goto_8

    :cond_c
    move v4, v8

    goto :goto_9

    :cond_d
    move v7, v8

    goto :goto_a
.end method

.method public commitResize()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    iget v3, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackgroundPadding:I

    iget v4, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mHandleWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBorderOffset:I

    sub-int v2, v3, v4

    iget-boolean v3, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mIsInvalidArea:Z

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget v3, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    sub-int/2addr v3, v2

    iget v4, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method getResizeWidgetView()Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    return-object v0
.end method

.method public onTouchDown()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->setHandleDescription()V

    return-void
.end method

.method public onTouchUp()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getWidthGap()I

    move-result v3

    add-int v0, v2, v3

    iget-object v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getHeightGap()I

    move-result v3

    add-int v1, v2, v3

    iget v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRunningHInc:I

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaXAddOn:I

    iget v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRunningVInc:I

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaYAddOn:I

    iput v4, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaX:I

    iput v4, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDeltaY:I

    invoke-direct {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->setVisualOk()V

    new-instance v2, Lcom/android/launcher3/home/AppWidgetResizeFrame$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher3/home/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    return-void
.end method

.method public snapToWidget(Z)V
    .locals 25

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mHandleWidth:I

    move/from16 v20, v0

    div-int/lit8 v3, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getHeight()I

    move-result v13

    int-to-float v0, v14

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getResizeResult()Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v14, v0

    int-to-float v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getResizeResult()Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v13, v0

    mul-int/lit8 v20, v3, 0x2

    add-int v20, v20, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    mul-int/lit8 v20, v3, 0x2

    add-int v20, v20, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v7, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getLeft()I

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getTop()I

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-int v20, v20, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v9, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    sub-int v20, v20, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v10, v20, v21

    if-gez v10, :cond_0

    neg-int v0, v10

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    :goto_0
    add-int v20, v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/view/DragLayer;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    add-int v20, v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/view/DragLayer;->getHeight()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    :goto_1
    if-nez p1, :cond_2

    iput v8, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    iput v7, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    iput v9, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    iput v10, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->requestLayout()V

    :goto_2
    return-void

    :cond_0
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    goto :goto_0

    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    goto :goto_1

    :cond_2
    const-string v20, "width"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget v0, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    move/from16 v23, v0

    aput v23, v21, v22

    const/16 v22, 0x1

    aput v8, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    const-string v20, "height"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget v0, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    move/from16 v23, v0

    aput v23, v21, v22

    const/16 v22, 0x1

    aput v7, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v20, "x"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget v0, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    move/from16 v23, v0

    aput v23, v21, v22

    const/16 v22, 0x1

    aput v9, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    const-string v20, "y"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget v0, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    move/from16 v23, v0

    aput v23, v21, v22

    const/16 v22, 0x1

    aput v10, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v17, v20, v21

    const/16 v21, 0x1

    aput-object v4, v20, v21

    const/16 v21, 0x2

    aput-object v18, v20, v21

    const/16 v21, 0x3

    aput-object v19, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const-string v21, "alpha"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    aput v24, v22, v23

    invoke-static/range {v20 .. v22}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const-string v21, "alpha"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    aput v24, v22, v23

    invoke-static/range {v20 .. v22}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const-string v21, "alpha"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    aput v24, v22, v23

    invoke-static/range {v20 .. v22}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const-string v21, "alpha"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    aput v24, v22, v23

    invoke-static/range {v20 .. v22}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v20, Lcom/android/launcher3/home/AppWidgetResizeFrame$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/AppWidgetResizeFrame$2;-><init>(Lcom/android/launcher3/home/AppWidgetResizeFrame;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v11, v20, v21

    const/16 v21, 0x1

    aput-object v16, v20, v21

    const/16 v21, 0x2

    aput-object v2, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_3
    const-wide/16 v20, 0x96

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v11, v20, v21

    const/16 v21, 0x1

    aput-object v5, v20, v21

    const/16 v21, 0x2

    aput-object v12, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    :cond_4
    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v11, v20, v21

    const/16 v21, 0x1

    aput-object v5, v20, v21

    const/16 v21, 0x2

    aput-object v12, v20, v21

    const/16 v21, 0x3

    aput-object v16, v20, v21

    const/16 v21, 0x4

    aput-object v2, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3
.end method

.method public visualizeResizeForDelta(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->visualizeResizeForDelta(IIZ)V

    return-void
.end method
