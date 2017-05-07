.class public Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallProtectAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/whitepages/nameid/CallProtectAsyncQueryHandler$CookieWrapper;
    }
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/wp_listing_info"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final QUERY_TOKEN:I = -0x2

.field private static final SELECTION:Ljava/lang/String; = "raw_contact_id = ? AND mimetype = ?"

.field private static final TAG:Ljava/lang/String;

.field private static sMe:Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;->PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;->sMe:Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;
    .locals 3

    const-class v1, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;->sMe:Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;->sMe:Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;

    :cond_0
    sget-object v0, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;->sMe:Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setCallProtectInfoCache(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/whitepages/nameid/CallProtectInfo;->getCallProtectInfo(Landroid/database/Cursor;)Lcom/whitepages/nameid/CallProtectInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callProtectInfo:Lcom/whitepages/nameid/CallProtectInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    if-eqz p3, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler$CookieWrapper;

    iget-object v1, v0, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler$CookieWrapper;->callId:Ljava/lang/String;

    invoke-direct {p0, p3, v1}, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;->setCallProtectInfoCache(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/whitepages/nameid/CallProtectInfoController;->getInstance()Lcom/whitepages/nameid/CallProtectInfoController;

    move-result-object v1

    iget-object v2, v0, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler$CookieWrapper;->callId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/whitepages/nameid/CallProtectInfoController;->notifyListenersOfCallProtectInfoQueryComplete(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;->TAG:Ljava/lang/String;

    const-string v2, "cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startQuery(JLjava/lang/String;)V
    .locals 9

    const/4 v7, 0x0

    sget-object v0, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/wp_listing_info"

    aput-object v1, v6, v0

    new-instance v2, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler$CookieWrapper;

    invoke-direct {v2, v7}, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler$CookieWrapper;-><init>(Lcom/whitepages/nameid/CallProtectAsyncQueryHandler$1;)V

    iput-object p3, v2, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler$CookieWrapper;->callId:Ljava/lang/String;

    const/4 v1, -0x2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;->PROJECTION:[Ljava/lang/String;

    const-string v5, "raw_contact_id = ? AND mimetype = ?"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/whitepages/nameid/CallProtectAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
