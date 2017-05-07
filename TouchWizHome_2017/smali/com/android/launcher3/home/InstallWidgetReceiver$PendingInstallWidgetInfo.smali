.class Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;
.super Lcom/android/launcher3/home/ExternalRequestInfo;
.source "InstallWidgetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/InstallWidgetReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingInstallWidgetInfo"
.end annotation


# instance fields
.field appWidgetId:I

.field final componentName:Landroid/content/ComponentName;

.field final data:Landroid/content/Intent;

.field final mContext:Landroid/content/Context;

.field final spanX:I

.field final spanY:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;IJ)V
    .locals 4

    const/4 v2, -0x1

    const/4 v0, 0x3

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/android/launcher3/home/ExternalRequestInfo;-><init>(ILcom/android/launcher3/common/compat/UserHandleCompat;J)V

    iput-object p1, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->data:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->mContext:Landroid/content/Context;

    const-string v0, "componentName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->componentName:Landroid/content/ComponentName;

    const-string v0, "spanX"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->spanX:I

    const-string v0, "spanY"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->spanY:I

    iput p3, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->appWidgetId:I

    return-void
.end method


# virtual methods
.method public encodeToString()Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    const-wide/16 v4, 0x3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "time"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->requestTime:J

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "componentName"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "spanX"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->spanX:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "spanY"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->spanY:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->appWidgetId:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "InstallWidgetReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when adding widget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runRequestInfo(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v4, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->appWidgetId:I

    iget-object v5, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {v2, v4, v5}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget v4, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->spanX:I

    iput v4, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget v4, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->spanY:I

    iput v4, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    iget v4, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget-object v5, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v5

    if-le v4, v5, :cond_0

    iget-object v4, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    iput v4, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    :cond_0
    iget v4, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    iget-object v5, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v5

    if-le v4, v5, :cond_1

    iget-object v4, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    iput v4, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v0, v5}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method
