.class public Lcom/android/launcher3/common/compat/UserManagerCompatVN;
.super Lcom/android/launcher3/common/compat/UserManagerCompatVL;
.source "UserManagerCompatVN.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/compat/UserManagerCompatVL;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isQuietModeEnabled(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVN;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
