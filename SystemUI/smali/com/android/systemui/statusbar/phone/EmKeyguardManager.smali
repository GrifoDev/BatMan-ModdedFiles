.class public Lcom/android/systemui/statusbar/phone/EmKeyguardManager;
.super Ljava/lang/Object;
.source "EmKeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;,
        Lcom/android/systemui/statusbar/phone/EmKeyguardManager$BixbyKeyguardCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;


# instance fields
.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mBixbyCallback:Lcom/android/systemui/statusbar/phone/EmKeyguardManager$BixbyKeyguardCallback;

.field private mContext:Landroid/content/Context;

.field private mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)Lcom/android/systemui/statusbar/phone/EmKeyguardManager$BixbyKeyguardCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->mBixbyCallback:Lcom/android/systemui/statusbar/phone/EmKeyguardManager$BixbyKeyguardCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/EmKeyguardManager$BixbyKeyguardCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;-><init>(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    const-string/jumbo v0, "EmKeyguardManager"

    const-string/jumbo v1, "BixbyApi.getInstance KEYGUARD_BIXBY_SWITCH: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/EmKeyguardManager$BixbyKeyguardCallback;)Lcom/android/systemui/statusbar/phone/EmKeyguardManager;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->sInstance:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/EmKeyguardManager$BixbyKeyguardCallback;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->sInstance:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->sInstance:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    return-object v0
.end method


# virtual methods
.method public createInterimStateListener()V
    .locals 2

    const-string/jumbo v0, "EmKeyguardManager"

    const-string/jumbo v1, "createInterimStateListener() KEYGUARD_BIXBY_SWITCH: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
