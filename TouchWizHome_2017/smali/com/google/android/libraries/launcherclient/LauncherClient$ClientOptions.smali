.class public Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;
.super Ljava/lang/Object;
.source "LauncherClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/launcherclient/LauncherClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientOptions"
.end annotation


# instance fields
.field private mEnableHotword:Z

.field private mEnableOverlay:Z

.field private mEnablePrewarming:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;->mEnableOverlay:Z

    iput-boolean p2, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;->mEnableHotword:Z

    iput-boolean p3, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;->mEnablePrewarming:Z

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;->mEnableOverlay:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;->mEnableHotword:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;->mEnablePrewarming:Z

    return v0
.end method
