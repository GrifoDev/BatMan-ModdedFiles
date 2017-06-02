.class public interface abstract Lcom/android/server/policy/TspStateManagerPolicy;
.super Ljava/lang/Object;
.source "TspStateManagerPolicy.java"


# static fields
.field public static final FEATURE_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract screenTurnedOn()V
.end method

.method public abstract setDeadzoneHole(Landroid/os/Bundle;)V
.end method

.method public abstract setInitialDisplaySize(IIII)V
.end method

.method public abstract setPortrait(Z)V
.end method

.method public abstract updateInputMethodPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V
.end method
