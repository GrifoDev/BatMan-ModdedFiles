.class public interface abstract Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;
.super Ljava/lang/Object;
.source "AppsPagedView.java"

# interfaces
.implements Lcom/android/launcher3/allapps/AppsBaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/view/AppsPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract approachBorderOnDrag(F)V
.end method

.method public abstract deferToBind()Z
.end method

.method public abstract exitDragStateDelayed()V
.end method

.method public abstract getState()I
.end method

.method public abstract initBounceAnimation()V
.end method

.method public abstract isAlphabeticalMode()Z
.end method

.method public abstract isSelectState()Z
.end method

.method public abstract isSwitchingState()Z
.end method

.method public abstract isSwithchingInternalState()Z
.end method

.method public abstract isVisibleGridPanel()Z
.end method

.method public abstract requestDeferredRunnables()Z
.end method
