.class public abstract Lcom/samsung/android/edge/EdgeManagerInternal;
.super Ljava/lang/Object;
.source "EdgeManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract hideForNotification(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public abstract hideForWakeLock(Ljava/lang/String;I)V
.end method

.method public abstract hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showForNotification(Landroid/service/notification/StatusBarNotification;ZZ)Z
.end method

.method public abstract showForResumedActivity(Landroid/content/ComponentName;)V
.end method

.method public abstract showForToast(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract showForWakeLock(Ljava/lang/String;I)Z
.end method

.method public abstract showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract showForWakeUp(Ljava/lang/String;I)Z
.end method

.method public abstract showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
.end method
