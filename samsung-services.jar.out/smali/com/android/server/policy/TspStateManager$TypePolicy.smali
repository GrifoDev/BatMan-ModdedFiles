.class Lcom/android/server/policy/TspStateManager$TypePolicy;
.super Ljava/lang/Object;
.source "TspStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/TspStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypePolicy"
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SETTING_GRIP_ENABLED:Ljava/lang/String; = "setting_grip_enabled"

.field private static final SETTING_GRIP_THRESHOLD:Ljava/lang/String; = "setting_grip_threshold"

.field private static final SETTING_GRIP_THRESHOLD_DEFAULT:Ljava/lang/String; = "10,35,35,7&10,60,35,7&10,70,35,7&10,15,35,7&,35,35,7"

.field private static final SET_TUNNING_DATA:Ljava/lang/String; = "set_tunning_data,"

.field private static final TAG:Ljava/lang/String; = "TspStateManagerInternal.TypePolicy"

.field private static final TSP_STATE_VIEW_POLICY_LIST:I = 0x1

.field private static final TSP_STATE_VIEW_POLICY_NORMAL:I = 0x0

.field private static final TSP_STATE_WINDOW_POLICY_CUSTOM:I = 0x4

.field private static final TSP_STATE_WINDOW_POLICY_HOME:I = 0x1

.field private static final TSP_STATE_WINDOW_POLICY_INPUT_METHOD:I = 0x3

.field private static final TSP_STATE_WINDOW_POLICY_KEYGUARD:I = 0x2

.field private static final TSP_STATE_WINDOW_POLICY_MAX:I = 0x5

.field private static final TSP_STATE_WINDOW_POLICY_NORMAL:I


# instance fields
.field private final FEATURE_GRIP_ENABLED:Z

.field private final mThresholds:[Ljava/lang/String;

.field private mViewPolicy:I

.field private mWindowPolicy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/TspStateManager$TypePolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mWindowPolicy:I

    iput v3, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mViewPolicy:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "setting_grip_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->FEATURE_GRIP_ENABLED:Z

    iget-boolean v2, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->FEATURE_GRIP_ENABLED:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "setting_grip_threshold"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040ad9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "10,35,35,7&10,60,35,7&10,70,35,7&10,15,35,7&,35,35,7"

    :cond_0
    const-string/jumbo v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    iput-object v1, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mThresholds:[Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "TspStateManagerInternal.TypePolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TspStateManager thresholds format was wrong. threshold ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "10,35,35,7&10,60,35,7&10,70,35,7&10,15,35,7&,35,35,7"

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mThresholds:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    iput-object v6, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mThresholds:[Ljava/lang/String;

    goto :goto_1
.end method

.method private updateTspState()V
    .locals 10

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set_tunning_data,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mThresholds:[Ljava/lang/String;

    iget v9, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mWindowPolicy:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/policy/TspStateManager$TypePolicy;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "TspStateManagerInternal.TypePolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateTspState mWindowPolicy="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mWindowPolicy:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",cmd="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "/sys/class/sec/tsp/cmd"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "TspStateManagerInternal.TypePolicy"

    const-string/jumbo v8, "The file is not existed."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "TspStateManagerInternal.TypePolicy"

    const-string/jumbo v8, "The file cannot write."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    move-object v4, v5

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_5
    throw v7

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v4, v5

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v4, v5

    goto :goto_2
.end method


# virtual methods
.method public updateInputMethodPolicy()V
    .locals 2

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->FEATURE_GRIP_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mThresholds:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mWindowPolicy:I

    if-eq v0, v1, :cond_2

    iput v1, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mWindowPolicy:I

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager$TypePolicy;->updateTspState()V

    :cond_2
    return-void
.end method

.method public updateViewPolicy(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->FEATURE_GRIP_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mThresholds:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "TspStateManagerInternal.TypePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateViewPolicy viewPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mWindowPolicy:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mViewPolicy:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mViewPolicy:I

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager$TypePolicy;->updateTspState()V

    :cond_2
    return-void
.end method

.method public updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->FEATURE_GRIP_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mThresholds:[Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    sget-boolean v1, Lcom/android/server/policy/TspStateManager$TypePolicy;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "TspStateManagerInternal.TypePolicy"

    const-string/jumbo v2, "updateFocusedWindow : focusedWindow is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_6

    const/4 v0, 0x2

    :cond_4
    :goto_0
    iget v1, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mWindowPolicy:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/android/server/policy/TspStateManager$TypePolicy;->mWindowPolicy:I

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager$TypePolicy;->updateTspState()V

    :cond_5
    return-void

    :cond_6
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0
.end method
