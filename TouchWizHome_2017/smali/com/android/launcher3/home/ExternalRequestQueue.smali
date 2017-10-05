.class public final Lcom/android/launcher3/home/ExternalRequestQueue;
.super Ljava/lang/Object;
.source "ExternalRequestQueue.java"


# static fields
.field private static final EXTERNAL_REQUEST_LIST_HOME_APPS:Ljava/lang/String; = "external_request_list_home_apps"

.field private static final EXTERNAL_REQUEST_LIST_HOME_ONLY:Ljava/lang/String; = "external_request_list_home_only"

.field private static final INSTALL_SHORTCUT_FLUSHED:Ljava/lang/String; = "com.samsung.android.launcher.action.INSTALL_SHORTCUT_FLUSHED"

.field private static final TAG:Ljava/lang/String; = "ExternalRequestQueue"

.field private static final TASK_EDGE_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.taskedge"

.field private static final sLock:Ljava/lang/Object;

.field private static sSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/home/ExternalRequestQueue;->sSharedPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addToExternalRequestQueue(Landroid/content/SharedPreferences;Lcom/android/launcher3/home/ExternalRequestInfo;)V
    .locals 5

    sget-object v4, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/home/ExternalRequestInfo;->encodeToString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashSet;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v1}, Lcom/android/launcher3/home/ExternalRequestQueue;->setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    :cond_0
    monitor-exit v4

    return-void

    :cond_1
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;
    .locals 6

    :try_start_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/launcher3/home/InstallShortcutReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v3

    goto :goto_1

    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/launcher3/home/UninstallShortcutReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    move-result-object v3

    goto :goto_1

    :pswitch_2
    invoke-static {p0, p1}, Lcom/android/launcher3/home/InstallWidgetReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;

    move-result-object v3

    goto :goto_1

    :pswitch_3
    invoke-static {p0, p1}, Lcom/android/launcher3/home/UninstallWidgetReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "ExternalRequestQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading shortcut to add: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static disableAndFlushExternalRequestQueue(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherAppState;->enableExternalQueue(Z)V

    invoke-static {p0, p1}, Lcom/android/launcher3/home/ExternalRequestQueue;->flushExternalRequestQueue(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V

    return-void
.end method

.method private static flushExternalRequestQueue(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher3/LauncherModel$Callbacks;->isHomeNormal()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getAndClearExternalRequestQueue(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Lcom/android/launcher3/home/ExternalRequestQueue$1;

    invoke-direct {v3}, Lcom/android/launcher3/home/ExternalRequestQueue$1;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/ExternalRequestInfo;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/home/ExternalRequestInfo;->runRequestInfo(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->sendBroadCaseToTaskEdge(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static getAndClearExternalRequestQueue(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/ExternalRequestInfo;",
            ">;"
        }
    .end annotation

    sget-object v5, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v3

    const-string v4, "ExternalRequestQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting and clearing EXTERNAL_REQUEST_LIST: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v5

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/launcher3/home/ExternalRequestQueue;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p0, v4}, Lcom/android/launcher3/home/ExternalRequestQueue;->setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external_request_list_home_only"

    :goto_0
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "external_request_list_home_apps"

    goto :goto_0
.end method

.method static getExternalRequestListByType(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/ExternalRequestInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/home/ExternalRequestInfo;->getRequestType()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    sget-object v1, Lcom/android/launcher3/home/ExternalRequestQueue;->sSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/home/ExternalRequestQueue;->sSharedPref:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v1, Lcom/android/launcher3/home/ExternalRequestQueue;->sSharedPref:Landroid/content/SharedPreferences;

    return-object v1
.end method

.method static queueExternalRequestInfo(Lcom/android/launcher3/home/ExternalRequestInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->isExternalQueueEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->isHomeNormal()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/ExternalRequestInfo;->runRequestInfo(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/launcher3/home/ExternalRequestQueue;->sendBroadCaseToTaskEdge(Landroid/content/Context;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->addToExternalRequestQueue(Landroid/content/SharedPreferences;Lcom/android/launcher3/home/ExternalRequestInfo;)V

    goto :goto_1
.end method

.method static removeFromExternalRequestQueue(Landroid/content/Context;Lcom/android/launcher3/home/ExternalRequestInfo;)V
    .locals 7

    sget-object v6, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/ExternalRequestInfo;->equals(Lcom/android/launcher3/home/ExternalRequestInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/launcher3/home/ExternalRequestQueue;->setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    :cond_2
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method static removeFromExternalRequestQueue(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v6, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/ExternalRequestInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/home/ExternalRequestInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/home/ExternalRequestInfo;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/launcher3/home/ExternalRequestQueue;->setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static removeFromExternalRequestQueue(Landroid/content/Context;ILandroid/content/Intent;)Z
    .locals 13

    const/4 v2, 0x0

    sget-object v10, Lcom/android/launcher3/home/ExternalRequestQueue;->sLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestList(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v9, Lorg/json/JSONTokener;

    invoke-direct {v9, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    const-string v9, "type"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v9, "intent.launch"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    invoke-static {v9, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    if-ne v7, p1, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {p2, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    :try_start_2
    invoke-static {p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/android/launcher3/home/ExternalRequestQueue;->setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    const-string v9, "ExternalRequestQueue"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeFromExternalRequestQueue, type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v10

    return v2

    :catch_0
    move-exception v0

    const-string v9, "ExternalRequestQueue"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "JSONException occured"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    :catch_1
    move-exception v0

    :try_start_3
    const-string v9, "ExternalRequestQueue"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "URISyntaxException occured"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private static sendBroadCaseToTaskEdge(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/home/ExternalRequestQueue$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/ExternalRequestQueue$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static setExternalRequestList(Landroid/content/SharedPreferences;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external_request_list_home_only"

    :goto_0
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    const-string v0, "external_request_list_home_apps"

    goto :goto_0
.end method
