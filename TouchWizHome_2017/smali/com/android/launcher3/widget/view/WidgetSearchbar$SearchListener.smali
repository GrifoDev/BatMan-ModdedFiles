.class public interface abstract Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;
.super Ljava/lang/Object;
.source "WidgetSearchbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/view/WidgetSearchbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchListener"
.end annotation


# virtual methods
.method public abstract applySearchResult(Ljava/lang/String;)V
.end method

.method public abstract onUpkeyPressed(Landroid/view/View;)V
.end method

.method public abstract setSearchFilter(Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;)V
.end method

.method public abstract setSearchString(Ljava/lang/String;)V
.end method
