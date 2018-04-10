.class public Lcom/samsung/android/multiscreen/MultiScreenSettings;
.super Ljava/lang/Object;
.source "MultiScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;,
        Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "MultiScreenSettings"

.field private static mMultiScreenDisplayChooserEnabled:I

.field private static mMultiScreenModeEnabled:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOnSettingChangedListener:Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;

.field private mSettingsObserver:Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/multiscreen/MultiScreenSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/multiscreen/MultiScreenSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multiscreen/MultiScreenSettings;->updateSettings()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMultiScreenModeEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mMultiScreenModeEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMultiScreenDisplayChooserEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mMultiScreenDisplayChooserEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method private updateSettings()V
    .locals 0

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    new-instance v0, Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;

    iget-object v1, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;-><init>(Lcom/samsung/android/multiscreen/MultiScreenSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mSettingsObserver:Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mSettingsObserver:Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;->observe()V

    return-void
.end method

.method public isMultiScreenDisplayChooserEnabled()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mMultiScreenDisplayChooserEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiScreenModeEnabled()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mMultiScreenModeEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnSettingChangedListener(Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;

    return-void
.end method
