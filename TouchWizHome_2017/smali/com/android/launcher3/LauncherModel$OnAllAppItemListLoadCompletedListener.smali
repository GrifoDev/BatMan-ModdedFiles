.class public interface abstract Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAllAppItemListLoadCompletedListener"
.end annotation


# virtual methods
.method public abstract isTopStage()Z
.end method

.method public abstract onAllAppItemListLoadCompleted(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation
.end method
