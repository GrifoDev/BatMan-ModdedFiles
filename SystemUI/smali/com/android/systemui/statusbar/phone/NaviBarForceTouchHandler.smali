.class public Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;
.super Ljava/lang/Object;
.source "NaviBarForceTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$1;,
        Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$2;
    }
.end annotation


# static fields
.field private static mSingleton:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;


# instance fields
.field private mActionArray:[Landroid/net/Uri;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContext:Landroid/content/Context;

.field private final mFlashCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field private mForceTouchList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceTouchTestPkgChecked:I

.field private mIsFlashOn:Z

.field private mNavibarButtonCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;)[Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mActionArray:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mIsFlashOn:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->updateForceTouchList(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSingleton:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mIsFlashOn:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchList:Landroid/util/SparseArray;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "navigationbar_left_additional"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    const-string/jumbo v1, "navigationbar_left"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "navigationbar_center"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "navigationbar_right"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "navigationbar_right_additional"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mActionArray:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$1;-><init>(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mNavibarButtonCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$2;-><init>(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mFlashCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchTestPkgChecked:I

    return-void
.end method

.method private getForceAction(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "NaviBarForceTouchHandler"

    const-string/jumbo v1, "getForceAction() buttonId invalied : return None"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "None"

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavBarLeftCornerForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavBarLeftForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavBarCenterForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavBarRightForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavBarRightCornerForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSingleton:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    return-object v0
.end method

.method private updateForceTouchList(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchList:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->getForceAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mNavibarButtonCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mActionArray:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchList:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->getForceAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mFlashCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    return-void
.end method
