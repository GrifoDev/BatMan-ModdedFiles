.class public final Lcom/samsung/android/media/SemMediaResourceHelper;
.super Ljava/lang/Object;
.source "SemMediaResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;,
        Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;,
        Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final EVENT_ADD_RESOURCE:I = 0x1

.field private static final EVENT_ERROR:I = 0x64

.field private static final EVENT_REMOVE_RESOURCE:I = 0x2

.field public static final RESOURCE_TYPE_ALL:I = 0x0

.field public static final RESOURCE_TYPE_AUDIO:I = 0x1

.field public static final RESOURCE_TYPE_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemMediaResourceHelper"

.field private static mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;


# instance fields
.field private mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

.field private mNativeContext:J

.field private mOwnResourceEventExcluded:Z

.field private mPid:I

.field private mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

.field private mResourceType:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    const-string/jumbo v0, "mediaresourcehelper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    :goto_0
    iput p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    iput-boolean p2, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_setup(Ljava/lang/Object;)V

    const-string/jumbo v1, "SemMediaResourceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemMediaResourceHelper() resourceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ownResourceEventExcluded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", myPid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    goto :goto_0
.end method

.method public static declared-synchronized createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;
    .locals 3

    const-class v1, Lcom/samsung/android/media/SemMediaResourceHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper;-><init>(IZ)V

    sput-object v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    :goto_0
    sget-object v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "SemMediaResourceHelper"

    const-string/jumbo v2, "SemMediaResourceHelper is already created"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_4

    const-string/jumbo v7, "SemMediaResourceHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "makeMediaResourceInfo mOwnResourceEventExcluded : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mPid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const-string/jumbo v7, "SemMediaResourceHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] makeMediaResourceInfo resourceType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isSecured : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", pid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    if-ne v7, v5, :cond_2

    :cond_0
    iget-boolean v7, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-lez v7, :cond_2

    iget v7, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-eq v7, v3, :cond_2

    :cond_1
    new-instance v4, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-direct {v4, p0, v5, v1, v3}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;IZI)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method private native native_enableObserver(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private native native_getMediaResourceInfo(ILandroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_release()V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 6

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaResourceHelper;

    if-nez v3, :cond_0

    const-string/jumbo v4, "SemMediaResourceHelper"

    const-string/jumbo v5, "semMediaResourceHelper ref is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, v3, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    if-eqz v4, :cond_2

    if-eqz p4, :cond_1

    move-object v2, p4

    check-cast v2, Landroid/os/Parcel;

    invoke-direct {v3, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    move-object p4, v0

    :cond_1
    iget-object v4, v3, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v4, v3, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_finalize()V

    return-void
.end method

.method public final getMediaResourceInfo(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getMediaResourceInfo(ILandroid/os/Parcel;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_release()V

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    sput-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    return-void
.end method

.method public declared-synchronized setOwnResourceEventExcluded(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOwnResourceEventExcluded() ownResourceEventExcluded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(Z)V

    goto :goto_0
.end method

.method public declared-synchronized setResourceTypeForEvent(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setResourceTypeForEvent() resourceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
