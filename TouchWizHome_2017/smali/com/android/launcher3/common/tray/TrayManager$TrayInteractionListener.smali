.class public interface abstract Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
.super Ljava/lang/Object;
.source "TrayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/tray/TrayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TrayInteractionListener"
.end annotation


# virtual methods
.method public abstract determineStageChange(IFFFI)Z
.end method

.method public abstract getApproachingEndPoint()I
.end method

.method public abstract getApproachingStartPoint()I
.end method

.method public abstract getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;
.end method

.method public abstract getScreenDivision()Lcom/android/launcher3/util/event/ScreenDivision;
.end method

.method public abstract getTrayBgBlurAmount()F
.end method

.method public abstract getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
.end method

.method public abstract getTrayScale()F
.end method

.method public abstract isMovingOnBlock()Z
.end method

.method public abstract isOverBlurSlop(I)Z
.end method

.method public abstract isScrollLocked()Z
.end method

.method public abstract isVerticalScroll()Z
.end method

.method public abstract onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V
.end method

.method public abstract onSwipeBlockListener(FF)V
.end method

.method public abstract requestBlurChange(ZLandroid/view/Window;FJ)V
.end method

.method public abstract startTrayMove()V
.end method
