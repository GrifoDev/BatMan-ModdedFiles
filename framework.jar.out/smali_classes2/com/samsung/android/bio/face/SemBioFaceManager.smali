.class public Lcom/samsung/android/bio/face/SemBioFaceManager;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/SemBioFaceManager$1;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$OnAuthenticationCancelListener;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final FACE_ACQUIRED_FAKE:I = 0x4

.field public static final FACE_ACQUIRED_GOOD:I = 0x0

.field public static final FACE_ACQUIRED_INVALID:I = 0x2

.field public static final FACE_ACQUIRED_LOW_QUALITY:I = 0x3

.field public static final FACE_ACQUIRED_MISALIGNED:I = 0x7

.field public static final FACE_ACQUIRED_PROCESS_FAIL:I = 0x1

.field public static final FACE_ACQUIRED_TOO_BIG:I = 0x5

.field public static final FACE_ACQUIRED_TOO_SMALL:I = 0x6

.field public static final FACE_ERROR_CAMERA_FAILURE:I = 0x2713

.field public static final FACE_ERROR_CAMERA_UNAVAILABLE:I = 0x2715

.field public static final FACE_ERROR_CANCELED:I = 0x5

.field public static final FACE_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FACE_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final FACE_ERROR_LOCKOUT:I = 0x2711

.field public static final FACE_ERROR_NO_SPACE:I = 0x4

.field public static final FACE_ERROR_TEMPLATE_CORRUPTED:I = 0x3ec

.field public static final FACE_ERROR_TIMEOUT:I = 0x3

.field public static final FACE_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FACE_OK:I = 0x0

.field private static final MANAGE_FACE:Ljava/lang/String; = "com.samsung.android.bio.face.permission.MANAGE_FACE"

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_AUTHENTICATION_SUCCEEDED_FIDO_RESULT_DATA:I = 0x6b

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_REMOVED:I = 0x69

.field private static final TAG:Ljava/lang/String; = "SemBioFaceManager"

.field private static final USE_FACE:Ljava/lang/String; = "com.samsung.android.bio.face.permission.USE_FACE"

.field private static mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;


# instance fields
.field private mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

.field private mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

.field private mRemovalFace:Lcom/samsung/android/bio/face/Face;

.field private mService:Lcom/samsung/android/bio/face/IFaceService;

.field private mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/Face;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/Face;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->cancelAuthentication(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->cancelEnrollment()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    return-void
.end method

.method private cancelAuthentication(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception while canceling authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelEnrollment()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/bio/face/IFaceService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception while canceling enrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized ensureServiceConnected()Z
    .locals 6

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-wide/16 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v5, v3}, Lcom/samsung/android/bio/face/IFaceService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "SemBioFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ensureServiceConnected : failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, v0, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    :cond_0
    const-string/jumbo v2, "samsung.face"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/bio/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->startFaceService()V

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->waitForService()V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    :goto_0
    monitor-exit p0

    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCurrentUserId()I
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Failed to get current user id\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x2710

    return v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 2

    const-class v1, Lcom/samsung/android/bio/face/SemBioFaceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startFaceService()V
    .locals 6

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.android.bio.face.service"

    const-string/jumbo v5, "com.samsung.android.bio.face.service.FaceService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :goto_0
    sget-boolean v3, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SemBioFaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startFaceService : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SemBioFaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting startFaceService failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private waitForService()V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x14

    if-gt v0, v2, :cond_1

    const-string/jumbo v2, "samsung.face"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/bio/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "Service connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .locals 18

    if-nez p4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Must supply an authentication callback"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "SemBioFaceManager"

    const-string/jumbo v5, "authentication already canceled"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v3, Lcom/samsung/android/bio/face/SemBioFaceManager$OnAuthenticationCancelListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnAuthenticationCancelListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v3, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->useHandler(Landroid/os/Handler;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getOpId()J

    move-result-wide v10

    :goto_0
    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    invoke-virtual {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v17

    :goto_1
    if-nez p8, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v12, p6

    move/from16 v14, p3

    move-object/from16 v16, p7

    invoke-interface/range {v3 .. v17}, Lcom/samsung/android/bio/face/IFaceService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_6
    const/16 v17, 0x0

    goto :goto_1

    :cond_7
    new-instance v4, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;

    const/4 v6, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p8

    move/from16 v8, p3

    move/from16 v9, p6

    move-object/from16 v12, v17

    move-object/from16 v13, p7

    invoke-direct/range {v4 .. v13}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;ILandroid/view/View;IIJ[BLandroid/os/Bundle;)V

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v4}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->runCommand()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SemBioFaceManager"

    const-string/jumbo v5, "Remote exception while authenticating"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    :try_start_1
    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 16

    const/4 v3, -0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result p4

    :cond_0
    if-nez p5, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Must supply an enrollment callback"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "SemBioFaceManager"

    const-string/jumbo v4, "enrollment already canceled"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v3, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v3

    if-nez v3, :cond_4

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    if-nez p7, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p1

    move/from16 v10, p4

    move/from16 v12, p3

    move-object/from16 v14, p6

    invoke-interface/range {v2 .. v14}, Lcom/samsung/android/bio/face/IFaceService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    new-instance v2, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;

    const-wide/16 v8, 0x0

    const/4 v4, 0x2

    move-object/from16 v3, p0

    move-object/from16 v5, p7

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;ILandroid/view/View;IIJ[BLandroid/os/Bundle;)V

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->runCommand()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v15

    const-string/jumbo v3, "SemBioFaceManager"

    const-string/jumbo v4, "Remote exception in enroll"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    :try_start_1
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/view/View;)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method public getAuthenticatorId()J
    .locals 6

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-wide v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/bio/face/IFaceService;->getAuthenticatorId(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in getAuthenticatorId()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v4

    :cond_1
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "getAuthenticatorId(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEnrolledFaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/bio/face/Face;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledFaces(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/bio/face/Face;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/bio/face/IFaceService;->getEnrolledFaces(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in getEnrolledFaces"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v3
.end method

.method public hasEnrolledFaces()Z
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceService;->hasEnrolledFaces(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in getEnrolledFaces"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4
.end method

.method public hasEnrolledFaces(I)Z
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/bio/face/IFaceService;->hasEnrolledFaces(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote exception in getEnrolledFaces, userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4
.end method

.method public isEnrollSession()Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v1}, Lcom/samsung/android/bio/face/IFaceService;->isEnrollSession()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in isEnrollSession()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3
.end method

.method public isHardwareDetected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSessionClosed()Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v1}, Lcom/samsung/android/bio/face/IFaceService;->isSessionClosed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in isSessionClosed()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_1
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "isSessionClosed(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public postEnroll()I
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/bio/face/IFaceService;->postEnroll(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in post enroll"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3
.end method

.method public preEnroll()J
    .locals 6

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-wide v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/bio/face/IFaceService;->preEnroll(Landroid/os/IBinder;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in enroll"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-wide v4
.end method

.method public remove(Lcom/samsung/android/bio/face/Face;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iput-object p3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/Face;

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/Face;->getFaceId()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/Face;->getGroupId()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/bio/face/IFaceServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "Remote exception in remove"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p3, p1, v0, v7}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/bio/face/Face;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public remove(Lcom/samsung/android/bio/face/Face;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/Face;

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/Face;->getFaceId()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/Face;->getGroupId()I

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/bio/face/IFaceServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "Remote exception in remove"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0, v7}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/bio/face/Face;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public rename(IILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/bio/face/IFaceService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in rename()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "rename(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestSessionClose()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v1}, Lcom/samsung/android/bio/face/IFaceService;->requestSessionClose()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in requestSessionClose()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "resetTimeout(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestSessionOpen()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v1}, Lcom/samsung/android/bio/face/IFaceService;->requestSessionOpen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in requestSessionOpen()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "resetTimeout(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetTimeout([B)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v1, p1}, Lcom/samsung/android/bio/face/IFaceService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in resetTimeout()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "resetTimeout(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActiveUser(I)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v1, p1}, Lcom/samsung/android/bio/face/IFaceService;->setActiveUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in setActiveUser"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
