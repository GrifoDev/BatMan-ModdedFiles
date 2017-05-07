.class public Lcom/samsung/android/widget/SemHoverPopupWindow;
.super Ljava/lang/Object;
.source "SemHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemHoverPopupWindow$Gravity;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;
    }
.end annotation


# static fields
.field private static final AIRCOMMAND_MORPH_USP:Ljava/lang/String;

.field private static final ANIMATION_BY_POINTER_POSITION_ENABLED:Z

.field static final DEBUG:Z = false

.field private static final DEVICE_TYPE:Ljava/lang/String;

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final HOVER_DETECT_TIME_MS_DEX:I = 0x2ee

.field private static final MSG_DISMISS_POPUP:I = 0x2

.field private static final MSG_SHOW_POPUP:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field private static final POPUP_TIMEOUT_MS_DEX:I = 0x1388

.field private static final SUPPORT_DEX_MODE:Z = true

.field static final TAG:Ljava/lang/String; = "SemHoverPopupWindow"

.field private static final TIMEOUT_DELAY:I = 0x1f4

.field private static final TIMEOUT_DELAY_LONG:I = 0x7d0

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x3e8

.field private static mIsCheckedRealDisplayMetricsInDexMode:Z

.field private static mIsTaskBarInBottomInDexMode:Z

.field private static mRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;


# instance fields
.field private final ANCHORVIEW_COORDINATES_TYPE_NONE:I

.field private final ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

.field private final ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

.field private H:F

.field private final ID_TOOLTIP_VIEW:I

.field private final MARGIN_FOR_HOVER_RING:I

.field private MOVE_CENTER:I

.field private MOVE_LEFT:I

.field private MOVE_LEFT_TO_CENTER:I

.field private MOVE_RIGHT:I

.field private MOVE_RIGHT_TO_CENTER:I

.field private final SHOW_ANIMATION_DURATION:I

.field private TW:F

.field private W:F

.field private mAnchorRect:Landroid/graphics/Rect;

.field private mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field private mCenterPoint:Landroid/graphics/PointF;

.field private mContainerLeftOnWindow:I

.field private mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

.field private mContentHeight:I

.field private mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field private mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCoordinatesOfAnchorView:I

.field private mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mDirection:I

.field private mDismissHandler:Landroid/os/Handler;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mDismissTouchableHPWOnActionUp:Z

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mDisplayFrameLeft:I

.field private mDisplayFrameRight:I

.field private mDisplayWidthToComputeAniWidth:I

.field private mEnabled:Z

.field private mFontScale:F

.field private mFullTextPopupRightLimit:I

.field private mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field private mGuideRingDrawableId:I

.field private mHandler:Landroid/os/Handler;

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mIsFHAnimationEnabled:Z

.field private mIsFHAnimationEnabledByApp:Z

.field private mIsFHGuideLineEnabled:Z

.field private mIsFHGuideLineEnabledByApp:Z

.field private mIsFHSoundAndHapticEnabled:Z

.field protected mIsGuideLineEnabled:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsInfoPickerMoveEabled:Z

.field private mIsInfoPickerMoveEabledByApp:Z

.field private mIsPopupTouchable:Z

.field private mIsProgressBar:Z

.field private mIsSPenPointChanged:Z

.field private mIsSetInfoPickerColorToAndMoreBottomImg:Z

.field private mIsShowMessageSent:Z

.field private mIsSkipPenPointEffect:Z

.field private mIsTryingShowPopup:Z

.field private mIsUspFeature:Z

.field private mLeftPoint:Landroid/graphics/PointF;

.field private mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

.field private mNeedNotWindowOffset:Z

.field private mNeedToMeasureContentView:Z

.field private mOverTopBoundary:Z

.field protected final mParentView:Landroid/view/View;

.field private mPenWindowStartPos:Landroid/graphics/Point;

.field private mPickerPadding:F

.field private mPickerXoffset:I

.field private mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field private mPopupPosX:I

.field private mPopupPosY:I

.field protected mPopupType:I

.field private mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

.field private mReferncedAnchorRect:Landroid/graphics/Rect;

.field private mRightPoint:Landroid/graphics/PointF;

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field private mToolType:I

.field private mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

.field private mWindowGapX:I

.field private mWindowGapY:I

.field private misDialer:Z

.field private misGravityBottomUnder:Z

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->H:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/widget/SemHoverPopupWindow;)Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDirection:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/widget/SemHoverPopupWindow;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameLeft:I

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameRight:I

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    return v0
.end method

.method static synthetic -get20(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method static synthetic -get21(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method static synthetic -get22(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    return v0
.end method

.method static synthetic -get23(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    return v0
.end method

.method static synthetic -get25(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerPadding:F

    return v0
.end method

.method static synthetic -get26(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerXoffset:I

    return v0
.end method

.method static synthetic -get27(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get28(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    return v0
.end method

.method static synthetic -get29(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT:I

    return v0
.end method

.method static synthetic -get30(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get31(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic -get32(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    return v0
.end method

.method static synthetic -get33(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    return v0
.end method

.method static synthetic -get34(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimationValue:F

    return v0
.end method

.method static synthetic -get35(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->TW:F

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->W:F

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContainerLeftOnWindow:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemHoverPopupWindow;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->W:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/widget/SemHoverPopupWindow;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDirection:I

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic -set5(Lcom/samsung/android/widget/SemHoverPopupWindow;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimationValue:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemHoverPopupWindow;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setAnimator(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPopup()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->DEVICE_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "ro.aircommand.morph.usp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->AIRCOMMAND_MORPH_USP:Ljava/lang/String;

    const-string/jumbo v0, "2016B"

    const-string/jumbo v1, "ro.build.scafe.version"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANIMATION_BY_POINTER_POSITION_ENABLED:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTaskBarInBottomInDexMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7010001

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ID_TOOLTIP_VIEW:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MARGIN_FOR_HOVER_RING:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_NONE:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

    iput v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    iput v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->W:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->H:F

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->TW:F

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    const/high16 v0, 0x42580000    # 54.0f

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerPadding:F

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->SHOW_ANIMATION_DURATION:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT:I

    iput v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_CENTER:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_CENTER:I

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDirection:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameLeft:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameRight:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContainerLeftOnWindow:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerXoffset:I

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iput v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initInstance()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    invoke-static {}, Landroid/view/ViewRootImpl;->isDesktopmode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2ee

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    :cond_0
    new-instance v0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/widget/SemHoverPopupWindow$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$2;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    return-void
.end method

.method private computePopupPosition(Landroid/view/View;III)V
    .locals 57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v52, v0

    if-nez v52, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_16

    move-object/from16 v52, p1

    :goto_0
    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    if-eqz p1, :cond_17

    move-object/from16 v7, p1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    const/4 v6, 0x0

    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v5, v0, [I

    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v4, v0, [I

    invoke-virtual {v7, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationInWindow([I)V

    const/16 v25, 0x1

    new-instance v33, Landroid/graphics/Rect;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v52

    if-nez v52, :cond_18

    const/16 v25, 0x0

    :cond_1
    if-nez v25, :cond_2

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v52, 0x0

    aget v52, v5, v52

    const/16 v53, 0x0

    aget v53, v4, v53

    sub-int v42, v52, v53

    const/16 v52, 0x1

    aget v52, v5, v52

    const/16 v53, 0x1

    aget v53, v4, v53

    sub-int v43, v52, v53

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v52, v0

    sub-int v52, v52, v42

    const/16 v53, 0x0

    aput v52, v4, v53

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v52, v0

    sub-int v52, v52, v43

    const/16 v53, 0x1

    aput v52, v4, v53

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v52, v0

    const/16 v53, 0x0

    aput v52, v5, v53

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v52, v0

    const/16 v53, 0x1

    aput v52, v5, v53

    :cond_2
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v35, Landroid/graphics/Rect;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getWidth()I

    move-result v38

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getHeight()I

    move-result v37

    const/16 v52, 0x0

    aget v52, v5, v52

    const/16 v53, 0x0

    aget v53, v4, v53

    sub-int v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v52, v0

    add-int v52, v52, v38

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->right:I

    const/16 v52, 0x1

    aget v52, v5, v52

    const/16 v53, 0x1

    aget v53, v4, v53

    sub-int v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v52, v0

    add-int v52, v52, v37

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v52, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_3

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v52, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v53, v0

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_1a

    :cond_3
    :goto_2
    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v52

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_1c

    const/16 v52, 0x0

    aget v52, v5, v52

    const/16 v53, 0x0

    aget v53, v4, v53

    sub-int v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    const/16 v52, 0x1

    aget v52, v5, v52

    const/16 v53, 0x1

    aget v53, v4, v53

    sub-int v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    const/16 v52, 0x1

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    if-eqz v25, :cond_1b

    new-instance v6, Landroid/graphics/Rect;

    const/16 v52, 0x0

    aget v52, v4, v52

    const/16 v53, 0x1

    aget v53, v4, v53

    const/16 v54, 0x0

    aget v54, v4, v54

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v55

    add-int v54, v54, v55

    const/16 v55, 0x1

    aget v55, v4, v55

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v56

    add-int v55, v55, v56

    move/from16 v0, v52

    move/from16 v1, v53

    move/from16 v2, v54

    move/from16 v3, v55

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_5
    :goto_3
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v52, v0

    if-gez v52, :cond_7

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v52, v0

    if-gez v52, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v49

    move-object/from16 v0, v49

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v52, v0

    if-eqz v52, :cond_7

    move-object/from16 v51, v49

    check-cast v51, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v51

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v52, v0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v53, v0

    or-int v52, v52, v53

    move/from16 v0, v52

    and-int/lit16 v0, v0, 0x404

    move/from16 v52, v0

    if-nez v52, :cond_1e

    const/16 v27, 0x1

    :goto_4
    const/16 v41, 0x0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v52, v0

    move/from16 v0, v52

    and-int/lit16 v0, v0, 0x200

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_6

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x1050017

    invoke-virtual/range {v52 .. v53}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v41

    :cond_6
    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v0, v41

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_7
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v52, v0

    const/16 v53, 0x0

    move/from16 v0, v53

    move/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameLeft:I

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v52, v0

    const/16 v53, 0x0

    move/from16 v0, v53

    move/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameRight:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameLeft:I

    move/from16 v53, v0

    sub-int v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v52, v0

    if-nez v52, :cond_1f

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v52, v0

    const/high16 v53, -0x80000000

    invoke-static/range {v52 .. v53}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v50

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v52, v0

    const/high16 v53, -0x80000000

    invoke-static/range {v52 .. v53}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move/from16 v1, v50

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v15}, Landroid/widget/PopupWindow;->setHeight(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v6, v1, v2, v15}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    new-instance v52, Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v54, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v55, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v56, v0

    invoke-direct/range {v52 .. v56}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    move/from16 v32, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v52, v0

    const/16 v53, 0x2

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_23

    add-int v52, v32, v15

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v53, v0

    move/from16 v0, v52

    move/from16 v1, v53

    if-le v0, v1, :cond_8

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v52, v0

    move/from16 v0, v32

    move/from16 v1, v52

    if-lt v0, v1, :cond_22

    :cond_8
    :goto_6
    const/4 v8, 0x1

    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v52, v0

    if-nez v52, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v52, v0

    if-eqz v52, :cond_34

    :cond_a
    if-eqz v8, :cond_34

    const/16 v26, 0x1

    const/high16 v52, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v28

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v52, v0

    const/16 v53, 0x2

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_25

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v52, v0

    move/from16 v0, v31

    move/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v52

    const/16 v53, 0x0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int v52, v31, v17

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->max(II)I

    move-result v52

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v14

    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContainerLeftOnWindow:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v52

    move/from16 v0, v32

    move/from16 v1, v52

    if-le v0, v1, :cond_26

    const/16 v26, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    if-nez v52, :cond_c

    new-instance v52, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v53, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/view/View;->setBackgroundColor(I)V

    const-string/jumbo v52, "SemHoverPopupWindow"

    const-string/jumbo v53, "FingerSemHoverPopupWindow: kdhpoint2"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideRingDrawableId:I

    move/from16 v53, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineColor:I

    move/from16 v54, v0

    invoke-virtual/range {v52 .. v54}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    if-eqz v52, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v52, v0

    if-nez v52, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v52, v0

    if-eqz v52, :cond_27

    :cond_d
    const-string/jumbo v52, "SemHoverPopupWindow"

    const-string/jumbo v53, "FingerSemHoverPopupWindow: Call setOverTopForCotainer(true)"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-virtual/range {v52 .. v53}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    :cond_e
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    if-nez v16, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v52, v0

    new-instance v53, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v53

    move/from16 v1, v17

    invoke-direct {v0, v1, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v52 .. v53}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v52

    if-eqz v52, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_29

    :cond_f
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v52

    if-nez v52, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v52, v0

    const/16 v53, -0x2

    invoke-virtual/range {v52 .. v53}, Landroid/widget/PopupWindow;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v52, v0

    const/16 v53, -0x2

    invoke-virtual/range {v52 .. v53}, Landroid/widget/PopupWindow;->setHeight(I)V

    sub-int v52, v9, v31

    invoke-static/range {v52 .. v52}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int v52, v31, v17

    sub-int v52, v14, v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v52, v0

    if-eqz v52, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v52, v0

    if-eqz v52, :cond_2b

    if-eqz v26, :cond_2a

    move/from16 v10, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v53

    move/from16 v2, v28

    invoke-virtual {v0, v11, v1, v12, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v52, v0

    const/16 v53, 0x2

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_31

    if-eqz v26, :cond_11

    move/from16 v31, v9

    :cond_11
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v52, v0

    sub-int v52, v52, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    move/from16 v53, v0

    sub-int v23, v52, v53

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v52, v0

    sub-int v52, v52, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    move/from16 v53, v0

    sub-int v24, v52, v53

    if-eqz v26, :cond_33

    invoke-virtual {v7}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v48

    if-eqz v48, :cond_12

    :cond_12
    div-int/lit8 v52, v17, 0x2

    add-int v39, v11, v52

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineFadeOffset:I

    move/from16 v52, v0

    sub-int v40, v15, v52

    move/from16 v20, v23

    move/from16 v21, v24

    add-int/lit8 v52, v11, 0xa

    move/from16 v0, v23

    move/from16 v1, v52

    if-ge v0, v1, :cond_13

    :cond_13
    :goto_f
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    sget-boolean v52, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANIMATION_BY_POINTER_POSITION_ENABLED:Z

    if-eqz v52, :cond_14

    mul-int/lit8 v52, v17, 0x1

    div-int/lit8 v52, v52, 0x3

    add-int v29, v31, v52

    mul-int/lit8 v52, v17, 0x2

    div-int/lit8 v52, v52, 0x3

    add-int v44, v31, v52

    mul-int/lit8 v52, v15, 0x1

    div-int/lit8 v52, v52, 0x3

    add-int v30, v32, v52

    mul-int/lit8 v52, v15, 0x2

    div-int/lit8 v52, v52, 0x3

    add-int v45, v32, v52

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v29

    if-ge v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v45

    if-le v0, v1, :cond_3a

    const v52, 0x1030516

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    :cond_14
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v52, v0

    if-nez v52, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    if-eqz v52, :cond_15

    const-string/jumbo v52, "SemHoverPopupWindow"

    const-string/jumbo v53, "SemHoverPopupWindow.computePopupPosition() : Call setFHmoveAnimationOffset(0)"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setFHmoveAnimationOffset(I)V

    :cond_15
    return-void

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v52, v0

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    :cond_18
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v47

    :goto_11
    move-object/from16 v0, v47

    instance-of v0, v0, Landroid/view/View;

    move/from16 v52, v0

    if-eqz v52, :cond_1

    move-object/from16 v46, v47

    check-cast v46, Landroid/view/View;

    invoke-virtual/range {v46 .. v46}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v52

    if-nez v52, :cond_19

    const/16 v25, 0x0

    :cond_19
    invoke-virtual/range {v46 .. v46}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v47

    goto :goto_11

    :cond_1a
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v52, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v53, v0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_3

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v52, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v53, v0

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_4

    goto/16 :goto_2

    :cond_1b
    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v52, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    sub-int v52, v52, v53

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v53, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v54, v0

    sub-int v53, v53, v54

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v54, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v55, v0

    sub-int v54, v54, v55

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v55, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v56, v0

    sub-int v55, v55, v56

    move/from16 v0, v52

    move/from16 v1, v53

    move/from16 v2, v54

    move/from16 v3, v55

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_3

    :cond_1c
    const/16 v52, 0x2

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    if-eqz v25, :cond_1d

    new-instance v6, Landroid/graphics/Rect;

    const/16 v52, 0x0

    aget v52, v5, v52

    const/16 v53, 0x1

    aget v53, v5, v53

    const/16 v54, 0x0

    aget v54, v5, v54

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v55

    add-int v54, v54, v55

    const/16 v55, 0x1

    aget v55, v5, v55

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v56

    add-int v55, v55, v56

    move/from16 v0, v52

    move/from16 v1, v53

    move/from16 v2, v54

    move/from16 v3, v55

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_12
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v52, v0

    if-gez v52, :cond_5

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v52, v0

    if-gez v52, :cond_5

    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_1d
    new-instance v6, Landroid/graphics/Rect;

    const/16 v52, 0x0

    aget v52, v5, v52

    const/16 v53, 0x1

    aget v53, v5, v53

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v54, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v55, v0

    move/from16 v0, v52

    move/from16 v1, v53

    move/from16 v2, v54

    move/from16 v3, v55

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_12

    :cond_1e
    const/16 v27, 0x0

    goto/16 :goto_4

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v52, v0

    if-ltz v52, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v52, v0

    const/high16 v53, 0x40000000    # 2.0f

    invoke-static/range {v52 .. v53}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v50

    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v52, v0

    if-ltz v52, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v52, v0

    const/high16 v53, 0x40000000    # 2.0f

    invoke-static/range {v52 .. v53}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    goto/16 :goto_5

    :cond_20
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v52, v0

    const/high16 v53, -0x80000000

    invoke-static/range {v52 .. v53}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v50

    goto :goto_13

    :cond_21
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v52, v0

    const/high16 v53, -0x80000000

    invoke-static/range {v52 .. v53}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    goto/16 :goto_5

    :cond_22
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v52, v0

    add-int v52, v52, v32

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v53, v0

    move/from16 v0, v52

    move/from16 v1, v53

    if-lt v0, v1, :cond_9

    goto/16 :goto_6

    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_9

    add-int v52, v32, v15

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v53, v0

    move/from16 v0, v52

    move/from16 v1, v53

    if-le v0, v1, :cond_24

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v52, v0

    move/from16 v0, v32

    move/from16 v1, v52

    if-lt v0, v1, :cond_9

    :cond_24
    const/4 v8, 0x1

    goto/16 :goto_7

    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_b

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v52, v0

    move/from16 v0, v31

    move/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v52

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v53, v0

    move/from16 v0, v53

    neg-int v0, v0

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int v52, v31, v17

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->max(II)I

    move-result v52

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v53, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v54, v0

    sub-int v53, v53, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    move/from16 v52, v0

    const/16 v53, -0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    move/from16 v52, v0

    move/from16 v0, v52

    if-le v14, v0, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    goto/16 :goto_8

    :cond_26
    const/16 v26, 0x1

    goto/16 :goto_9

    :cond_27
    const-string/jumbo v52, "SemHoverPopupWindow"

    const-string/jumbo v53, "FingerSemHoverPopupWindow: Call setOverTopForCotainer(false)"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    goto/16 :goto_a

    :cond_28
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, v16

    iput v15, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_b

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_c

    :cond_2a
    move/from16 v13, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v28

    move/from16 v2, v53

    invoke-virtual {v0, v11, v1, v12, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_d

    :cond_2b
    if-eqz v26, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v52, v0

    const/16 v53, 0x2

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_2d

    move/from16 v10, v28

    :cond_2c
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v0, v11, v1, v12, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_d

    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_2c

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v52, v0

    add-int v52, v52, v28

    add-int v53, v32, v15

    sub-int v10, v52, v53

    goto :goto_14

    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v52, v0

    const/16 v53, 0x2

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_30

    move/from16 v13, v28

    :cond_2f
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v0, v11, v13, v12, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_d

    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_2f

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v52, v0

    sub-int v52, v52, v28

    sub-int v13, v32, v52

    goto :goto_15

    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_11

    if-eqz v26, :cond_32

    move/from16 v31, v9

    goto/16 :goto_e

    :cond_32
    move/from16 v31, v9

    sub-int v32, v32, v13

    goto/16 :goto_e

    :cond_33
    invoke-virtual {v7}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v48

    if-eqz v48, :cond_13

    goto/16 :goto_f

    :cond_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v52, v0

    if-eqz v52, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v52, v0

    if-eqz v52, :cond_36

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    if-eqz v52, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v52, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_f

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v52, v0

    if-nez v52, :cond_37

    new-instance v52, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v53, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v52

    if-nez v52, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_38
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v52, v0

    if-eqz v52, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    move/from16 v52, v0

    const/16 v53, 0x3

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_13

    const-string/jumbo v52, "SemHoverPopupWindow"

    const-string/jumbo v53, "computePopupPosition: Call resetTimeout()"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto/16 :goto_f

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_16

    :cond_3a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v45

    if-gt v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v30

    if-lt v0, v1, :cond_3b

    const v52, 0x1030517

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_10

    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v30

    if-ge v0, v1, :cond_14

    const v52, 0x1030518

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_10

    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v52, v0

    move/from16 v0, v29

    move/from16 v1, v52

    if-gt v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v44

    if-gt v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v45

    if-le v0, v1, :cond_3d

    const v52, 0x1030519

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_10

    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v45

    if-gt v0, v1, :cond_3e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v30

    if-lt v0, v1, :cond_3e

    const v52, 0x103051a

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_10

    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v30

    if-ge v0, v1, :cond_14

    const v52, 0x103051b

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_10

    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v44

    if-le v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v45

    if-le v0, v1, :cond_40

    const v52, 0x103051c

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_10

    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v45

    if-gt v0, v1, :cond_41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v30

    if-lt v0, v1, :cond_41

    const v52, 0x103051d

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_10

    :cond_41
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v30

    if-ge v0, v1, :cond_14

    const v52, 0x103051e

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_10
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v7, v0, 0xf0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v23, v0

    const v24, 0xf0f0

    and-int v18, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050390

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050391

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v23, v0

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int v9, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v10, v23, v24

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    const/4 v8, 0x0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v21, v19

    check-cast v21, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v24, v0

    or-int v23, v23, v24

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x404

    move/from16 v23, v0

    if-nez v23, :cond_d

    const/4 v8, 0x1

    :cond_1
    :goto_1
    const/4 v14, 0x0

    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050017

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    :cond_2
    add-int v23, v10, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    const/16 v23, 0x5050

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    div-int/lit8 v24, p3, 0x2

    sub-int v9, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v23, v0

    add-int v9, v9, v23

    :cond_3
    :goto_2
    const-string/jumbo v23, "SemHoverPopupWindow"

    const-string/jumbo v24, "computePopupPositionInternal: check window boundary "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050395

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    if-gez v9, :cond_11

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    sub-int v23, v23, v6

    move/from16 v0, p3

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    const/4 v9, 0x0

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    const/4 v8, 0x0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v21, v19

    check-cast v21, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v24, v0

    or-int v23, v23, v24

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x404

    move/from16 v23, v0

    if-nez v23, :cond_1a

    const/4 v8, 0x1

    :cond_6
    :goto_5
    const/4 v14, 0x0

    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050017

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    :cond_7
    if-ge v10, v14, :cond_1e

    const/16 v23, 0x3030

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    move/from16 v1, p4

    if-lt v0, v1, :cond_1b

    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v23, v0

    add-int v10, v10, v23

    const-string/jumbo v23, "SemHoverPopupWindow"

    const-string/jumbo v24, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    return-void

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    goto/16 :goto_0

    :cond_a
    sparse-switch v7, :sswitch_data_0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v23, v0

    add-int v9, v9, v23

    sparse-switch v18, :sswitch_data_1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v23, v0

    add-int v10, v10, v23

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v9, v23, p3

    goto :goto_7

    :sswitch_1
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->left:I

    goto :goto_7

    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    sub-int v9, v23, p3

    goto :goto_7

    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    div-int/lit8 v24, p3, 0x2

    sub-int v9, v23, v24

    goto :goto_7

    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    goto :goto_7

    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v9, v23, p3

    goto :goto_7

    :sswitch_6
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->right:I

    goto :goto_7

    :sswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    div-int/lit8 v24, p3, 0x2

    sub-int v9, v23, v24

    goto :goto_7

    :sswitch_8
    invoke-static {}, Landroid/view/ViewRootImpl;->isDesktopmode()Z

    move-result v23

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v23, v0

    div-int/lit8 v24, p3, 0x2

    sub-int v9, v23, v24

    goto :goto_7

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v23, v0

    div-int/lit8 v24, p3, 0x2

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    move/from16 v24, v0

    sub-int v9, v23, v24

    goto :goto_7

    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v10, v23, p4

    goto :goto_8

    :sswitch_a
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->top:I

    goto :goto_8

    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v23

    div-int/lit8 v24, p4, 0x2

    sub-int v10, v23, v24

    goto/16 :goto_8

    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v10, v23, p4

    goto/16 :goto_8

    :sswitch_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int v10, v23, v17

    :goto_9
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    goto/16 :goto_8

    :cond_c
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    add-int v23, v10, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    const/16 v23, 0x5050

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p4

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050017

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v0, v14, :cond_f

    add-int v23, v10, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    div-int/lit8 v24, p3, 0x2

    sub-int v9, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v23, v0

    add-int v9, v9, v23

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v23, v23, v10

    add-int v23, v23, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    div-int/lit8 v24, p3, 0x2

    sub-int v9, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v23, v0

    add-int v9, v9, v23

    goto/16 :goto_2

    :cond_11
    add-int v23, v9, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    sub-int v23, v23, p3

    sub-int v23, v23, v6

    move/from16 v0, v23

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "window"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int v23, v23, v9

    if-gtz v23, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050395

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v23, v23, p3

    move/from16 v0, v23

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    add-int v23, v23, v6

    move/from16 v0, v23

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    sub-int v23, v23, v6

    move/from16 v0, p3

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    const/4 v9, 0x0

    :cond_13
    const-string/jumbo v23, "window"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v20

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_14
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int v23, v23, v9

    add-int v23, v23, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050395

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :try_start_0
    const-string/jumbo v23, "window"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v20

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int v23, v23, v9

    add-int v23, v23, p3

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_15

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v23, v23, p3

    sub-int v23, v23, v6

    move/from16 v0, v23

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_15
    add-int v23, v9, p3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    sub-int v23, v23, v6

    move/from16 v0, p3

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    const/4 v9, 0x0

    goto/16 :goto_4

    :catch_0
    move-exception v5

    const-string/jumbo v23, "SemHoverPopupWindow"

    const-string/jumbo v24, "SemHoverPopupWindow:computePopupPositionInternal : WINDOW_SERVICE remote exception occurred. "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_16
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    if-ltz v23, :cond_5

    const-string/jumbo v23, "window"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v20

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050395

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    move/from16 v1, p3

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v23, v23, p3

    move/from16 v0, v23

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int v23, v23, v9

    add-int v23, v23, p3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_19

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    add-int v24, p3, v6

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_18

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v23, v23, p3

    sub-int v23, v23, v6

    move/from16 v0, v23

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    move/from16 v1, p3

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v23, v23, p3

    move/from16 v0, v23

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_4

    :cond_19
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_4

    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_1b
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v24, v24, v14

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1c

    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    const-string/jumbo v23, "SemHoverPopupWindow"

    const-string/jumbo v24, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    :cond_1c
    move v10, v14

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1d
    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_6

    :cond_1e
    add-int v23, v10, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_20

    const/16 v23, 0x5050

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p4

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v10, v23, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v23, v0

    sub-int v10, v10, v23

    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3: misGravityBottomUnder = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1f
    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v10, v23, p4

    goto/16 :goto_6

    :cond_20
    const/16 v23, 0x3030

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    const/4 v8, 0x0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v23, v0

    if-eqz v23, :cond_22

    move-object/from16 v21, v19

    check-cast v21, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v24, v0

    or-int v23, v23, v24

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x404

    move/from16 v23, v0

    if-nez v23, :cond_25

    const/4 v8, 0x1

    :cond_22
    :goto_b
    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050017

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    if-eqz v8, :cond_23

    move v12, v14

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v23, v23, v10

    move/from16 v0, v23

    if-ge v0, v14, :cond_2b

    const/16 v23, 0x3030

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_2a

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v23, v23, v14

    move/from16 v0, v23

    move/from16 v1, p4

    if-lt v0, v1, :cond_26

    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v23, v23, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    move/from16 v1, p4

    if-lt v0, v1, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v23, v0

    add-int v10, v10, v23

    :cond_24
    const-string/jumbo v23, "SemHoverPopupWindow"

    const-string/jumbo v24, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    :cond_25
    const/4 v8, 0x0

    goto/16 :goto_b

    :cond_26
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v23, v23, v14

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_27

    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    const-string/jumbo v23, "SemHoverPopupWindow"

    const-string/jumbo v24, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    :cond_27
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v23, v23, v24

    sub-int v23, v23, p4

    sub-int v23, v23, v12

    if-lez v23, :cond_28

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    :cond_28
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v23, v23, v24

    sub-int v23, v23, p4

    if-lez v23, :cond_29

    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    const-string/jumbo v23, "SemHoverPopupWindow"

    const-string/jumbo v24, "computePopupPositionInternal: Set mOverTopBoundary = true #1-2"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    :cond_29
    move v10, v14

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_2a
    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_6

    :cond_2b
    add-int v23, v10, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_30

    const/16 v23, 0x5050

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p4

    if-lt v0, v1, :cond_2d

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v0, v14, :cond_2c

    add-int v23, v10, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_2c

    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-1: misGravityBottomUnder = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_2c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v10, v23, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v23, v0

    sub-int v10, v10, v23

    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_2d
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v23, v23, v10

    add-int v23, v23, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v10, v23, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v23, v0

    sub-int v10, v10, v23

    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_2e
    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v0, v12, :cond_2f

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v23, v23, p4

    move/from16 v0, v23

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_6

    :cond_2f
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v23, v23, p4

    move/from16 v0, v23

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_6

    :cond_30
    const/16 v23, 0x3030

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_34

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    if-ge v10, v14, :cond_31

    add-int v23, v10, p4

    add-int v23, v23, v14

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_31

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v23, v23, v24

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_31

    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    :cond_31
    const-string/jumbo v23, "SemHoverPopupWindow"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_c
    invoke-static {}, Landroid/view/ViewRootImpl;->isDesktopmode()Z

    move-result v23

    if-eqz v23, :cond_8

    sget-boolean v23, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTaskBarInBottomInDexMode:Z

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/samsung/android/framework/res/R$dimen;->task_bar_height:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v23, v23, v10

    add-int v23, v23, p4

    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    sub-int v24, v24, v15

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    const/16 v23, 0x5050

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    add-int v23, v23, v24

    div-int/lit8 v24, p3, 0x2

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v24, v0

    add-int v23, v23, v24

    add-int v23, v23, p3

    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_35

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    div-int/lit8 v24, p3, 0x2

    sub-int v9, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v23, v0

    add-int v9, v9, v23

    :cond_33
    :goto_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v10, v23, p4

    goto/16 :goto_6

    :cond_34
    if-ge v10, v14, :cond_32

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v0, v14, :cond_32

    move v10, v14

    goto/16 :goto_c

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050395

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v23, v23, p3

    sub-int v9, v23, v6

    goto :goto_d

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_1
        0x5 -> :sswitch_5
        0x101 -> :sswitch_7
        0x103 -> :sswitch_2
        0x105 -> :sswitch_4
        0x201 -> :sswitch_8
        0x303 -> :sswitch_0
        0x505 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_b
        0x30 -> :sswitch_a
        0x50 -> :sswitch_c
        0x3030 -> :sswitch_9
        0x5050 -> :sswitch_d
    .end sparse-switch
.end method

.method private dismissPopup()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private getStateHashCode()I
    .locals 4

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    const/4 v2, 0x2

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    :cond_0
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initCoverManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemHoverPopupWindow"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private isTalkbackEnabledForDeX()Z
    .locals 5

    invoke-static {}, Landroid/view/ViewRootImpl;->isDesktopmode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enabled_accessibility_services"

    const/4 v4, -0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private isViewCoverClose()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    invoke-interface {v3}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SemHoverPopupWindow"

    const-string/jumbo v4, "RemoteException in getCoverState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private makeToolTipContentView()V
    .locals 8

    const v7, 0x7010001

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->fontScale:F

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v7, :cond_4

    :cond_1
    :goto_1
    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_2

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x1090077

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_3

    goto :goto_1
.end method

.method private playSoundAndHapticFeedback()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    const v1, 0xc369

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private pointInValidHoverArea(FF)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private resetTimeout()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "gt5note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "noble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "gts3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setAnimator(II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT:I

    if-ne p2, v0, :cond_1

    :cond_0
    new-array v0, v1, [F

    aput v2, v0, v3

    int-to-float v1, p1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;

    invoke-direct {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$3;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    if-ne p2, v0, :cond_3

    :cond_2
    new-array v0, v1, [F

    int-to-float v1, p1

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_3
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setPopupContent()V
    .locals 7

    const/4 v6, 0x0

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    packed-switch v4, :pswitch_data_0

    iput-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v4, v5, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;->onSetContentView(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    :cond_1
    return-void

    :pswitch_0
    iput-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_0

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentResId:I

    if-eqz v4, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    :try_start_0
    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentResId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iput-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPopup()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getIsDetachedFromWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setFHGuideLineEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setPopupContent()V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V

    return-void
.end method

.method private updateHoverPopup(Landroid/view/View;III)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_1
    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method


# virtual methods
.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismissPopup()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getFHAnimationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method public getFHGuideLineEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method public getInfoPickerMoveEabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method public getIsDismissTouchableHPWOnActionUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected getRealDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 5

    sget-boolean v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    if-nez v3, :cond_0

    invoke-static {}, Landroid/view/ViewRootImpl;->isDesktopmode()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    :try_start_0
    invoke-interface {v2, v0}, Landroid/view/IWindowManager;->getDefaultDisplaySize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    iget v4, v0, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SemHoverPopupWindow"

    const-string/jumbo v4, "RemoteException windowManager.getDefaultDisplaySize in getRealDisplayMetrics: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    return-object v3
.end method

.method protected initInstance()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    const/16 v1, 0x3231

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {}, Landroid/view/ViewRootImpl;->isDesktopmode()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1030515

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misDialer:Z

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsProgressBar:Z

    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineFadeOffset:I

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x166

    const v2, 0x108036e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideRingDrawableId:I

    const/16 v1, 0x165

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initCoverManager()V

    return-void

    :cond_0
    const v1, 0x1030514

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method public isDialer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misDialer:Z

    return v0
.end method

.method protected isFingerHoveringSettingsEnabled(I)Z
    .locals 6

    const/4 v5, -0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_air_view"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    if-eq p1, v1, :cond_5

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_air_view_information_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isDialer()Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isDialer()Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public isHoverPopupPossible()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isHoveringSettingEnabled(I)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isSPenHoveringSettingsEnabled(I)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isFingerHoveringSettingsEnabled(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method protected isMouseHoveringSettingsEnabled(I)Z
    .locals 1

    invoke-static {}, Landroid/view/ViewRootImpl;->isDesktopmode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProgressBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsProgressBar:Z

    return v0
.end method

.method protected isSPenHoveringSettingsEnabled(I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    const/4 v5, -0x3

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUseOldAirviewSettingsMenu()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "true"

    sget-object v2, Lcom/samsung/android/widget/SemHoverPopupWindow;->AIRCOMMAND_MORPH_USP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected isUspFeature()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    return v0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeToolTipContentView()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    sub-long v16, v22, v24

    const-wide/16 v22, 0x3e8

    cmp-long v21, v16, v22

    if-lez v21, :cond_0

    const/16 v21, 0x1

    return v21

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    :cond_1
    :goto_0
    const/16 v21, 0x0

    return v21

    :cond_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_0

    :cond_3
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v14, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoveringPoint(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    :cond_4
    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v12

    instance-of v0, v12, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    move-object v6, v12

    check-cast v6, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v21

    add-int v10, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setPickerLimit(II)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v18

    if-eqz v18, :cond_b

    new-instance v15, Landroid/graphics/PointF;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v22

    if-nez v21, :cond_8

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_12

    :cond_8
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    if-eqz v21, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_a
    int-to-float v0, v13

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->x:F

    int-to-float v0, v14

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->y:F

    iget v0, v8, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v8, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-nez v21, :cond_13

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->resetTimeout()V

    :cond_d
    const/16 v21, 0x1

    return v21

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    sub-long v16, v22, v24

    const-wide/16 v22, 0x3e8

    cmp-long v21, v16, v22

    if-lez v21, :cond_f

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    const/16 v21, 0x1

    return v21

    :cond_f
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    const/16 v21, 0x1

    return v21

    :cond_10
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    const/16 v21, 0x1

    return v21

    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    move/from16 v22, v0

    sub-int v22, v14, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_15

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setFHGuideLineForCotainer(Z)V

    :cond_15
    invoke-virtual {v6}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    goto/16 :goto_3

    :cond_16
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setPopupState(I)V

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v21, 0x1

    return v21
.end method

.method protected postDismiss(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$6;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_0
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setDismissTouchableHPWOnActionUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return-void
.end method

.method public setFHAnimationEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setFHAnimationEnabledByApp(ZZ)V

    return-void
.end method

.method public setFHAnimationEnabledByApp(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    goto :goto_0
.end method

.method public setFHGuideLineEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setFHGuideLineEnabledByApp(ZZ)V

    return-void
.end method

.method public setFHGuideLineEnabledByApp(ZZ)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0
.end method

.method public setFHSoundAndHapticEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    return-void
.end method

.method public setGuideLineEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    return-void
.end method

.method public setGuideLineFadeOffset(I)V
    .locals 2

    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineFadeOffset:I

    return-void
.end method

.method public setGuideLineStyle(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideRingDrawableId:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineColor:I

    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    iput p3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    iput p4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public setHoverPopupPreShowListener(Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    return-void
.end method

.method public setHoverPopupToolType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    return-void
.end method

.method public setInfoPickerColorToAndMoreBottomImg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    return-void
.end method

.method public setInfoPickerMoveEabled(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInfoPickerMoveEabledByApp(ZZ)V

    return-void
.end method

.method public setInfoPickerMoveEabledByApp(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    goto :goto_0
.end method

.method protected setInstanceByType(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x5153

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    invoke-static {}, Landroid/view/ViewRootImpl;->isDesktopmode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2ee

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    const v0, 0x1030515

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    const v0, 0x1030514

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method public setInstanceOfDialer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misDialer:Z

    return-void
.end method

.method public setInstanceOfProgressBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsProgressBar:Z

    return-void
.end method

.method public setNeedNotWindowOffset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    return-void
.end method

.method public setOffset(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    return-void
.end method

.method public setOnSetContentViewListener(Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setOverTopPickerOffset(I)V

    :cond_0
    return-void
.end method

.method public setPickerXOffset(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerXoffset:I

    return-void
.end method

.method public setTouchable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 11

    const/4 v7, 0x0

    const/4 v10, 0x1

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->semGetHoverPopupType()I

    move-result v2

    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-eq v2, v5, :cond_0

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    invoke-interface {v5}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    if-eqz v5, :cond_3

    if-nez v2, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v5, :cond_3

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoverPopupPossible()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoveringSettingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isViewCoverClose()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isLockScreenMode()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isTalkbackEnabledForDeX()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v5, v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_7

    move-object v4, v3

    nop

    nop

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x8ac

    if-eq v5, v6, :cond_6

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x62

    if-ne v5, v6, :cond_7

    :cond_6
    invoke-virtual {p0, v7}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setFHGuideLineEnabled(Z)V

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v5, :cond_8

    invoke-virtual {p0, v10}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_8
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    if-ne v5, v10, :cond_9

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v10, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->playSoundAndHapticFeedback()V

    :cond_9
    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-ne v5, v10, :cond_a

    new-instance v5, Lcom/samsung/android/widget/SemHoverPopupWindow$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$4;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    :cond_a
    new-instance v5, Lcom/samsung/android/widget/SemHoverPopupWindow$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$5;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v7, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v10, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    return-void
.end method

.method protected showPenPointEffect(Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x4e2a

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x4e21

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_0
.end method

.method public update()V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0
.end method
