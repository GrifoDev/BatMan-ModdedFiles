.class public Lcom/whitepages/nameid/CallProtectInfoController;
.super Ljava/lang/Object;
.source "CallProtectInfoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/whitepages/nameid/CallProtectInfoController$CallProtectInfoListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sMe:Lcom/whitepages/nameid/CallProtectInfoController;


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/whitepages/nameid/CallProtectInfoController$CallProtectInfoListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/whitepages/nameid/CallProtectInfoController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/whitepages/nameid/CallProtectInfoController;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/whitepages/nameid/CallProtectInfoController;

    invoke-direct {v0}, Lcom/whitepages/nameid/CallProtectInfoController;-><init>()V

    sput-object v0, Lcom/whitepages/nameid/CallProtectInfoController;->sMe:Lcom/whitepages/nameid/CallProtectInfoController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/whitepages/nameid/CallProtectInfoController;->mListeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/whitepages/nameid/CallProtectInfoController;
    .locals 1

    sget-object v0, Lcom/whitepages/nameid/CallProtectInfoController;->sMe:Lcom/whitepages/nameid/CallProtectInfoController;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/whitepages/nameid/CallProtectInfoController$CallProtectInfoListener;)V
    .locals 5

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/whitepages/nameid/CallProtectInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/whitepages/nameid/CallProtectInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callProtectInfo:Lcom/whitepages/nameid/CallProtectInfo;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/whitepages/nameid/CallProtectInfoController$CallProtectInfoListener;->onCallProtectInfoQueryComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyListenersOfCallProtectInfoQueryComplete(Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/whitepages/nameid/CallProtectInfoController;->TAG:Ljava/lang/String;

    const-string v2, "notifyListenersOfCallProtectInfoQueryComplete"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/whitepages/nameid/CallProtectInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/whitepages/nameid/CallProtectInfoController$CallProtectInfoListener;

    invoke-interface {v0, p1}, Lcom/whitepages/nameid/CallProtectInfoController$CallProtectInfoListener;->onCallProtectInfoQueryComplete(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/whitepages/nameid/CallProtectInfoController$CallProtectInfoListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/whitepages/nameid/CallProtectInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public tearDown()V
    .locals 1

    iget-object v0, p0, Lcom/whitepages/nameid/CallProtectInfoController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/whitepages/nameid/CallProtectInfoController;->sMe:Lcom/whitepages/nameid/CallProtectInfoController;

    return-void
.end method
