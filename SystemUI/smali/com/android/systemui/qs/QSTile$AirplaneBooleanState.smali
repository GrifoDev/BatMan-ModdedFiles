.class public Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;
.super Lcom/android/systemui/qs/QSTile$BooleanState;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirplaneBooleanState"
.end annotation


# instance fields
.field public isAirplaneMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/qs/QSTile$State;)Z
    .locals 4

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
