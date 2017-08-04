.class public Lcom/android/launcher3/folder/view/FolderView;
.super Landroid/widget/FrameLayout;
.source "FolderView.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/folder/FolderEventListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/launcher3/Stats$LaunchSourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/view/FolderView$OnScrollFinishedListener;,
        Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;,
        Lcom/android/launcher3/folder/view/FolderView$DropItem;,
        Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    }
.end annotation


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final FOLDER_NAME_BAR_COLOR_ALPHA_MASK:I = 0x4dffffff

.field private static final FOLDER_NAME_HINT_COLOR_ALPHA_MASK:I = -0x70000001

.field private static final ICON_OVERSCROLL_WIDTH_FACTOR:F = 0.45f

.field private static final ICON_PRESS_ALPHA_VALUE:F = 0.5f

.field private static final MIN_CONTENT_DIMEN:I = 0x5

.field private static final ON_EXIT_CLOSE_DELAY:I = 0x190

.field private static final REORDER_DELAY:I = 0xfa

.field public static final SCROLL_HINT_DURATION:I = 0x1f4

.field static final STATE_ANIMATING:I = 0x1

.field static final STATE_NONE:I = -0x1

.field static final STATE_OPEN:I = 0x2

.field static final STATE_SMALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

.field private static sColorPickerImages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultFolderName:Ljava/lang/String;

.field private static sHintText:Ljava/lang/String;

.field private static sOptionButtonImage:Landroid/graphics/Bitmap;


# instance fields
.field private mAddButton:Landroid/view/View;

.field private mAscComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;"
        }
    .end annotation
.end field

.field private mBorder:Landroid/widget/ImageView;

.field private mBorderHeight:I

.field private mBorderMargin:I

.field private mBorderWidth:I

.field private mColorPickerItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/folder/view/FolderView$FolderColor;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mColorPickerView:Landroid/view/View;

.field private mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

.field private mContentContainer:Landroid/view/View;

.field private mContentMinHeight:I

.field private mContentMinMargin:I

.field private mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

.field private mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

.field private mCurrentDragView:Landroid/view/View;

.field private mCurrentScrollDir:I

.field private mDeleteFolderOnDropCompleted:Z

.field private mDescComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private mDragInProgress:Z

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mEmptyCellRank:I

.field private mFadeInOutDuration:I

.field private mFolderColor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/folder/view/FolderView$FolderColor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderContainer:Landroid/view/View;

.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

.field private mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

.field private mFolderOptionButton:Landroid/widget/ImageView;

.field private mFooter:Landroid/view/View;

.field private mFooterHeight:I

.field private mHeader:Landroid/view/View;

.field private mHeaderBottomLine:Landroid/view/View;

.field private mHeaderHeight:I

.field private mHoverPointClosesFolder:Z

.field private mInfo:Lcom/android/launcher3/folder/FolderInfo;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field private final mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsInvalidated:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mNeedToShowCursor:Z

.field private final mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private final mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mOuterAddButtonContainer:Landroid/view/View;

.field private mOuterAddButtonContainerHeight:I

.field private mOuterAddButtonContainerMargin:I

.field private mPageSpacingOnDrag:I

.field private mPrevTargetRank:I

.field private mRearrangeOnClose:Z

.field private final mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private mRestorePositionOnDrop:Z

.field private mScrollAreaOffset:I

.field private mScrollHintDir:I

.field private final mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mSuppressFolderClose:Z

.field private mSuppressFolderDeletion:Z

.field private mSuppressOnAdd:Z

.field private mSuppressOnRemove:Z

.field private mTargetRank:I

.field private mTargetRankForRestore:I

.field private mViewState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v2, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v2, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v2, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v2, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v2}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInReadingOrder:Ljava/util/ArrayList;

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderDeletion:Z

    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mIsEditingName:Z

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    iput-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$1;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAscComparator:Ljava/util/Comparator;

    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$2;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mDescComparator:Ljava/util/Comparator;

    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$16;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$16;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$17;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$17;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/view/FolderView;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/folder/view/FolderView;->sDefaultFolderName:Ljava/lang/String;

    if-nez v2, :cond_0

    const v2, 0x7f080173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/folder/view/FolderView;->sDefaultFolderName:Ljava/lang/String;

    :cond_0
    sget-object v2, Lcom/android/launcher3/folder/view/FolderView;->sHintText:Ljava/lang/String;

    if-nez v2, :cond_1

    const v2, 0x7f080039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/folder/view/FolderView;->sHintText:Ljava/lang/String;

    :cond_1
    sget-object v2, Lcom/android/launcher3/folder/view/FolderView;->sColorPickerImages:Landroid/util/SparseArray;

    if-nez v2, :cond_2

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/android/launcher3/folder/view/FolderView;->sColorPickerImages:Landroid/util/SparseArray;

    :cond_2
    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFadeInOutDuration:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mPageSpacingOnDrag:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/view/FolderView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/folder/view/FolderView;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher3/folder/view/FolderView;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/launcher3/folder/view/FolderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/launcher3/folder/view/FolderView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/launcher3/folder/view/FolderView;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/launcher3/folder/view/FolderView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/common/base/controller/ControllerBase;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/folder/view/FolderView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher3/folder/view/FolderView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/launcher3/folder/view/FolderView;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/launcher3/folder/view/FolderView;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/folder/view/FolderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mNeedToShowCursor:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/util/alarm/Alarm;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/folder/view/FolderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mNeedToShowCursor:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView;->onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/folder/view/FolderView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/folder/view/FolderView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->doneEditingFolderName(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/folder/view/FolderView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView;->setFolderColor(Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderPagedView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    return-object v0
.end method

.method private animateAppear(Landroid/view/View;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderNameEditText;->clearFocus()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f040000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->appearColorPickerItems(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFadeInOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    return-void

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method private animateDismiss(Landroid/view/View;Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->dismissColorPickerItems(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFadeInOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_1
    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$21;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView$21;-><init>(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/View;Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private appearColorPickerItems(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private beginDrag(Landroid/view/View;Z)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRankForRestore:I

    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/folder/controller/FolderController;->updateCheckBox(Z)V

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, p1, p0, p2, v2}, Lcom/android/launcher3/Launcher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->removeItem(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/controller/FolderController;->enterDragState(Z)V

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private calculateBorderWidth()I
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContentAreaWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinMargin:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private calculateFolderHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContentAreaHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderHeight(I)I

    move-result v0

    return v0
.end method

.method private calculateFolderHeight(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private calculateFolderWidth()I
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher3/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    return v1
.end method

.method private centerAboutIcon()V
    .locals 12

    const/4 v11, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/android/launcher3/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderWidth()I

    move-result v8

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderHeight()I

    move-result v4

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    iget v9, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v8

    div-int/lit8 v5, v9, 0x2

    iget v9, v2, Landroid/graphics/Point;->y:I

    sub-int v10, v4, v3

    sub-int/2addr v9, v10

    div-int/lit8 v7, v9, 0x2

    iput v8, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    iput v4, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    iput v5, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    iput v7, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateBorderWidth()I

    move-result v1

    const/16 v9, 0x33

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    iget v10, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerMargin:I

    add-int/2addr v9, v10

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v9, v8, v1

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_0
    return-void

    :cond_0
    const/16 v9, 0x51

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    iget v10, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerMargin:I

    add-int/2addr v9, v10

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private clearDragInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    return-void
.end method

.method private createAddButton()Landroid/view/View;
    .locals 3

    const v2, 0x7f0f0078

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0200d5

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private dismissColorPickerItems(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private doneEditingFolderName(Z)V
    .locals 14

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v11, 0x0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    sget-object v2, Lcom/android/launcher3/folder/view/FolderView;->sHintText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/folder/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/common/base/controller/ControllerBase;->onUpdateAlphabetList(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/common/base/controller/ControllerBase;->getLocationInfoFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    new-instance v7, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v7}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    invoke-virtual {v7, v0}, Lcom/android/launcher3/folder/FolderInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v1, v7}, Lcom/android/launcher3/common/base/controller/ControllerBase;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/GSIMLogging;->getFolderNameValue(J)I

    move-result v10

    const/4 v1, -0x1

    if-eq v10, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x64

    cmp-long v1, v2, v12

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOFN"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v1, v11}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setCursorVisible(Z)V

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v11, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iput-boolean v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mIsEditingName:Z

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v1, v11}, Lcom/android/launcher3/common/base/controller/ControllerBase;->notifyCapture(Z)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->applyFolderNameChanged()V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/common/base/controller/ControllerBase;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x66

    cmp-long v1, v2, v12

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APFN"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1
.end method

.method public static fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/view/FolderView;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderView;

    return-object v0
.end method

.method private getContentAreaHeight()I
    .locals 5

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinHeight:I

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCellLayoutChildrenHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinMargin:I

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerHeight:I

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerMargin:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getContentAreaWidth()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCellLayoutChildrenWidth()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method private getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;[F)I
    .locals 4

    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object p2

    const/4 v2, 0x0

    aget v2, p2, v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getPaddingLeft()I

    move-result v3

    sub-int v0, v2, v3

    const/4 v2, 0x1

    aget v2, p2, v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->findNearestArea(II)I

    move-result v2

    return v2
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolderTextRegion(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    invoke-direct {p0, p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolderHeaderRegion(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-direct {p0, p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolder(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isEventOverFolder(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isEventOverFolderHeaderRegion(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isEventOverFolderTextRegion(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getEditTextRegion()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNeedToMakeClone(Landroid/view/View;)Z
    .locals 12

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v8, v8, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    move v0, v6

    :goto_0
    const/4 v1, 0x0

    instance-of v8, p1, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v8, :cond_5

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    iget-wide v4, v8, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    const-wide/16 v8, -0x65

    cmp-long v8, v4, v8

    if-nez v8, :cond_4

    :cond_0
    move v1, v6

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    :cond_2
    return v2

    :cond_3
    move v0, v7

    goto :goto_0

    :cond_4
    move v1, v7

    goto :goto_1

    :cond_5
    instance-of v6, p1, Lcom/android/launcher3/home/Workspace;

    if-nez v6, :cond_6

    instance-of v6, p1, Lcom/android/launcher3/home/Hotseat;

    if-nez v6, :cond_6

    instance-of v6, p1, Lcom/android/launcher3/home/CancelDropTarget;

    if-nez v6, :cond_6

    instance-of v6, p1, Lcom/android/launcher3/common/tray/FakeView;

    if-eqz v6, :cond_1

    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V
    .locals 23

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;[F)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    aget v22, v20, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ee66666    # 0.45f

    mul-float v12, v4, v5

    cmpg-float v4, v22, v12

    if-gez v4, :cond_9

    const/16 v16, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v12

    cmpl-float v4, v22, v4

    if-lez v4, :cond_a

    const/16 v17, 0x1

    :goto_3
    if-lez v14, :cond_c

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_b

    if-eqz v17, :cond_c

    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/launcher3/folder/view/FolderView;->showScrollHint(ILcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    if-eqz v4, :cond_0

    invoke-virtual {v15}, Lcom/android/launcher3/common/drag/DragView;->getTranslationY()F

    move-result v4

    invoke-virtual {v15}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v15}, Lcom/android/launcher3/common/drag/DragView;->getOffsetY()F

    move-result v5

    sub-float v21, v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v21, v4

    if-ltz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v21, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mPrevTargetRank:I

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    move/from16 v0, p2

    int-to-long v10, v0

    invoke-virtual {v4, v10, v11}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mPrevTargetRank:I

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v4, :cond_8

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    :cond_6
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v18

    if-eq v0, v4, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v5

    rem-int v19, v4, v5

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v4

    rem-int v7, v19, v4

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v4

    div-int v8, v19, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v15}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/common/base/view/CellLayout;->visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRankForRestore:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    if-eq v4, v5, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_3

    :cond_b
    if-nez v16, :cond_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v14, v4, :cond_f

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_e

    if-eqz v16, :cond_f

    :cond_d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/launcher3/folder/view/FolderView;->showScrollHint(ILcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto/16 :goto_4

    :cond_e
    if-nez v17, :cond_d

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->clearScrollHint()V

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    goto/16 :goto_4
.end method

.method private onDropExtraObjects(Ljava/util/ArrayList;ZZ)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;ZZ)V"
        }
    .end annotation

    const/16 v24, 0x0

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    if-eqz v24, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    const/16 v24, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->completePendingPageChanges()V

    if-eqz p2, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v3

    :goto_1
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v27

    :goto_2
    iget-wide v14, v3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v28, -0x66

    cmp-long v2, v14, v28

    if-nez v2, :cond_3

    const/16 v17, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->insertViewBeforeArrangeChildren(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v5, Lcom/android/launcher3/folder/FolderInfo;->id:J

    const-wide/16 v6, 0x0

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v9, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    const/4 v10, -0x1

    invoke-interface/range {v2 .. v10}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    new-instance v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/android/launcher3/folder/view/FolderView$DropItem;-><init>(Lcom/android/launcher3/folder/view/FolderView$1;)V

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v2, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v27

    iput-object v0, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v5

    div-int/2addr v2, v5

    iput v2, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v0, v17

    iput-boolean v0, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->fromApps:Z

    :cond_4
    iget v2, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v5

    if-ne v2, v5, :cond_5

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v3, v2

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->isInActiveRange(I)Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;Z)Landroid/view/View;

    move-result-object v27

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v18

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;

    const/4 v4, 0x0

    iget-object v8, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget v6, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v9

    if-eqz v9, :cond_b

    iget v5, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    sub-int v5, v5, v18

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getDesiredWidth()I

    move-result v6

    mul-int v22, v5, v6

    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v9, v1}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v16, v22, v5

    :goto_4
    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$15;

    move-object/from16 v5, p0

    move-object/from16 v6, v26

    move-object/from16 v10, v23

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderView$15;-><init>(Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;Lcom/android/launcher3/folder/view/FolderView$DropItem;Landroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Ljava/util/ArrayList;)V

    iget-object v5, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v5, :cond_a

    iget-object v5, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    if-eqz v5, :cond_a

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v13, 0x12c

    :goto_5
    iget-object v11, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v12, v7, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    const/4 v15, 0x0

    move-object/from16 v10, v20

    move-object v14, v4

    invoke-virtual/range {v10 .. v16}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;I)V

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->getDesiredWidth()I

    move-result v16

    goto :goto_4

    :cond_c
    const/4 v13, -0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method private prepareReveal(Z)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->setTranslationY(F)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setScaleX(F)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setScaleY(F)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    return-void
.end method

.method private replaceFolderWithFinalItem()V
    .locals 3

    iget-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mDestroyed:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$18;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/view/FolderView$18;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mDestroyed:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private restoreDragObjectsPosition(Ljava/util/ArrayList;Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mAscComparator:Ljava/util/Comparator;

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move/from16 v19, v0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v15, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v15, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v4, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget v5, v15, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move/from16 v0, v19

    invoke-virtual {v4, v14, v15, v5, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->insertViewBeforeArrangeChildren(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;II)V

    new-instance v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;

    const/4 v4, 0x0

    invoke-direct {v11, v4}, Lcom/android/launcher3/folder/view/FolderView$DropItem;-><init>(Lcom/android/launcher3/folder/view/FolderView$1;)V

    iget-object v4, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v4, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v14, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    iget v4, v15, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v5

    div-int/2addr v4, v5

    iput v4, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    if-eqz p2, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v9

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget v4, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v17

    if-eqz v17, :cond_3

    iget v3, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->targetPageIndex:I

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getDesiredWidth()I

    move-result v4

    mul-int v13, v3, v4

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v8, v13, v3

    :goto_2
    iget-object v3, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v3, :cond_2

    iget-object v3, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v4, v11, Lcom/android/launcher3/folder/view/FolderView$DropItem;->iconView:Landroid/view/View;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->getDesiredWidth()I

    move-result v8

    goto :goto_2

    :cond_4
    return-void
.end method

.method private sendCustomAccessibilityEvent(ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private sendTapOutsideFolderAccessibilityEvent(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    const v2, 0x7f080177

    :goto_0
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void

    :cond_1
    const v2, 0x7f080176

    goto :goto_0
.end method

.method private setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragExit()V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragEnter()V

    :cond_1
    return-void
.end method

.method private setFolderColor(IZ)V
    .locals 2

    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/folder/view/FolderView;->setFolderColor(Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V

    return-void

    :cond_0
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1

    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_2

    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_3

    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    goto :goto_0
.end method

.method private setFolderColor(Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V
    .locals 23

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v8

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/folder/view/FolderView;->setFolderColorTalkback(Lcom/android/launcher3/folder/view/FolderView$FolderColor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->values()[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    aget-object v5, v18, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f02009c

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v8, :cond_0

    sget-object v20, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    const v20, 0x7f0d0004

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    sget-object v21, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_2
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v17

    if-nez v17, :cond_5

    const v17, 0x7f0d0016

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-object/from16 v17, v0

    const v18, -0x70000001

    and-int v18, v18, v16

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setHintTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderBottomLine:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x4dffffff    # 5.3687088E8f

    and-int v18, v18, v16

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget-object v17, Lcom/android/launcher3/folder/view/FolderView;->sOptionButtonImage:Landroid/graphics/Bitmap;

    if-nez v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f02009b

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v11}, Lcom/android/launcher3/util/BitmapUtils;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v17

    sput-object v17, Lcom/android/launcher3/folder/view/FolderView;->sOptionButtonImage:Landroid/graphics/Bitmap;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/launcher3/folder/view/FolderView;->sOptionButtonImage:Landroid/graphics/Bitmap;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_5
    if-nez v8, :cond_6

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getFolderType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher3/folder/view/FolderIconView;->setIconBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/android/launcher3/common/base/controller/ControllerBase;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_7
    return-void

    :cond_8
    const v17, 0x7f090039

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v17, 0x7f090123

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    sub-int v14, v7, v17

    invoke-static {}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->values()[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    aget-object v5, v19, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderColor:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v17, Lcom/android/launcher3/folder/view/FolderView;->sColorPickerImages:Landroid/util/SparseArray;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_9

    const v17, 0x7f02007d

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    div-int/lit8 v17, v14, 0x2

    move/from16 v0, v17

    invoke-static {v9, v7, v7, v0, v15}, Lcom/android/launcher3/theme/ThemeUtils;->roundBitmap(IIIILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v17, Lcom/android/launcher3/folder/view/FolderView;->sColorPickerImages:Landroid/util/SparseArray;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    :goto_3
    if-eqz v10, :cond_a

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    add-int/lit8 v17, v18, 0x1

    move/from16 v18, v17

    goto :goto_2

    :cond_b
    const-string v17, "Launcher.Folder"

    const-string v21, "setFolderColor : can\'t create color picker image"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setFolderColorTalkback(Lcom/android/launcher3/folder/view/FolderView$FolderColor;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    if-ne p1, v1, :cond_1

    const v0, 0x7f080034

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    if-ne p1, v1, :cond_2

    const v0, 0x7f080036

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    if-ne p1, v1, :cond_3

    const v0, 0x7f080037

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    if-ne p1, v1, :cond_4

    const v0, 0x7f080038

    goto :goto_0

    :cond_4
    const v0, 0x7f080033

    goto :goto_0
.end method

.method private setupFolderLayout()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09011b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderMargin:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentMinMargin:I

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher3/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderMargin:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setMinimumWidth(I)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    invoke-virtual {v3, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooter:Landroid/view/View;

    invoke-virtual {v3, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    invoke-virtual {v3, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerMargin:I

    return-void
.end method

.method private showScrollHint(ILcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 4

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->showScrollHint(I)V

    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    if-eq v0, p1, :cond_2

    :cond_1
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;-><init>(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    :cond_2
    return-void
.end method

.method private startBounceAnimationForSearchedApp(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;-><init>(Landroid/view/View;)V

    sput-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    sget-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->animate()V

    goto :goto_0
.end method

.method private updateItemLocationsInDatabaseBatch()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v6, Lcom/android/launcher3/folder/FolderInfo;->id:J

    const/4 v8, 0x0

    invoke-interface {v5, v2, v6, v7, v8}, Lcom/android/launcher3/common/base/controller/ControllerBase;->modifyItemsInDb(Ljava/util/ArrayList;JI)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->acceptDropToFolder()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isFull()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    if-nez v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bind(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v8, v5}, Lcom/android/launcher3/folder/FolderInfo;->setAlphabeticalOrder(ZLandroid/content/Context;)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v6, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->bindItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "Launcher.Folder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bind : items="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , overflow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6, v1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v6, v1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v5

    if-le v5, v8, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    const/4 v0, 0x0

    iget-object v5, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    if-eq v6, v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    if-nez v2, :cond_4

    new-instance v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v2, v9, v9}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    iput-boolean v8, v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->centerAboutIcon()V

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateItemLocationsInDatabaseBatch()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/folder/FolderInfo;->addListener(Lcom/android/launcher3/folder/FolderEventListener;)V

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v5, v5, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/launcher3/folder/view/FolderView;->sDefaultFolderName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget v5, v5, Lcom/android/launcher3/folder/FolderInfo;->color:I

    invoke-direct {p0, v5, v9}, Lcom/android/launcher3/folder/view/FolderView;->setFolderColor(IZ)V

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    new-instance v6, Lcom/android/launcher3/folder/view/FolderView$12;

    invoke-direct {v6, p0}, Lcom/android/launcher3/folder/view/FolderView$12;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderIconView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public bindController(Lcom/android/launcher3/folder/controller/FolderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    return-void
.end method

.method public completeDragExit()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMoveToHomeAppsByDragging()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    instance-of v1, v1, Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    :goto_0
    const-string v1, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    :goto_1
    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    :goto_2
    return-void

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->closeFolder()V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v1, v3, :cond_4

    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->clearDragInfo()V

    goto :goto_2
.end method

.method public dismissEditingName()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->doneEditingFolderName(Z)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-static {v0, p1}, Lcom/android/launcher3/Stats$LaunchSourceUtils;->populateSourceDataFromAncestorProvider(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "sub_container"

    const-string v1, "folder"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sub_container_page"

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    return-object v0
.end method

.method public getBorder()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBorderHeight()I
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderHeight:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/folder/view/FolderView;->measure(II)V

    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderHeight:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/folder/view/FolderView;->measure(II)V

    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    return v0
.end method

.method public getContent()Lcom/android/launcher3/folder/view/FolderPagedView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    return-object v0
.end method

.method public getContentBorderHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getBorderHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getContentBorderWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getBorderWidth()I

    move-result v0

    return v0
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v0, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getEditTextRegion()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    return-object v0
.end method

.method getFolderColorByView(Landroid/view/View;)Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    .locals 6

    invoke-static {}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->values()[Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-ne v1, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    goto :goto_1
.end method

.method public getFolderState()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getState()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v0, :cond_0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public getInfo()Lcom/android/launcher3/folder/FolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    return-object v0
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemsInReadingOrder()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$20;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/view/FolderView$20;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOutlineColor()I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v0, p1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v0

    return v0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v3}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    const/4 v2, 0x0

    or-int/lit8 v2, v2, 0x1

    if-eqz v0, :cond_2

    or-int/lit8 v2, v2, 0x2

    :cond_2
    or-int/lit8 v2, v2, 0x20

    or-int/lit8 v2, v2, 0x40

    or-int/lit16 v2, v2, 0x80

    or-int/lit16 v2, v2, 0x100

    or-int/lit16 v2, v2, 0x200

    or-int/lit16 v2, v2, 0x400

    or-int/lit16 v2, v2, 0x4000

    const v3, 0x8000

    or-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x10

    if-nez v0, :cond_3

    or-int/lit8 v2, v2, 0x4

    :cond_3
    if-nez v1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    or-int/lit16 v2, v2, 0x1000

    :cond_5
    if-nez v1, :cond_6

    if-nez v0, :cond_7

    :cond_6
    or-int/lit16 v2, v2, 0x2000

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$19;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/folder/view/FolderView$19;-><init>(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideAddButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->animateDismiss(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideHintPages()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->hideHintPages()V

    return-void
.end method

.method public hideItem(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initBounceAnimation()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->stop()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/folder/view/FolderView;->sBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    :cond_0
    return-void
.end method

.method public isAppsAlphabeticViewType()Z
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v5, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    move v1, v3

    :goto_0
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewTypeFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v2

    sget-object v5, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v2, v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v3

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method public isDeleteFolderOnDropCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDestroyed:Z

    return v0
.end method

.method public isDropEnabled(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEditingName()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mIsEditingName:Z

    return v0
.end method

.method public isFull()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->isFull()Z

    move-result v0

    return v0
.end method

.method public isWhiteBg()Z
    .locals 2

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDrop()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    :cond_0
    return-void
.end method

.method public notifyFolderItemsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    invoke-interface {v0}, Lcom/android/launcher3/common/base/controller/ControllerBase;->notifyControllerItemsChanged()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    iget v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->initBounceAnimation()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->isReorderAnimating()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_3

    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0f0079

    if-ne v6, v7, :cond_0

    new-instance v1, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v1}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const-string v6, "KEY_PICKER_MODE"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "KEY_FOLDER_ICON_VIEW"

    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v1}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v6

    if-eqz v6, :cond_5

    const v6, 0x7f080186

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const v6, 0x7f08010f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const v6, 0x7f080192

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public onClose(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/view/DragLayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->initBounceAnimation()V

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/launcher3/folder/view/FolderView$14;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/view/FolderView$14;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->onCloseComplete()V

    goto :goto_0
.end method

.method onCloseComplete()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->requestFocus()Z

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setCrosshairsVisibility(Z)V

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderDeletion:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mRestorePositionOnDrop:Z

    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderDeletion:Z

    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->clearDragInfo()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    goto :goto_0
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateCellDimensions()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->setupFolderLayout()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->centerAboutIcon()V

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 3

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mPrevTargetRank:I

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragView;->getDragRegionWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollAreaOffset:I

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->allocateRankForNewItem(Z)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getFolderBgView()Lcom/android/launcher3/folder/view/FolderBgView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getFolderBgView()Lcom/android/launcher3/folder/view/FolderBgView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderBgView;->onMoveInFolder()V

    :cond_1
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 9

    const/4 v6, 0x2

    const/4 v4, -0x1

    iget-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->clearScrollHint()V

    iput v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    if-eqz p2, :cond_3

    iget-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getFolderBgView()Lcom/android/launcher3/folder/view/FolderBgView;

    move-result-object v7

    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getTranslationY()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getOffsetY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v8, v1

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v8, v1, :cond_4

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderBgView;->onMoveFromFolderTop()V

    const/4 v5, 0x0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_1
    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/SALogging;->insertMoveFromFolderLog(JZILcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderBgView;->onMoveFromFolderBottom()V

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 1

    const/16 v0, 0xfa

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V

    return-void
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->rankOnCurrentPage(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;[F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-interface {v2, v3}, Lcom/android/launcher3/util/alarm/OnAlarmListener;->onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mOnScrollHintAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->completePendingPageChanges()V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    const/16 v19, 0x1

    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1, v3}, Lcom/android/launcher3/folder/view/FolderView;->onDropExtraObjects(Ljava/util/ArrayList;ZZ)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v19, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v2}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v15

    if-eqz v19, :cond_5

    if-eqz v15, :cond_6

    const/4 v2, 0x2

    if-eq v15, v2, :cond_6

    :cond_5
    if-nez v19, :cond_7

    const/4 v2, 0x1

    if-eq v15, v2, :cond_6

    const/4 v2, 0x4

    if-ne v15, v2, :cond_7

    :cond_6
    const/16 v20, 0x1

    :goto_2
    if-eqz v20, :cond_8

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not supported item type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const/16 v20, 0x0

    goto :goto_2

    :pswitch_0
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v17

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v4

    const/16 v16, 0x1

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getScaleX()F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getScaleY()F

    move-result v22

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->setScaleX(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setScaleX(F)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->setScaleY(F)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v2, :cond_a

    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0800b8

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1, v3}, Lcom/android/launcher3/folder/view/FolderView;->onDropExtraObjects(Ljava/util/ArrayList;ZZ)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    const/4 v3, 0x4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    :cond_c
    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v8, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    const-wide/16 v10, 0x0

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object/from16 v7, v17

    invoke-interface/range {v6 .. v14}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->updateItemLocationsInDatabaseBatch()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    goto/16 :goto_1

    :pswitch_1
    new-instance v18, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V

    move-object/from16 v17, v18

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v3

    div-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v5

    div-int/2addr v3, v5

    if-eq v2, v3, :cond_9

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v5, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertFolderMoveAppLogs(Lcom/android/launcher3/Launcher;Z)V

    goto/16 :goto_4

    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 12

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isNeedToMakeClone(Landroid/view/View;)Z

    move-result v4

    if-eqz p3, :cond_9

    if-nez v4, :cond_9

    iget-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    if-nez v8, :cond_1

    if-eq p1, p0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->startBounceAnimation()V

    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    if-eq p1, p0, :cond_5

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v8, v8, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v8, :cond_5

    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mOnExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    if-nez p3, :cond_4

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderDeletion:Z

    :cond_4
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mDeleteFolderOnDropCompleted:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemAddedBackToSelfViaIcon:Z

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    iget-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mDestroyed:Z

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/FolderInfo;->isAlphabeticalOrder()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateItemLocationsInDatabaseBatch()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v9

    if-gt v8, v9, :cond_7

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    const/4 v9, 0x4

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    :cond_7
    if-eqz p3, :cond_8

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/folderlock/FolderLock;->applyFolderNameChanged()V

    iget-object v8, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    check-cast v8, Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v8, v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v8, :cond_8

    if-eq p1, p0, :cond_8

    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    iget-object v8, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v9, v8}, Lcom/android/launcher3/folder/folderlock/FolderLock;->showItemDropedConfirmDialog(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_8
    return-void

    :cond_9
    iget-object v3, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_c

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragView:Landroid/view/View;

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v7

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v8, v9, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    :cond_a
    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual {v7, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I

    if-nez v4, :cond_b

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v9

    div-int v6, v8, v9

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v8, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v5

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iget-object v8, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v2, v9, v5}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    :cond_b
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v8, v3}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v8, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v2

    goto :goto_1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mDescComparator:Ljava/util/Comparator;

    invoke-static {v7, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v12, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v12}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v8

    iget-object v3, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_0

    iget v5, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_1

    const/4 v6, 0x1

    :goto_1
    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v12, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->removeItem(Landroid/view/View;)V

    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v12, v3}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v12, v5, v4, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->realTimeReorder(IIZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v11, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    if-eq v11, v12, :cond_3

    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v11, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    iget v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    if-le v11, v4, :cond_5

    move v0, v4

    :goto_2
    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v11, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v10, v0, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v12, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget v12, v12, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v0, v13}, Lcom/android/launcher3/folder/view/FolderPagedView;->realTimeReorder(IIZ)V

    :cond_3
    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v10, v12}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I

    goto :goto_2
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
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

    const/4 v2, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isNeedToMakeClone(Landroid/view/View;)Z

    move-result v1

    if-eqz p2, :cond_0

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-nez v1, :cond_3

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->restoreDragObjectsPosition(Ljava/util/ArrayList;Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v3

    if-gt v3, v2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v3, 0x7f0f006a

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderContainer:Landroid/view/View;

    const v3, 0x7f0f0073

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContentContainer:Landroid/view/View;

    const v3, 0x7f0f0070

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderPagedView;

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->setFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    const v3, 0x7f0f006d

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderNameEditText;

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$3;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/view/FolderView$3;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$4;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/view/FolderView$4;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$5;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/view/FolderView$5;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$6;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/view/FolderView$6;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$7;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/view/FolderView$7;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnEventListener(Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v3, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setSelectAllOnFocus(Z)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v3, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setCursorVisible(Z)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setFocusableInTouchMode(Z)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getInputType()I

    move-result v4

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    or-int/lit16 v4, v4, 0x2000

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setInputType(I)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Lcom/android/launcher3/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setFilters([Landroid/text/InputFilter;)V

    const v3, 0x7f0f006e

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    const v3, 0x7f0f0071

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$8;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/view/FolderView$8;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/launcher3/folder/view/FolderView$9;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/view/FolderView$9;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v3, 0x7f0f006b

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    const v3, 0x7f0f0072

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderBottomLine:Landroid/view/View;

    const v3, 0x7f0f0075

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFooter:Landroid/view/View;

    const v3, 0x7f0f0077

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    const v3, 0x7f0f0076

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->setupFolderLayout()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->createAddButton()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/folder/view/FolderView;->showAddButton(Z)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v5, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v3, 0x7f0f007c

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v5, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v3, 0x7f0f007d

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v5, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v3, 0x7f0f007e

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v5, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v3, 0x7f0f007f

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    sget-object v5, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    const v3, 0x7f0f0080

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v4, Lcom/android/launcher3/folder/view/FolderView$10;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/view/FolderView$10;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v4}, Lcom/android/launcher3/util/Talk;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolder(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/view/FolderView;->sendTapOutsideFolderAccessibilityEvent(Z)V

    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    move v2, v3

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->isEventOverFolder(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/view/FolderView;->sendTapOutsideFolderAccessibilityEvent(Z)V

    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    move v2, v3

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mHoverPointClosesFolder:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemAdded(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v9, 0x1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->isAlphabeticalOrder()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iput v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iget v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v8, p1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->rebindItems(Ljava/util/ArrayList;)V

    :goto_1
    iput-boolean v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/folder/view/FolderPagedView;->allocateRankForNewItem(Z)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/common/base/item/IconInfo;I)Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iget v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v8, p1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto :goto_1
.end method

.method public onItemRemoved(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eq p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->removeItem(Landroid/view/View;)V

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v1, v2, :cond_5

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v1

    if-gt v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->closeFolderIfLackItem()V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, p1}, Lcom/android/launcher3/Utilities;->isAppEnabled(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    goto :goto_2
.end method

.method public onItemsAdded(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->isAlphabeticalOrder()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    const/4 v1, -0x1

    iput v1, v7, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItems(Ljava/util/ArrayList;JJ)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->rebindItems(Ljava/util/ArrayList;)V

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->allocateRankForNewItem(Z)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/common/base/item/IconInfo;I)Landroid/view/View;

    iput-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItems(Ljava/util/ArrayList;JJ)V

    goto :goto_2
.end method

.method public onItemsRemoved(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    iget-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnRemove:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mCurrentDragInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eq v0, v4, :cond_1

    iput-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->removeItem(Landroid/view/View;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    if-ne v3, v5, :cond_5

    iput-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mRearrangeOnClose:Z

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v3

    if-gt v3, v5, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v3, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/controller/FolderController;->closeFolderIfLackItem()V

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->replaceFolderWithFinalItem()V

    goto :goto_3
.end method

.method public onLockedFolderOpenStateUpdated(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderNameEditText;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    instance-of v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mController:Lcom/android/launcher3/common/base/controller/ControllerBase;

    check-cast v0, Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewBinder()Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->isAppsLoading()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->beginDrag(Landroid/view/View;Z)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContentAreaWidth()I

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->getContentAreaHeight()I

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateBorderWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    add-int v4, v14, v6

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderWidth()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderHeight(I)I

    move-result v10

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v12, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mFolderContainer:Landroid/view/View;

    invoke-virtual {v14, v13, v11}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v14, v12, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->setFixedSize(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mContentContainer:Landroid/view/View;

    invoke-virtual {v14, v13, v5}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v14, v3, v1}, Landroid/widget/ImageView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeader:Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderHeight:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v14, v3, v15}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mFooter:Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/folder/view/FolderView;->mFooterHeight:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v14, v3, v15}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainer:Landroid/view/View;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderView;->mOuterAddButtonContainerHeight:I

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/view/View;->measure(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderWidth()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/folder/view/FolderView;->calculateFolderHeight(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Lcom/android/launcher3/folder/view/FolderView;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderView;->mBorderHeight:I

    return-void
.end method

.method public onOpen(Landroid/animation/Animator;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/common/view/DragLayer;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "Launcher.Folder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onOpen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->setActiveMarker(I)V

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->completePendingPageChanges()V

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateCellDimensions()V

    iget-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->snapToPageImmediately(I)V

    :cond_1
    if-nez p1, :cond_5

    move v5, v6

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/launcher3/folder/view/FolderView;->prepareReveal(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->setupFolderLayout()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView;->centerAboutIcon()V

    if-eqz p1, :cond_6

    new-instance v5, Lcom/android/launcher3/folder/view/FolderView$13;

    invoke-direct {v5, p0}, Lcom/android/launcher3/folder/view/FolderView$13;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {p1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragManager;->forceTouchMove()V

    :cond_2
    iput-boolean v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mNeedToShowCursor:Z

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->verifyVisibleHighResIcons(I)V

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/controller/FolderController;->getSearchedAppInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v7}, Lcom/android/launcher3/folder/view/FolderView;->hideAddButton(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->initBounceAnimation()V

    iget v5, v2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v6

    div-int v3, v5, v6

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->snapToPageImmediately(I)V

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    iget v5, v2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getGridCountX()I

    move-result v6

    rem-int/2addr v5, v6

    iget v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->itemsPerPage()I

    move-result v7

    mul-int/2addr v7, v3

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderPagedView;->getGridCountX()I

    move-result v7

    div-int/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/folder/view/FolderView;->startBounceAnimationForSearchedApp(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/controller/FolderController;->setSearchedAppInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->setFolderContentColor()V

    goto/16 :goto_0

    :cond_5
    move v5, v7

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mViewState:I

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->setFocusOnFirstChild()V

    goto/16 :goto_2
.end method

.method public onOrderingChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->rebindItems(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->sendAccessibilityEvent(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$11;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/view/FolderView$11;-><init>(Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public rearrangeChildren()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren(I)V

    return-void
.end method

.method public rearrangeChildren(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mItemsInvalidated:Z

    return-void
.end method

.method public setBorderAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setCrosshairsVisibility(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->setCrosshairsVisibilityChilds(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDragInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragInProgress:Z

    return-void
.end method

.method public setDragMgr(Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-void
.end method

.method public setFolderContentColor()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getOutlineColor()I

    move-result v1

    new-instance v2, Landroid/graphics/LightingColorFilter;

    invoke-direct {v2, v1, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const v4, -0x70000001

    and-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setHintTextColor(I)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mHeaderBottomLine:Landroid/view/View;

    const v4, 0x4dffffff    # 5.3687088E8f

    and-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->onChangeFolderIconTextColor()V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    const v4, 0x7f0f0087

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorder:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method

.method public setFolderIcon(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    return-void
.end method

.method public setMultiSelectManager(Lcom/android/launcher3/common/multiselect/MultiSelectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    return-void
.end method

.method public setSuppressFolderCloseOnce()V
    .locals 2

    const-string v0, "Launcher.Folder"

    const-string v1, "setSuppressFolderCloseOnce"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressFolderClose:Z

    return-void
.end method

.method public setSuppressOnAdd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderView;->mSuppressOnAdd:Z

    return-void
.end method

.method public showAddButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->animateAppear(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHintPages()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mBorderWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mPageSpacingOnDrag:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->setHintPageWidth(I)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->showHintPages()V

    return-void
.end method

.method public showItem(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderView;->getViewForInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V
    .locals 1

    iget-object v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/folder/view/FolderView;->beginDrag(Landroid/view/View;Z)Z

    return-void
.end method

.method public startEditingFolderName()V
    .locals 5

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mIsEditingName:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f080186

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const v3, 0x7f080118

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const v3, 0x7f080192

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public toggleColorPicker()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mNeedToShowCursor:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->animateAppear(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->animateDismiss(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->animateDismiss(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView;->mColorPickerView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderView;->animateAppear(Landroid/view/View;)V

    goto :goto_0
.end method

.method public updateContentFocus()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getFirstItem()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setNextFocusDownId(I)V

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setNextFocusLeftId(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusLeftId(I)V

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusRightId(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setNextFocusRightId(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setNextFocusDownId(I)V

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderOptionButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView;->mAddButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView;->mFolderName:Lcom/android/launcher3/folder/view/FolderNameEditText;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_1
.end method
