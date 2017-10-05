.class public Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
.super Ljava/lang/Object;
.source "LauncherBnrHelper.java"


# static fields
.field public static final BNR_ERROR_CODE_INVALID_DATA:I = 0x3

.field public static final BNR_ERROR_CODE_STORAGE_FULL:I = 0x2

.field public static final BNR_ERROR_CODE_SUCCESS:I = 0x0

.field public static final BNR_ERROR_CODE_UNKNOWN:I = 0x1

.field public static final BNR_RESULT_FAIL:I = 0x1

.field public static final BNR_RESULT_OK:I = 0x0

.field private static final CHANGED_COMPONENT_LIST_XML:Ljava/lang/String; = "/change_native_packages.xml"

.field public static final HOMESCREEN_BACKUP_EXML:Ljava/lang/String; = "/homescreen.exml"

.field private static final TAG:Ljava/lang/String; = "LauncherBnrHelper"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_WIDGET:Ljava/lang/String; = "widget"

.field private static sCallBack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private static sChangedComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sChangedWidgetComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

.field public static sIsEasyMode:Z

.field public static sIsHomeOnly:Z


# instance fields
.field private mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

.field private mRestoredTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    sput-boolean v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    return-void
.end method

.method private addApacheLicense(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\n\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "\nCopyright (C) 2016 The Android Open Source Project\nLicensed under the Apache License, Version 2.0 (the \"License\");\nyou may not use this file except in compliance with the License.\nYou may obtain a copy of the License at\n\n  http://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software\ndistributed under the License is distributed on an \"AS IS\" BASIS,\nWITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\nSee the License for the specific language governing permissions and\nlimitations under the License.\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    return-void
.end method

.method private addChangedComponent(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 6

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "LauncherBnrHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChangedComponent before = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "LauncherBnrHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChangedComponent before = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private addChangedWidgetComponent(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChangedWidgetComponent before = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChangedWidgetComponent before = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private backupCategory(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const-string v6, "\n"

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "category"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    sget-object v6, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;

    invoke-interface {v0}, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;->backupCategory()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    if-lez v4, :cond_0

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "category"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "LauncherBnrHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backupCategory category : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v7, 0x3

    iput v7, v6, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    const-string v6, "LauncherBnrHelper"

    const-string v7, "backupCategory category is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private backupLayout(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener;)V
    .locals 16

    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->getEncryptStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;

    move-result-object v9

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    :try_start_2
    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v13, "UTF-8"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->backupCategory(Lorg/xmlpull/v1/XmlSerializer;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v13, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v13, :cond_2

    sget-object v13, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v11, v1, v14}, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;->backupLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v14, v14, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v13, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x3

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    :cond_2
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v13, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v13, :cond_5

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v13, 0x400

    new-array v4, v13, [B

    :goto_1
    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-virtual {v2, v4, v13, v14}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v10

    const/4 v13, -0x1

    if-eq v10, v13, :cond_5

    const/4 v13, 0x0

    invoke-virtual {v9, v4, v13, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v13

    move-object v6, v7

    :goto_2
    move-object v5, v13

    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    const-string v13, "LauncherBnrHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bnr fail, occur exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_3

    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_3
    if-eqz v6, :cond_4

    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_4
    :goto_4
    return-void

    :catch_1
    move-exception v5

    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    const-string v13, "LauncherBnrHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RuntimeException while generate XML : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v13

    move-object v6, v7

    :goto_5
    move-object v5, v13

    goto :goto_3

    :catch_3
    move-exception v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    const-string v13, "LauncherBnrHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error occured while generate XML : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    :catch_4
    move-exception v13

    move-object v6, v7

    :goto_6
    move-object v5, v13

    goto/16 :goto_3

    :cond_5
    if-eqz v9, :cond_6

    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_6
    if-eqz v7, :cond_a

    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    move-object v6, v7

    goto :goto_4

    :catch_5
    move-exception v5

    :goto_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x2

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    const-string v13, "LauncherBnrHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bnr fail, occur exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v9, :cond_7

    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_7
    if-eqz v6, :cond_4

    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v13

    :goto_8
    if-eqz v9, :cond_8

    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_8
    if-eqz v6, :cond_9

    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_9
    throw v13

    :catchall_1
    move-exception v13

    move-object v6, v7

    goto :goto_8

    :catch_6
    move-exception v5

    move-object v6, v7

    goto :goto_7

    :catch_7
    move-exception v13

    goto/16 :goto_2

    :catch_8
    move-exception v13

    goto :goto_6

    :catch_9
    move-exception v13

    goto/16 :goto_5

    :cond_a
    move-object v6, v7

    goto/16 :goto_4
.end method

.method private changeMode(Landroid/content/Context;Z)V
    .locals 5

    const-string v2, "LauncherBnrHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeMode toHomeOnly : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v2, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/LauncherAppState;->writeHomeOnlyModeEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->recreateLauncher(Landroid/content/Context;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "LauncherBnrHelper"

    const-string v3, "FavoritesProvider instance is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close inputStream IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static close(Ljava/io/OutputStream;)V
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close outputStream IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteDir(Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "LauncherBnrHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteDir, fileList.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v2, v4

    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "LauncherBnrHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", delete failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private endLCExtractorTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "\n\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "LCExtractorHome"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "favorites"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    return-void

    :cond_0
    const-string v0, "appOrder"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method public static getChangedComponent(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method

.method public static getChangedWidgetComponent(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method

.method public static getComponent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 8

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v5, v0

    :goto_1
    return-object v5

    :catch_0
    move-exception v2

    const/4 v5, 0x1

    :try_start_2
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-direct {v1, v5, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_2
    const-string v5, "LauncherBnrHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid componentName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_2

    invoke-static {p0, v0}, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->isWillRestored(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v0, v1

    goto :goto_2
.end method

.method public static getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "favorites"

    const-string v1, "easy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "favorites_easy"

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_2

    const-string v0, "favorites_standard"

    :cond_2
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    if-eqz v1, :cond_4

    const-string v0, "favorites_homeApps"

    :cond_3
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_4
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    if-nez v1, :cond_3

    const-string v0, "favorites_homeOnly"

    goto :goto_1
.end method

.method public static getFavoritesUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-static {p0, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFavoritesUri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "easy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_Easy;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_Standard;->CONTENT_URI:Landroid/net/Uri;

    :cond_2
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeApps;->CONTENT_URI:Landroid/net/Uri;

    :cond_3
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_4
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    .locals 2

    const-class v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sInstance:Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sInstance:Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    :cond_0
    sget-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sInstance:Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWorkspaceScreenTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "workspaceScreens"

    const-string v1, "easy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "workspaceScreens_easy"

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_2

    const-string v0, "workspaceScreens_standard"

    :cond_2
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    if-eqz v1, :cond_4

    const-string v0, "workspaceScreens_homeApps"

    :cond_3
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_4
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    if-nez v1, :cond_3

    const-string v0, "workspaceScreens_homeOnly"

    goto :goto_1
.end method

.method public static getWorkspaceScreenUri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "easy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens_Easy;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens_Standard;->CONTENT_URI:Landroid/net/Uri;

    :cond_2
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens_HomeApps;->CONTENT_URI:Landroid/net/Uri;

    :cond_3
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_4
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method private loadChangedComponentForPackage(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_2

    :cond_1
    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentForPackage item list size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v8, v6, -0x1

    if-ge v3, v8, :cond_4

    add-int/lit8 v5, v3, 0x1

    :goto_2
    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addChangedComponent(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private loadChangedComponentForWidget(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_2

    :cond_1
    const/4 v9, 0x1

    if-eq v7, v9, :cond_2

    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadChangedComponentForWidget item list size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v8

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v9, v6, -0x1

    if-ge v3, v9, :cond_4

    add-int/lit8 v5, v3, 0x1

    :goto_2
    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v8, v1, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addChangedWidgetComponent(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private loadChangedComponentFromPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/change_native_packages.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "LauncherBnrHelper"

    const-string v9, "loadChangedComponentFromPath there is no file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    const-string v8, "utf-8"

    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "package"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, p1, v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->loadChangedComponentForPackage(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v4

    :goto_2
    :try_start_2
    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_4
    const-string v8, "widget"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0, p1, v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->loadChangedComponentForWidget(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    move-object v3, v4

    :goto_3
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    throw v8

    :cond_5
    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v3, v4

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadChangedComponentFromPath exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v8

    goto :goto_3

    :catch_4
    move-exception v0

    goto/16 :goto_2

    :cond_6
    move-object v3, v4

    goto/16 :goto_0
.end method

.method private loadChangedComponentFromRes(Landroid/content/Context;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    sget-object v6, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c0007

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v6, v3

    if-lez v6, :cond_1

    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v2, v3, v6

    const-string v9, "\\|"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v9, v4

    if-ne v9, v11, :cond_0

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    aget-object v9, v4, v7

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    aget-object v9, v4, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v10

    aget-object v9, v4, v10

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addChangedComponent(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c0008

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v6, v3

    if-lez v6, :cond_3

    invoke-static {p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v5

    array-length v8, v3

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v2, v3, v6

    const-string v9, "\\|"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v9, v4

    if-ne v9, v11, :cond_2

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    aget-object v9, v4, v7

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    aget-object v9, v4, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v10

    aget-object v9, v4, v10

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v5, v1, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addChangedWidgetComponent(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private makeDebugLayoutFile(Ljava/lang/String;Ljava/io/FileInputStream;Ljava/io/InputStream;)V
    .locals 8

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/homescreen_original.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_1
    :try_start_2
    const-string v5, "LauncherBnrHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "debug mode error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    if-eqz p3, :cond_5

    invoke-static {p3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_5
    if-eqz p2, :cond_6

    invoke-static {p2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_6
    if-eqz v3, :cond_a

    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    move-object v2, v3

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz p3, :cond_7

    invoke-static {p3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_7
    if-eqz p2, :cond_8

    invoke-static {p2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_8
    if-eqz v2, :cond_9

    invoke-static {v2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_9
    throw v5

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_a
    move-object v2, v3

    goto :goto_2
.end method

.method public static registerBnrCallBack(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    return-void
.end method

.method private restoreLayout(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILcom/android/launcher3/common/bnr/LauncherBnrListener;)V
    .locals 12

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->loadChangedComponentFromRes(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->loadChangedComponentFromPath(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v9, 0x3ec

    move/from16 v0, p4

    if-ne v0, v9, :cond_3

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p5

    invoke-interface {v0, v5}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->getDecryptStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-direct {p0, p2, v5, v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->makeDebugLayoutFile(Ljava/lang/String;Ljava/io/FileInputStream;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_0

    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_0
    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_1
    move-object v4, v5

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v9, "LauncherBnrHelper"

    const-string v10, "Stop loader before restore layout"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    :cond_4
    sget-object v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    move-object v5, v4

    :goto_1
    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->getDecryptStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    const-string v10, "utf-8"

    invoke-interface {v8, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    invoke-interface {v1, p1, v8, v10, v11}, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;->restoreLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    :cond_5
    iget-object v10, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v10, v10, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    iget-object v10, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v11, 0x3

    iput v11, v10, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    :cond_6
    if-eqz v7, :cond_7

    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_7
    if-eqz v4, :cond_8

    invoke-static {v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    move-object v5, v4

    goto :goto_1

    :cond_9
    move-object v4, v5

    if-eqz v7, :cond_a

    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_a
    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    goto :goto_0

    :catch_0
    move-exception v9

    :goto_2
    move-object v2, v9

    :goto_3
    :try_start_5
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bnr fail, occur exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_b

    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_b
    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :goto_4
    :try_start_6
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x2

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bnr fail, occur exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_c

    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_c
    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v7, :cond_d

    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_d
    if-eqz v4, :cond_e

    invoke-static {v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_e
    throw v9

    :catch_2
    move-exception v9

    :goto_6
    move-object v2, v9

    goto :goto_3

    :catchall_1
    move-exception v9

    move-object v4, v5

    goto :goto_5

    :catch_3
    move-exception v2

    move-object v4, v5

    goto :goto_4

    :catch_4
    move-exception v9

    move-object v4, v5

    goto :goto_6

    :catch_5
    move-exception v9

    move-object v4, v5

    goto :goto_2
.end method

.method private startLCExtractorTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "\n\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "LCExtractorHome"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "favorites"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "xmlns:launcher"

    const-string v1, "http://schemas.android.com/apk/res/com.sec.android.app.launcher"

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    return-void

    :cond_0
    const-string v0, "appOrder"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "xmlns:launcher"

    const-string v1, "http://schemas.android.com/apk/res/com.sec.android.app.launcher"

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener;)V
    .locals 14

    monitor-enter p0

    :try_start_0
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backup source : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backup path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "EMPTY_DATABASE_CREATED"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "home_only_mode"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    :cond_0
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backup sIsHomeOnly = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v9

    sput-boolean v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    :cond_2
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dir fileList.length : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v10, v5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_5

    aget-object v6, v5, v9

    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "LauncherBnrHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", delete failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_5
    sget-object v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    const-string v9, "LauncherBnrHelper"

    const-string v10, "sBackupCallBack is null or empty"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v10}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->backupComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_7
    :try_start_1
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/homescreen.exml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_8

    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :try_start_3
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, p1, v8, v0, v1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->backupLayout(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener;)V

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v8}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->backupComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :catch_0
    move-exception v3

    :try_start_4
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backup IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v10}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->backupComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public extractXML(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    sput-boolean v14, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/LCExtractor"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_1
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v7

    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v12

    :try_start_3
    invoke-interface {v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v14, "UTF-8"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addApacheLicense(Lorg/xmlpull/v1/XmlSerializer;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->startLCExtractorTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    sget-object v14, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v12, v1, v15}, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;->backupLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_4
    const-string v14, "LauncherBnrHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RuntimeException while generate XML : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v14, 0x0

    if-eqz v9, :cond_1

    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_1
    if-eqz v7, :cond_2

    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_2
    :goto_1
    return v14

    :catch_1
    move-exception v5

    const-string v14, "LauncherBnrHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "extractXML createNewFile IOException : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->endLCExtractorTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v13}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v14, 0x400

    new-array v4, v14, [B

    :goto_2
    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v2, v4, v14, v15}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v10

    const/4 v14, -0x1

    if-eq v10, v14, :cond_5

    const/4 v14, 0x0

    invoke-virtual {v9, v4, v14, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v5

    move-object v6, v7

    :goto_3
    :try_start_7
    const-string v14, "LauncherBnrHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RuntimeException : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v14, 0x0

    if-eqz v9, :cond_4

    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_4
    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_5
    if-eqz v9, :cond_6

    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_6
    if-eqz v7, :cond_7

    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_1

    :catch_3
    move-exception v5

    :goto_4
    :try_start_8
    const-string v14, "LauncherBnrHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v14, 0x0

    if-eqz v9, :cond_8

    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_8
    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v14

    :goto_5
    if-eqz v9, :cond_9

    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_9
    if-eqz v6, :cond_a

    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_a
    throw v14

    :catchall_1
    move-exception v14

    move-object v6, v7

    goto :goto_5

    :catch_4
    move-exception v5

    move-object v6, v7

    goto :goto_4

    :catch_5
    move-exception v5

    goto :goto_3
.end method

.method public recreateLauncher(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper$1;-><init>(Lcom/android/launcher3/common/bnr/LauncherBnrHelper;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public declared-synchronized restore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/launcher3/common/bnr/LauncherBnrListener;)V
    .locals 14

    monitor-enter p0

    :try_start_0
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore source : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "EMPTY_DATABASE_CREATED"

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "home_only_mode"

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    :cond_0
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore sIsHomeOnly = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/homescreen.exml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    const-string v1, "LauncherBnrHelper"

    const-string v2, "restore file not exist or sRestoreCallBack is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->restoreComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->restoreLayout(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILcom/android/launcher3/common/bnr/LauncherBnrListener;)V

    const/4 v7, 0x0

    const/4 v13, 0x0

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "LauncherBnrHelper"

    const-string v2, "mRestoredTable size is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    :cond_5
    :goto_1
    const-string v1, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "LauncherBnrHelper"

    const-string v2, "postposition sharedpf deleted successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    move-object/from16 v0, p5

    invoke-interface {v0, v1, v4}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->restoreComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v1, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "EMPTY_DATABASE_CREATED"

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    :cond_7
    const/4 v1, 0x1

    if-ne v7, v1, :cond_c

    invoke-direct {p0, p1, v13}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->changeMode(Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_8
    :try_start_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const-string v2, "favorites"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_2
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v1, "favorites"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "LauncherBnrHelper"

    const-string v2, "change mode (restored table count is 1)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const-string v1, "favorites_homeOnly"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const-string v2, "favorites_easy"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v1, "favorites_homeApps"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "LauncherBnrHelper"

    const-string v2, "change mode (restored table count is 2)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_b
    const-string v1, "favorites_homeOnly"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "LauncherBnrHelper"

    const-string v2, "change mode (restored table count is 2)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    move v7, v13

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->recreateLauncher(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
