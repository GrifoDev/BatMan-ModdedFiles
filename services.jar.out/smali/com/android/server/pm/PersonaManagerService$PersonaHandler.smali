.class Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaManagerServiceHandler"

.field public static final WAKE_LOCK_FLAG:Ljava/lang/String; = "flag"

.field public static final WAKE_LOCK_PACKAGE:Ljava/lang/String; = "package"

.field public static final WAKE_LOCK_PID:Ljava/lang/String; = "pid"

.field public static final WAKE_LOCK_TYPE:Ljava/lang/String; = "type"

.field public static final WAKE_LOCK_UID:Ljava/lang/String; = "uid"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v0, "PersonaHandler"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap2(Ljava/lang/String;)I

    return-void
.end method

.method private parseEnterprisedataXml()V
    .locals 9

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->-get16(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v6, "PersonaManagerService"

    const-string/jumbo v7, "reading from xml resource"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->-get0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "enterprisedata.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->-set3(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->-set5(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_3
    const-string/jumbo v6, "PersonaManagerService"

    const-string/jumbo v7, "Failed to find enterprisedata.xml in system container"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v6

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v3, v4

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 56

    const-string/jumbo v52, "PersonaHandler"

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-wrap2(Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v52, v0

    sparse-switch v52, :sswitch_data_0

    const-string/jumbo v52, "PersonaManagerService"

    const-string/jumbo v53, "msg : ignore unknown message"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    const-string/jumbo v52, "type"

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    const-string/jumbo v52, "flag"

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    const-string/jumbo v52, "uid"

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v47

    const-string/jumbo v52, "pid"

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v35

    invoke-static/range {v47 .. v47}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move/from16 v1, v44

    move/from16 v2, v18

    move/from16 v3, v47

    move/from16 v4, v50

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap11(Lcom/android/server/pm/PersonaManagerService;ZIII)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v52, "PersonaManagerService"

    const-string/jumbo v53, "MSG_BOOT_LOAD_PERSONA_SYSTEMREADY is called..."

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-set2(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    new-instance v53, Lcom/android/server/pm/PersonaLegacyStateMonitor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Lcom/android/server/pm/PersonaLegacyStateMonitor;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-static/range {v52 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap5(Lcom/android/server/pm/PersonaManagerService;Z)Ljava/util/List;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap15(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)V

    invoke-interface/range {v31 .. v31}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_1
    :goto_1
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_b

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/knox/SemPersonaInfo;

    if-eqz v33, :cond_1

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    move/from16 v52, v0

    if-nez v52, :cond_1

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    move/from16 v52, v0

    if-nez v52, :cond_1

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    move/from16 v52, v0

    if-eqz v52, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v52

    if-eqz v52, :cond_8

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v52, v0

    if-eqz v52, :cond_2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->isEmpty()Z

    move-result v52

    if-eqz v52, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap14(Lcom/android/server/pm/PersonaManagerService;I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_8

    const-string/jumbo v52, "PersonaManagerService:FOTA"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "Startiing FOTA for persona "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get7(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v53

    monitor-enter v53

    const/16 v52, 0x1

    :try_start_0
    move/from16 v0, v52

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    const-string/jumbo v52, "PersonaManagerService"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "PMS systemReady: setting upgradeInProgress for ContainerId = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "; pi.upgradeInProgress = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get9(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v52

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v54, v0

    move-object/from16 v0, v52

    move/from16 v1, v54

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get16(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v52

    if-eqz v52, :cond_4

    const/16 v22, 0x0

    :try_start_1
    const-string/jumbo v52, "PersonaManagerService"

    const-string/jumbo v53, "reading from xml resource for fota"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Ljava/io/File;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->-get0()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string/jumbo v53, "enterprisedata.xml"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v17

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v52

    if-eqz v52, :cond_9

    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    move-object/from16 v2, v52

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v15}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-virtual {v15}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-set3(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-static/range {v52 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-set5(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v22, v23

    :goto_2
    if-eqz v22, :cond_4

    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    const/16 v16, 0x1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get10(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v52

    const-string/jumbo v53, "com.google.android.webview"

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v54, v0

    const/16 v55, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    move/from16 v2, v55

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-nez v6, :cond_5

    const/16 v16, 0x0

    :cond_5
    const-string/jumbo v52, "PersonaManagerService"

    const-string/jumbo v53, "Webview package is in Knox container"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    if-nez v16, :cond_6

    const-string/jumbo v52, "PersonaManagerService"

    const-string/jumbo v53, "Webview package is not in Knox container, hence install that package"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v53, v0

    const-string/jumbo v54, "com.google.android.webview"

    invoke-static/range {v52 .. v54}, Lcom/android/server/pm/PersonaManagerService;->-wrap3(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I

    :cond_6
    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    move/from16 v52, v0

    if-eqz v52, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap12(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v33

    invoke-static {v0, v1, v9}, Lcom/android/server/pm/PersonaManagerService;->-wrap10(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;Ljava/util/List;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v52

    if-eqz v52, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v53

    const-string/jumbo v54, "fwversion"

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    xor-int/lit8 v52, v52, 0x1

    if-eqz v52, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap19(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v52

    monitor-exit v53

    throw v52

    :cond_9
    :try_start_5
    const-string/jumbo v52, "PersonaManagerService"

    const-string/jumbo v53, "Failed to find enterprisedata.xml in system container"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception v14

    :goto_5
    :try_start_6
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v52, "PersonaManagerService"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "Failed to parse enterprisedata - Exception: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v22, :cond_4

    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v14

    goto/16 :goto_3

    :catch_2
    move-exception v14

    goto/16 :goto_3

    :catchall_1
    move-exception v52

    :goto_6
    if-eqz v22, :cond_a

    :try_start_8
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_a
    :goto_7
    throw v52

    :catch_3
    move-exception v14

    goto :goto_7

    :catch_4
    move-exception v14

    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v52

    if-eqz v52, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v53

    const-string/jumbo v54, "fwversion"

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    xor-int/lit8 v52, v52, 0x1

    if-eqz v52, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-wrap9(Lcom/android/server/pm/PersonaManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-wrap8(Lcom/android/server/pm/PersonaManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-wrap0(Lcom/android/server/pm/PersonaManagerService;)Z

    :cond_c
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v52

    if-lez v52, :cond_11

    const-string/jumbo v52, "PersonaManagerService:FOTA"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "cleanPersonaInfo size - "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_11

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    const-string/jumbo v52, "PersonaManagerService:FOTA"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "clean up started for persona id - "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v49, Ljava/io/File;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    sget-object v53, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, ".xml"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v49

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v49, :cond_10

    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->exists()Z

    move-result v52

    if-eqz v52, :cond_10

    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->delete()Z

    move-result v40

    const-string/jumbo v52, "PersonaManagerService:FOTA"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "persona xml delete status "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    sget-object v53, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v24, Ljava/io/File;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v53, Lcom/samsung/android/knox/SemPersonaManager$AppType;->INSTALLER_WHITELIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual/range {v53 .. v53}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string/jumbo v53, ".xml"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v52

    if-eqz v52, :cond_d

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    move-result v40

    const-string/jumbo v52, "PersonaManagerService:FOTA"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "installer whitelist xml delete status "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v12, Ljava/io/File;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v53, Lcom/samsung/android/knox/SemPersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual/range {v53 .. v53}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string/jumbo v53, ".xml"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v28

    move-object/from16 v1, v52

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v52

    if-eqz v52, :cond_e

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v40

    const-string/jumbo v52, "PersonaManagerService:FOTA"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "Diabled COM launcher xml delete status "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance v13, Ljava/io/File;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v53, Lcom/samsung/android/knox/SemPersonaManager$AppType;->DISABLED_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual/range {v53 .. v53}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string/jumbo v53, ".xml"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v28

    move-object/from16 v1, v52

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v52

    if-eqz v52, :cond_f

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v40

    const-string/jumbo v52, "PersonaManagerService:FOTA"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "Diabled launcher xml delete status "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get9(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v52

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v53

    invoke-virtual/range {v52 .. v53}, Landroid/util/SparseArray;->remove(I)V

    const-string/jumbo v52, "PersonaManagerService:FOTA"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "clean up ended for persona id - "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_10
    const-string/jumbo v52, "PersonaManagerService:FOTA"

    const-string/jumbo v53, "persona file don\'t exist"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v52

    if-eqz v52, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v52

    if-lez v52, :cond_14

    const/16 v25, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v52

    move/from16 v0, v25

    move/from16 v1, v52

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v50

    const-string/jumbo v52, "PersonaManagerService:FOTA"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "clean up started for persona list xml - "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v32, Ljava/io/File;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    sget-object v53, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    const-string/jumbo v53, "personalist.xml"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v32, :cond_12

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v52

    if-eqz v52, :cond_12

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->delete()Z

    move-result v40

    const-string/jumbo v52, "PersonaManagerService:FOTA"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "persona list xml delete status "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    const-string/jumbo v52, "PersonaManagerService:FOTA"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "clean up ended for persona list xml - "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_a

    :cond_12
    const-string/jumbo v52, "PersonaManagerService:FOTA"

    const-string/jumbo v53, "persona list file don\'t exist"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v52, "PersonaManagerService:FOTA"

    const-string/jumbo v53, "clearing user with persona list cache"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get12(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v52

    if-eqz v52, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get12(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->exists()Z

    move-result v52

    if-eqz v52, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get12(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->delete()Z

    move-result v40

    const-string/jumbo v52, "PersonaManagerService:FOTA"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "user list file delete status - "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    new-instance v51, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v52

    const-string/jumbo v53, "userwithpersonalist.xml.crt"

    invoke-direct/range {v51 .. v53}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v51, :cond_16

    invoke-virtual/range {v51 .. v51}, Ljava/io/File;->exists()Z

    move-result v52

    if-eqz v52, :cond_16

    invoke-virtual/range {v51 .. v51}, Ljava/io/File;->delete()Z

    move-result v40

    const-string/jumbo v52, "PersonaManagerService:FOTA"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "user list backup file delete status - "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v53

    monitor-enter v53

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v52

    const-string/jumbo v54, "fwversion"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v11

    if-eqz v8, :cond_17

    if-eqz v11, :cond_18

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    xor-int/lit8 v52, v52, 0x1

    if-eqz v52, :cond_18

    :cond_17
    const-string/jumbo v52, "PersonaManagerService"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Storing fw version - "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, ", fota version - "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const/16 v55, 0x9

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v52

    const-string/jumbo v54, "fwversion"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v52

    const-string/jumbo v54, "fotaversion"

    const-string/jumbo v55, "9"

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-wrap20(Lcom/android/server/pm/PersonaManagerService;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_18
    monitor-exit v53

    goto/16 :goto_0

    :catchall_2
    move-exception v52

    monitor-exit v53

    throw v52

    :sswitch_2
    :try_start_a
    const-string/jumbo v52, "PersonaManagerServiceHandler"

    const-string/jumbo v53, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v52

    const-string/jumbo v53, "user"

    invoke-virtual/range {v52 .. v53}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/UserManager;

    const/16 v52, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v30

    const/16 v19, 0x0

    :goto_c
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v52

    move/from16 v0, v19

    move/from16 v1, v52

    if-ge v0, v1, :cond_0

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/content/pm/UserInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaServiceHelper;->isTimaAvailable(Landroid/content/Context;)Z

    move-result v52

    if-eqz v52, :cond_19

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v52, v0

    const/16 v53, 0x4

    invoke-static/range {v52 .. v53}, Lcom/samsung/android/knox/SemPersonaManager;->clearAttributes(II)Z

    const-string/jumbo v52, "PersonaManagerService"

    const-string/jumbo v53, "Clear Device compromised"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_19
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    :catch_5
    move-exception v14

    const-string/jumbo v52, "PersonaManagerService"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, " BootReceiver : Exception while softStartPersona() "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move/from16 v1, v39

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap17(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v52, v0

    if-lez v52, :cond_1a

    const/16 v38, 0x1

    :goto_d
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v10, v2}, Lcom/android/server/pm/PersonaManagerService;->-wrap7(Lcom/android/server/pm/PersonaManagerService;ILandroid/content/ComponentName;Z)V

    goto/16 :goto_0

    :cond_1a
    const/16 v38, 0x0

    goto :goto_d

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-static/range {v52 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap16(Lcom/android/server/pm/PersonaManagerService;Z)V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-wrap6(Lcom/android/server/pm/PersonaManagerService;)V

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-static/range {v52 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap16(Lcom/android/server/pm/PersonaManagerService;Z)V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v52

    move/from16 v0, v52

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap18(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get13(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :cond_1b
    :goto_e
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_0

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v52

    if-eqz v52, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object v52

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v52

    xor-int/lit8 v52, v52, 0x1

    if-nez v52, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object v52

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v52

    if-nez v52, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object v52

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v52

    if-eqz v52, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object v52

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v52

    xor-int/lit8 v52, v52, 0x1

    if-eqz v52, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get11(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxTimeoutHandler;

    move-result-object v52

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Lcom/android/server/pm/KnoxTimeoutHandler;->getScreenOffTimeoutLocked(I)I

    move-result v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string/jumbo v52, "knox.power_button_instantly_locks"

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v53, v0

    const/16 v54, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v52

    move/from16 v2, v54

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v26

    if-eqz v41, :cond_1c

    const/16 v52, -0x2

    move/from16 v0, v41

    move/from16 v1, v52

    if-ne v0, v1, :cond_1d

    :cond_1c
    :goto_f
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v52, "android.intent.extra.user_handle"

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v53, v0

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v42

    const-string/jumbo v52, "knox.container.proxy.EVENT_LOCK_TIMEOUT"

    move-object/from16 v0, v52

    invoke-static {v0, v7}, Lcom/samsung/android/knox/ContainerProxy;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static/range {v42 .. v43}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_e

    :cond_1d
    if-lez v26, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v52

    if-eqz v52, :cond_1b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    const/16 v53, 0x2

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_1b

    goto :goto_f

    :catchall_3
    move-exception v52

    move-object/from16 v22, v23

    goto/16 :goto_6

    :catch_6
    move-exception v14

    move-object/from16 v22, v23

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_8
        0xa -> :sswitch_0
        0xb -> :sswitch_9
        0xd -> :sswitch_2
        0xf -> :sswitch_1
        0x32 -> :sswitch_3
        0x33 -> :sswitch_6
        0x34 -> :sswitch_7
    .end sparse-switch
.end method
