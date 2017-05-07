.class public interface abstract Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;
.super Ljava/lang/Object;
.source "WidgetPagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/view/WidgetPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract getState()Lcom/android/launcher3/widget/controller/WidgetState$State;
.end method

.method public abstract isWhiteWallpaper()Z
.end method

.method public abstract onPagedViewFocusUp()V
.end method

.method public abstract onPagedViewTouchIntercepted()V
.end method

.method public abstract onSearchResult(Z)V
.end method

.method public abstract onWidgetItemClick(Landroid/view/View;)V
.end method

.method public abstract onWidgetItemLongClick(Landroid/view/View;)Z
.end method
