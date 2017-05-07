.class public interface abstract Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;
.super Ljava/lang/Object;
.source "WidgetState.java"

# interfaces
.implements Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/controller/WidgetState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateActionListener"
.end annotation


# virtual methods
.method public abstract applySearchResult(Ljava/lang/String;)V
.end method

.method public abstract setSearchFilter(Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;)V
.end method

.method public abstract setSearchString(Ljava/lang/String;)V
.end method
