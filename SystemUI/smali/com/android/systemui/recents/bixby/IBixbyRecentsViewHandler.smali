.class public interface abstract Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;
.super Ljava/lang/Object;
.source "IBixbyRecentsViewHandler.java"


# virtual methods
.method public abstract closeAll()Z
.end method

.method public abstract closeFocusedTask()Z
.end method

.method public abstract exitLockTaskEditMode(Z)Z
.end method

.method public abstract focusByAppName(Ljava/lang/String;)Z
.end method

.method public abstract focusByComponentName(Landroid/content/ComponentName;)Z
.end method

.method public abstract focusByIndex(I)Z
.end method

.method public abstract getLastErrorNo()I
.end method

.method public abstract getTaskCount()I
.end method

.method public abstract getTitleOfFocusedTask()Ljava/lang/String;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract launchFocusedTask(Ljava/lang/String;)Z
.end method

.method public abstract moveToNextTask()Z
.end method

.method public abstract moveToPrevTask()Z
.end method

.method public abstract setLockFocusedTask(Z)Z
.end method

.method public abstract showRecentsView()Z
.end method
