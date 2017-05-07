.class public Lcom/android/launcher3/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# instance fields
.field private final mAppName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, "Home"

    iput-object v0, p0, Lcom/android/launcher3/LauncherApplication;->mAppName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    const-string v1, "Home"

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/LauncherApplication$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/LauncherApplication$1;-><init>(Lcom/android/launcher3/LauncherApplication;Lcom/samsung/android/sdk/bixby/BixbyApi;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setStartStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V

    new-instance v1, Lcom/android/launcher3/LauncherApplication$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/LauncherApplication$2;-><init>(Lcom/android/launcher3/LauncherApplication;Lcom/samsung/android/sdk/bixby/BixbyApi;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/logging/SALogging;->init(Landroid/app/Application;)V

    return-void
.end method
