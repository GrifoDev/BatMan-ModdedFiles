.class public Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;
.super Ljava/lang/Object;
.source "LanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;
    }
.end annotation


# instance fields
.field private mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/Recognizer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->isExternalStorageWritable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/handwriting/UninitializedException;

    const-string/jumbo v1, "Cannot read and write external storage"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/handwriting/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/handwriting/UninitializedException;

    const-string/jumbo v1, "Recognizer SDK for Text Recognizer has not been initialized"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/handwriting/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->isExternalStorageReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->getInstance(Lcom/samsung/android/sdk/handwriting/Recognizer;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    return-void
.end method

.method private isExternalStorageReadable()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const-string/jumbo v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2
.end method

.method private isExternalStorageWritable()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public getAvailableLanguage()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->getAvailableLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->update(Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;Z)V

    return-void
.end method

.method public update(Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;Z)V
    .locals 3

    move-object v0, p1

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    new-instance v2, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$1;-><init>(Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;)V

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V

    return-void
.end method
