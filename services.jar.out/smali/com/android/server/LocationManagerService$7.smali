.class Lcom/android/server/LocationManagerService$7;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidImportance(II)V
    .locals 14

    invoke-static/range {p2 .. p2}, Lcom/android/server/LocationManagerService;->-wrap2(I)Z

    move-result v5

    new-instance v0, Ljava/util/HashSet;

    iget-object v10, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v10}, Lcom/android/server/LocationManagerService;->-get21(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-direct {v0, v10}, Ljava/util/HashSet;-><init>(I)V

    iget-object v10, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v10}, Lcom/android/server/LocationManagerService;->-get17(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v10}, Lcom/android/server/LocationManagerService;->-get21(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v10, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v10, v10, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v10, p1, :cond_1

    iget-boolean v10, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    if-eq v10, v5, :cond_1

    const-string/jumbo v12, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "request from uid "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, " is now "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v5, :cond_2

    const-string/jumbo v10, "foreground"

    :goto_1
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    iget-object v10, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v12, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v12, v12, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    invoke-static {v10, v12}, Lcom/android/server/LocationManagerService;->-wrap3(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_2
    :try_start_1
    const-string/jumbo v10, "background)"

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v10, v6}, Lcom/android/server/LocationManagerService;->-wrap7(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v10, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v10}, Lcom/android/server/LocationManagerService;->-get8(Lcom/android/server/LocationManagerService;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/LocationManagerService$Identity;

    iget v10, v10, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v10, p1, :cond_5

    const-string/jumbo v12, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "gnss measurements listener from uid "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, " is now "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v5, :cond_7

    const-string/jumbo v10, "foreground"

    :goto_4
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_6

    iget-object v12, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/LocationManagerService$Identity;

    invoke-static {v12, v10}, Lcom/android/server/LocationManagerService;->-wrap3(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_6
    iget-object v10, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v10}, Lcom/android/server/LocationManagerService;->-get9(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GnssMeasurementsProvider;

    move-result-object v12

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/IGnssMeasurementsListener;

    invoke-virtual {v12, v10}, Lcom/android/server/location/GnssMeasurementsProvider;->addListener(Landroid/os/IInterface;)Z

    goto :goto_3

    :cond_7
    const-string/jumbo v10, "background)"

    goto :goto_4

    :cond_8
    iget-object v10, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v10}, Lcom/android/server/LocationManagerService;->-get9(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GnssMeasurementsProvider;

    move-result-object v12

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/IGnssMeasurementsListener;

    invoke-virtual {v12, v10}, Lcom/android/server/location/GnssMeasurementsProvider;->removeListener(Landroid/os/IInterface;)V

    goto :goto_3

    :cond_9
    iget-object v10, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v10}, Lcom/android/server/LocationManagerService;->-get10(Lcom/android/server/LocationManagerService;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/LocationManagerService$Identity;

    iget v10, v10, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v10, p1, :cond_a

    const-string/jumbo v12, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "gnss navigation message listener from uid "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, " is now "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v5, :cond_c

    const-string/jumbo v10, "foreground"

    :goto_6
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_b

    iget-object v12, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/LocationManagerService$Identity;

    invoke-static {v12, v10}, Lcom/android/server/LocationManagerService;->-wrap3(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_b
    iget-object v10, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v10}, Lcom/android/server/LocationManagerService;->-get11(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GnssNavigationMessageProvider;

    move-result-object v12

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/IGnssNavigationMessageListener;

    invoke-virtual {v12, v10}, Lcom/android/server/location/GnssNavigationMessageProvider;->addListener(Landroid/os/IInterface;)Z

    goto :goto_5

    :cond_c
    const-string/jumbo v10, "background)"

    goto :goto_6

    :cond_d
    iget-object v10, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v10}, Lcom/android/server/LocationManagerService;->-get11(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GnssNavigationMessageProvider;

    move-result-object v12

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/IGnssNavigationMessageListener;

    invoke-virtual {v12, v10}, Lcom/android/server/location/GnssNavigationMessageProvider;->removeListener(Landroid/os/IInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_e
    monitor-exit v11

    return-void
.end method
