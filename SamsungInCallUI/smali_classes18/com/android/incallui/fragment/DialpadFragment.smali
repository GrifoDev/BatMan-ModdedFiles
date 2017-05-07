.class public Lcom/android/incallui/fragment/DialpadFragment;
.super Lcom/android/incallui/BaseFragment;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/android/incallui/DialpadUi;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;,
        Lcom/android/incallui/fragment/DialpadFragment$HoverIgnoringLinearLayout;,
        Lcom/android/incallui/fragment/DialpadFragment$DialpadSlidingLinearLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/DialpadPresenter;",
        "Lcom/android/incallui/DialpadUi;",
        ">;",
        "Lcom/android/incallui/DialpadUi;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnHoverListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;"
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DTMF_STOP_DELAY_MILLIS:I = 0x32

.field private static final THRESHOLD_TIME_FOR_EMPTY_SPACE:I = 0x1388

.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private isShowMenuStatus:Z

.field private isTouchButtonPressed:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mDialContainer:Landroid/view/View;

.field private mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

.field protected mDialpad:Landroid/view/View;

.field protected mDialpadView:Lcom/android/incallui/widget/DialpadView;

.field protected mDigitContainer:Landroid/view/View;

.field protected mDtmfDialerField:Landroid/widget/EditText;

.field protected mElapsedTime:Landroid/widget/TextView;

.field protected mElapsedTimeContainer:Landroid/view/View;

.field protected mHideButton:Landroid/widget/ImageView;

.field protected mIndicatorArea:Landroid/view/ViewGroup;

.field private mIsRapidInputMode:Z

.field protected mIsVGAVideoDialpad:Z

.field protected mMenuContainer:Landroid/view/View;

.field protected mOnScreenMenuBtn:Landroid/widget/Button;

.field protected mOnScreenMenuIcon:Landroid/widget/ImageButton;

.field private mOne:Lcom/android/phone/common/dialpad/DialpadKeyButton;

.field private mPreviouslyProcessedTime:J

.field protected mSavedDtmfText:Ljava/lang/String;

.field private mThree:Lcom/android/phone/common/dialpad/DialpadKeyButton;

.field public mView:Landroid/view/View;

.field protected mVolumeButton:Landroid/widget/Button;

.field protected mVolumeButtonStub:Landroid/view/ViewStub;

.field protected mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/incallui/fragment/DialpadFragment;->sHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10010e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100105

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100107

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100108

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100109

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10010a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10010b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100112

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100110

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100111

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    iput-boolean v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->isTouchButtonPressed:Z

    iput-boolean v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->isShowMenuStatus:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mPreviouslyProcessedTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIsRapidInputMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mSavedDtmfText:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIsVGAVideoDialpad:Z

    return-void
.end method

.method private configureKeypadListeners(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0xc

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnPressedListener(Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x7f100112
        0x7f10010e
        0x7f100104
        0x7f100105
        0x7f100106
        0x7f100107
        0x7f100108
        0x7f100109
        0x7f10010a
        0x7f10010b
        0x7f100111
        0x7f100110
    .end array-data
.end method

.method private getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private menuButtonClicked()V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "menuButtonClicked: "

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->showInCallMenu()V

    goto :goto_0

    :cond_2
    const-string v2, "activity or menu is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postAccessibilityEvent(I)V
    .locals 4

    const-string v2, "postAccessibilityEvent"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-gt v2, p1, :cond_0

    const/16 v2, 0x10

    if-gt p1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, -0x7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/16 v2, 0x12

    if-ne p1, v2, :cond_1

    const-string v1, "#"

    :cond_1
    const/16 v2, 0x11

    if-ne p1, v2, :cond_2

    const-string v1, "*"

    :cond_2
    if-nez v1, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v2, "sent TYPE_ANNOUNCEMENT"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showMoreOptionLabelToast()V
    .locals 8

    iget-object v5, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "showMoreOptionLabelToast"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f04018d

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f100459

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0116

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/Toast;->setDuration(I)V

    const v5, 0x800035

    iget-object v6, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getHeight()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showVolumeSeekBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/VolumeSeekBar;->showBelow(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public animateShowDialpad()V
    .locals 0

    return-void
.end method

.method public appendDigitsToField(C)V
    .locals 6

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mPreviouslyProcessedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mPreviouslyProcessedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-string v2, "Enter empty space"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    :cond_0
    iput-wide v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mPreviouslyProcessedTime:J

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    const-string v2, "clear_dialpad_digits"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mSavedDtmfText:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public clearDigits()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mSavedDtmfText:Ljava/lang/String;

    return-void
.end method

.method public createPresenter()Lcom/android/incallui/DialpadPresenter;
    .locals 1

    new-instance v0, Lcom/android/incallui/DialpadPresenter;

    invoke-direct {v0}, Lcom/android/incallui/DialpadPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->createPresenter()Lcom/android/incallui/DialpadPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getDialpadHeight()I
    .locals 16

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v8, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v5, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v2, v11, Landroid/util/DisplayMetrics;->density:F

    iget v9, v10, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a04f9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0505

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v4, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0506

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a03c3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v0, v11

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a03ef

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v1, v11

    sub-int/2addr v8, v1

    :cond_1
    cmpl-float v11, v2, v9

    if-eqz v11, :cond_2

    sub-int/2addr v8, v0

    :cond_2
    if-gt v8, v7, :cond_3

    sub-int v11, v8, v6

    int-to-double v12, v11

    const-wide v14, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v12, v14

    double-to-int v3, v12

    :goto_0
    return v3

    :cond_3
    sub-int v11, v8, v6

    int-to-double v12, v11

    const-wide v14, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v12, v14

    double-to-int v3, v12

    goto :goto_0

    :cond_4
    int-to-double v12, v8

    const-wide v14, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v12, v14

    double-to-int v3, v12

    goto :goto_0
.end method

.method public getDialpadSideMargin()I
    .locals 10

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->isTabletUX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v0, :cond_1

    move-wide v4, v6

    :goto_1
    int-to-double v6, v2

    mul-double/2addr v6, v4

    double-to-int v3, v6

    return v3

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide v4, 0x3fc999999999999aL    # 0.2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    move-wide v4, v6

    :goto_2
    goto :goto_1

    :cond_3
    const-wide v4, 0x3fb1eb851eb851ecL    # 0.07

    goto :goto_2
.end method

.method public getDigitsHeight()I
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0007

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v10, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v15, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v18

    if-eqz v18, :cond_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a04f9

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v14, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a03c3

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "window"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    new-instance v17, Landroid/util/DisplayMetrics;

    invoke-direct/range {v17 .. v17}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    cmpl-float v18, v8, v16

    if-eqz v18, :cond_1

    sub-int/2addr v15, v6

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getDialpadHeight()I

    move-result v18

    sub-int v10, v15, v18

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a01da

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v13, v0

    sub-int/2addr v10, v13

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a03ef

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v7, v0

    sub-int/2addr v10, v7

    :cond_3
    :goto_0
    return v10

    :cond_4
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getVoiceCallButtonsGap()I

    move-result v4

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a01da

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v13, v0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v18

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/Point;->y:I

    const/4 v13, 0x0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getDialpadHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a024e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0246

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v12, v0

    int-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide v20, 0x3fb999999999999aL    # 0.1

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v3, v0

    sub-int v18, v15, v13

    sub-int v18, v18, v9

    int-to-double v0, v4

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff6666666666666L    # 1.4

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v18, v18, v12

    sub-int v18, v18, v5

    sub-int v10, v18, v3

    goto :goto_0
.end method

.method public getDtmfText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviouslyProcessedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mPreviouslyProcessedTime:J

    return-wide v0
.end method

.method public getSavedDtmfText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSavedDtmfText() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mSavedDtmfText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mSavedDtmfText:Ljava/lang/String;

    return-object v0
.end method

.method public getShowMenuStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->isShowMenuStatus:Z

    return v0
.end method

.method public getUi()Lcom/android/incallui/DialpadUi;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getUi()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    return-object v0
.end method

.method public hideElapsedTimeContainer()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hideElapsedTimeContainer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideSoftInput()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "hideSoftInput()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/InputMethodManagerWrapper;->focusOut(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    :cond_0
    return-void
.end method

.method protected initVolumePanelLayout(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const v0, 0x7f100296

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100443

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0118

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    new-instance v0, Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/VolumeSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    return-void
.end method

.method public needToShowVolumeButton()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToShowVolumeButton: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    sget-object v3, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    sget-object v2, Lcom/android/incallui/fragment/DialpadFragment;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/fragment/DialpadFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/DialpadFragment$1;-><init>(Lcom/android/incallui/fragment/DialpadFragment;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;->menuButtonClicked()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;->showVolumeSeekBar()V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100294 -> :sswitch_0
        0x7f100298 -> :sswitch_2
        0x7f100443 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIsVGAVideoDialpad:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v2}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const-string v1, "onCreateView()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "support_folder_single_lcd"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0400db

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const v1, 0x7f0400d0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v1, 0x7f0400d1

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "onDestroyView()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    iput-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mSavedDtmfText:Ljava/lang/String;

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "Notifying dtmf key down."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDialerKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Notifying dtmf key up."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    if-eqz v1, :cond_2

    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/DialpadFragment;->postAccessibilityEvent(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p2}, Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1002ae
        :pswitch_0
    .end packed-switch
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIsRapidInputMode:Z

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onHover:  event-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int v1, v7, v8

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v9

    :pswitch_0
    invoke-virtual {p1, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    if-le v5, v2, :cond_1

    if-ge v5, v3, :cond_1

    if-le v6, v4, :cond_1

    if-ge v6, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    sget-object v7, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v1, 0x17

    if-eq p2, v1, :cond_0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKey: event-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    packed-switch v0, :pswitch_data_0

    const-string v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v3

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;->showMoreOptionLabelToast()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100294
        :pswitch_0
    .end packed-switch
.end method

.method public onPressed(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v1, "onResume()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isRapidInputMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIsRapidInputMode:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->isTouchButtonPressed:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsRapidInputMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIsRapidInputMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->showSoftInput()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->showElapsedTimeContainer()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/DialpadFragment;->setPrimaryCallMenuForDialpad(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->hideSoftInput()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch: event-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v6

    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->isTouchButtonPressed:Z

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIsRapidInputMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    sget-object v1, Lcom/android/incallui/fragment/DialpadFragment;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/incallui/fragment/DialpadFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/DialpadFragment$2;-><init>(Lcom/android/incallui/fragment/DialpadFragment;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    :pswitch_2
    iput-boolean v6, p0, Lcom/android/incallui/fragment/DialpadFragment;->isTouchButtonPressed:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f100294

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100267

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100113

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/DialpadView;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {v4, v6}, Lcom/android/incallui/widget/DialpadView;->setCanDigitsBeEdited(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100118

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDigitContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100292

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mMenuContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100297

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f10011b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const-string v4, "support_folder_single_lcd"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/DialpadView;->setFocusable(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f1003ec

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialContainer:Landroid/view/View;

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v4, :cond_4

    new-instance v4, Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;-><init>(Lcom/android/incallui/fragment/DialpadFragment;)V

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setLongClickable(Z)V

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setElegantTextHeight(Z)V

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const-string v5, "inputType=mobile_call_phone"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/DialpadFragment;->configureKeypadListeners(Landroid/view/View;)V

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f1001a9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100103

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpad:Landroid/view/View;

    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/DialpadFragment;->initVolumePanelLayout(Landroid/view/View;)V

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100298

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mHideButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f10010e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOne:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100105

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mThree:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const-string v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    const v5, 0x7f100104

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    :cond_8
    const/4 v4, 0x3

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-virtual {v3, v7}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setNextFocusUpId(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v4, Lcom/android/incallui/fragment/DialpadFragment$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/DialpadFragment$3;-><init>(Lcom/android/incallui/fragment/DialpadFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f10010e
        0x7f100104
        0x7f100105
    .end array-data
.end method

.method public restoreDtmfText(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreDtmfText() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iput-object p1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mSavedDtmfText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public restorePreviouslyProcessedTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mPreviouslyProcessedTime:J

    return-void
.end method

.method public setDtmfText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadPresenter;->getCallTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/fragment/DialpadFragment;->setTTS(JLandroid/widget/TextView;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setPrimaryCallMenuForDialpad(Z)V
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v0, p1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->isShowMenuStatus:Z

    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/InCallMenu;->isExistOptionsItem()Z

    move-result v0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOne:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setNextFocusUpId(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mThree:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setNextFocusUpId(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusUpId(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    :cond_5
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->needToShowVolumeButton()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/DialpadFragment;->showVolumeButton(Z)V

    goto :goto_0

    :cond_6
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public setTTS(JLandroid/widget/TextView;)V
    .locals 19

    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-gtz v14, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/32 v14, 0x36ee80

    div-long v14, p1, v14

    long-to-int v6, v14

    const-wide/32 v14, 0x36ee80

    rem-long v14, p1, v14

    const-wide/32 v16, 0xea60

    div-long v14, v14, v16

    long-to-int v7, v14

    const-wide/32 v14, 0xea60

    rem-long v14, p1, v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v9, v14

    if-eqz v6, :cond_2

    const/4 v13, 0x1

    :goto_1
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "%d"

    aput-object v15, v2, v14

    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    const v14, 0x7f0902ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/fragment/DialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v11}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    const v14, 0x7f0902ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/fragment/DialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v13, :cond_1

    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    const v14, 0x7f0902e9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/fragment/DialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v10}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupLayout()V
    .locals 14

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setupLayout : isShowMultiWindowMode = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v9, 0x30

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v9

    if-nez v9, :cond_d

    :cond_1
    move v9, v11

    :goto_0
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/DialpadFragment;->showIndicator(Z)V

    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v9, :cond_3

    if-nez v5, :cond_3

    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getDialpadSideMargin()I

    move-result v9

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getDialpadHeight()I

    move-result v9

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDigitContainer:Landroid/view/View;

    if-eqz v9, :cond_4

    const-string v9, "support_folder_single_lcd"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->showSoftInput()V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->hideSoftInput()V

    :cond_5
    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v9, :cond_6

    iget-object v13, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v5, :cond_f

    move v9, v12

    :goto_2
    invoke-virtual {v13, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v9, :cond_9

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_7
    move v3, v11

    :goto_3
    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    move v12, v10

    :cond_8
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_a
    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setFocusable(Z)V

    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    :cond_b
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/incallui/CallCardUi;->needToShowMenu()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->showElapsedTimeContainer()V

    invoke-virtual {p0, v6}, Lcom/android/incallui/fragment/DialpadFragment;->setPrimaryCallMenuForDialpad(Z)V

    :cond_c
    return-void

    :cond_d
    move v9, v10

    goto/16 :goto_0

    :cond_e
    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getDigitsHeight()I

    move-result v9

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v9, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_f
    const/4 v9, 0x4

    goto :goto_2

    :cond_10
    move v3, v10

    goto :goto_3
.end method

.method public showElapsedTimeContainer()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "showElapsedTimeContainer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSoftInput()V
    .locals 6

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const/16 v3, 0x2003

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v2, Lcom/android/incallui/fragment/DialpadFragment;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/fragment/DialpadFragment$4;

    invoke-direct {v3, p0, v0}, Lcom/android/incallui/fragment/DialpadFragment$4;-><init>(Lcom/android/incallui/fragment/DialpadFragment;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    const/high16 v4, 0x80000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    goto :goto_1
.end method

.method public showVolumeButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVolumeMenu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
