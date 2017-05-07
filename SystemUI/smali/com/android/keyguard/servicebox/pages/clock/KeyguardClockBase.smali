.class public interface abstract Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;
.super Ljava/lang/Object;
.source "KeyguardClockBase.java"


# static fields
.field public static final HOUR_PATTERNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "h"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "H"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "k"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "K"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->HOUR_PATTERNS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract changeHourFormat()V
.end method

.method public abstract getClockCacheKey()Ljava/lang/String;
.end method

.method public abstract hangBackgroudImageOnTheClock()V
.end method

.method public abstract refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setClockCacheKey(Ljava/lang/String;)V
.end method

.method public abstract setClockVisibility(I)V
.end method

.method public abstract setCoverState(Z)V
.end method

.method public abstract setDateVisibility(I)V
.end method

.method public abstract updateChildViewsLook()V
.end method
