.class public Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
.super Ljava/lang/Object;
.source "LanguagePack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;,
        Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;,
        Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;,
        Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$OnDownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final HANDLE_DOWNLOAD_CANCEL:I

.field private mCurrentDownloadProgress:I

.field private mDeleteProgress:I

.field private mDownloadInProgress:Z

.field private mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

.field private mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

.field private mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

.field private mDownloadProgress:I

.field private mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

.field private mLanguagePacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHandler:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;

.field private mServiceId:I

.field private mTriggerLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;-><init>(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mTriggerLocation:I

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mTriggerLocation:I

    iget-object v0, p1, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    iput v2, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadProgress:I

    iput v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mCurrentDownloadProgress:I

    iput v2, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDeleteProgress:I

    iput v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mServiceId:I

    iput v2, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mTriggerLocation:I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadInProgress:Z

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->HANDLE_DOWNLOAD_CANCEL:I

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;-><init>(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mListenerHandler:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mServiceId:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadProgress:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadProgress:I

    return p1
.end method

.method static synthetic access$208(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadProgress:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mCurrentDownloadProgress:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mCurrentDownloadProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mServiceId:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;IZZII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->createNotification(IZZII)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadInProgress:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadInProgress:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;IZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->createNotificationForNegative(IZI)V

    return-void
.end method

.method private createNotification(IZZII)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;->access$1600(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;IZZII)V

    return-void

    :cond_0
    return-void
.end method

.method private createNotificationForNegative(IZI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;->access$1700(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$DownloadNotification;IZI)V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public download()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadInProgress:Z

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadProgress:I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadProgress:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V

    return-void
.end method

.method public isDownloadInProgress()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mDownloadInProgress:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_1
    return v4

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->isDownloadInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    return v4
.end method

.method public setLanguagePackManager(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    return-void
.end method
