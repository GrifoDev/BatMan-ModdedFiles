.class final Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HotSpotDetailAdapter"
.end annotation


# instance fields
.field private mConnectedDevices:[Ljava/lang/String;

.field private mConnectedListContainer:Landroid/view/View;

.field private mConnectedListTitle:Landroid/widget/TextView;

.field private mConnectionMode:Landroid/widget/TextView;

.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field private mMobileApName:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSharing:Landroid/widget/Switch;

.field private mWifiSharingContainer:Landroid/view/View;

.field private mWifiSharingStatus:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharing:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharingStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->checkWifiMobileApStatus()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->showWifiSharingEnablingPopup()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-void
.end method

.method private checkWifiMobileApStatus()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v3

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Wifi Sharing enabled, and wifi is connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharing:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    const-wide/16 v4, 0x258

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharing:Landroid/widget/Switch;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v7, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xd

    if-eq v1, v3, :cond_2

    const/16 v3, 0xc

    if-ne v1, v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Wifi Sharing disabled, so Disable Wifi when both were ON"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharing:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    const-wide/16 v4, 0x258

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharing:Landroid/widget/Switch;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_4
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method private getAutoCompleteColor(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v1, v3, [I

    const v3, 0x1010434

    aput v3, v1, v4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v3, 0xff00ff

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method private getRandomAlphabet(IJ)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, p2, p3}, Ljava/util/Random;-><init>(J)V

    const-string/jumbo v4, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private getRandomDigits(IJ)Ljava/lang/String;
    .locals 10

    const-wide/16 v6, 0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v4, ""

    return-object v4

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_1
    cmp-long v4, p2, v6

    if-nez v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long p2, v4, v6

    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, p2, p3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0xa

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p1, :cond_3

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%%0%dd"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getRandomSymbol(IJ)Ljava/lang/String;
    .locals 8

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "!@#$/^&*()"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, p2, p3}, Ljava/util/Random;-><init>(J)V

    const-string/jumbo v3, ""

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getSpannableString(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 5

    const/16 v4, 0x21

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10301b3

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, p2, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    if-nez p3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getAutoCompleteColor(Landroid/content/Context;)I

    move-result p3

    :cond_0
    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, p2, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private isWifiSharingEnabled()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_wifi_sharing"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method private setupDetailView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharingContainer:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharing:Landroid/widget/Switch;

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showWifiSharingEnablingPopup()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f047a

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    const v1, 0x7f0f047b

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    return-void
.end method

.method private updateItems()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    array-length v0, v5

    new-array v4, v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    aget-object v1, v5, v2

    new-instance v3, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v3}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->IS_VZW_ICON:Z

    if-eqz v5, :cond_1

    const v5, 0x7f0203a4

    :goto_1
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0135

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->tint:I

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->iconBackground:Z

    iput-object v1, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    iput-object v7, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const v5, 0x7f0203a3

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createDetailView convertView="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_5

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " mState.value "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v3, v3, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "wifi"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_1
    invoke-static {p1}, Lcom/android/keyguard/KeyguardRune;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f040122

    invoke-virtual {v3, v5, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v3, 0x7f13039d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    const v3, 0x7f13039e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectionMode:Landroid/widget/TextView;

    const v3, 0x7f1303a4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListContainer:Landroid/view/View;

    const v3, 0x7f1303a5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListTitle:Landroid/widget/TextView;

    const v3, 0x7f1303a0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    const v3, 0x7f1303a1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharingContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiApConcurrentSupported()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharingContainer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v3, 0x7f1303a2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharingStatus:Landroid/widget/TextView;

    const v3, 0x7f1303a3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharing:Landroid/widget/Switch;

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->setupDetailView(Landroid/view/View;)V

    const v3, 0x7f1303a6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {p1, v7, v2}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string/jumbo v4, "HotSpot"

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v3, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    const v3, 0x7f13039c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->IS_VZW_ICON:Z

    if-eqz v3, :cond_3

    const v3, 0x7f0203a4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0135

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateHotSpotApInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateConnectedDeviceList()V

    return-object p2

    :cond_5
    move v3, v4

    goto/16 :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get1(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v1

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_JAPAN_POPUP:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f0470

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f046f

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_TMB_POPUP:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0f0471

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_MTR_POPUP:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0f0472

    goto :goto_0

    :cond_3
    const v0, 0x7f0f046e

    goto :goto_0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0

    return-void
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0

    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setToggleState(Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-wrap0(Lcom/android/systemui/qs/tiles/HotspotTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    const v1, 0x7f0f046d

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-wrap3(Lcom/android/systemui/qs/tiles/HotspotTile;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get7(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-interface {v0, v3, v1}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    return v0

    :cond_2
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_USA_POPUP:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "send WIFIAP_ENABLE_WARNING for USA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    return v0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-wrap2(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->setItemsVisible(Z)V

    return p1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public updateConnectedDeviceList()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get5(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->getConnectedDeviceList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateItems()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->setItemsVisible(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public updateHotSpotApInfo()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mobileAp Name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    const v4, 0x7f0f0789

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4, v6, v6}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getSpannableString(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->checkWifiMobileApStatus()V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->isWifiSharingEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharingStatus:Landroid/widget/TextView;

    const v4, 0x7f0f0478

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharing:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v3, v7, :cond_9

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectionMode:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0473

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_4
    const-string/jumbo v3, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_random_password"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    invoke-direct {p0, v4, v10, v11}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-direct {p0, v8, v4, v5}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v7, v10, v11}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getRandomSymbol(IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_random_password"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_ap_random_password"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharingStatus:Landroid/widget/TextView;

    const v4, 0x7f0f0479

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiSharing:Landroid/widget/Switch;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    :cond_9
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v3, v8, :cond_a

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectionMode:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0475

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectionMode:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
