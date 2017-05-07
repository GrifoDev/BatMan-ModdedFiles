.class public final Lcom/android/incallui/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallDetails$AspectRatio;
    }
.end annotation


# static fields
.field public static final EXTRA_AUDIO_CODEC:Ljava/lang/String; = "audio_codec"

.field public static final EXTRA_CALL_TYPE:Ljava/lang/String; = "call_type"

.field public static final EXTRA_CONFERENCE_PARTICIPANT:Ljava/lang/String; = "mtconference"

.field public static final EXTRA_CVO_ENABLE:Ljava/lang/String; = "cvoenable"

.field public static final EXTRA_EARLY_MEDIA:Ljava/lang/String; = "videoCRBT"

.field public static final EXTRA_HD_ICON:Ljava/lang/String; = "hdicon"

.field public static final EXTRA_RADIO_TECH:Ljava/lang/String; = "radiotech"

.field public static final EXTRA_RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final SEC_EXTRA_HOLD_ON_BY_OTHER_PARTY:Ljava/lang/String; = "IsHoldedByTheOtherParty"

.field public static final TAG:Ljava/lang/String; = "CallDetails"


# instance fields
.field private mAspectRatio:I

.field private mAudioCodec:Ljava/lang/String;

.field private mCVOEnabled:Z

.field private mCall:Lcom/android/incallui/Call;

.field private mCallType:I

.field private mHDcon:Z

.field private mIsEarlyMedia:Z

.field private mIsTheOtherPartyOnHold:Z

.field private mParticipated:Z

.field private mRadioTech:Ljava/lang/String;

.field private mSessionId:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/CallDetails;->mAspectRatio:I

    iput v1, p0, Lcom/android/incallui/CallDetails;->mCallType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/CallDetails;->mAudioCodec:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mHDcon:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mParticipated:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mCVOEnabled:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsEarlyMedia:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/CallDetails;->mSessionId:I

    iput-object p1, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    return-void
.end method

.method private mapToAspectRatio(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const-string v1, "cif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "hd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vga"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x2

    const-string v1, "land"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v1, "720"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    const-string v1, "land"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0
.end method

.method private setCallType(I)V
    .locals 2

    iget v0, p0, Lcom/android/incallui/CallDetails;->mCallType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/incallui/CallDetails;->mCallType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->details(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setEarlyMediaState(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/CallDetails;->mIsEarlyMedia:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/CallDetails;->mIsEarlyMedia:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEarlyMediaState - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->details(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setSessionId(I)V
    .locals 2

    iget v0, p0, Lcom/android/incallui/CallDetails;->mSessionId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/incallui/CallDetails;->mSessionId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSessionId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->details(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setTheOtherPartyOnHold(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTheOtherPartyOnHold - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->details(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setVideoAspectRatio(I)V
    .locals 2

    iget v0, p0, Lcom/android/incallui/CallDetails;->mAspectRatio:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoAspectRatio - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->details(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/incallui/CallDetails;->mAspectRatio:I

    :cond_0
    return-void
.end method


# virtual methods
.method public isEarlyMedia()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallDetails;->mIsEarlyMedia:Z

    return v0
.end method

.method public isTheOtherPartyOnHold()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, " CallDetails{SessionId=%d, CallType=%d, AspectRatio=%s, IsTheOtherPartyOnHold=%s, EarlyMedia=%s} "

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/incallui/CallDetails;->mSessionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/CallDetails;->mCallType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/incallui/CallDetails;->mAspectRatio:I

    invoke-static {v3}, Lcom/android/incallui/CallDetails$AspectRatio;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/android/incallui/CallDetails;->mIsEarlyMedia:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromCallExtras(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const-string v5, "resolution"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "resolution"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/incallui/CallDetails;->mapToAspectRatio(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/incallui/CallDetails;->setVideoAspectRatio(I)V

    :cond_0
    const-string v5, "call_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "call_type"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/incallui/CallDetails;->setCallType(I)V

    :cond_1
    const-string v5, "hdicon"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "true"

    const-string v6, "hdicon"

    const-string v7, "false"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/incallui/CallDetails;->mHDcon:Z

    :cond_2
    const-string v5, "audio_codec"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "audio_codec"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/CallDetails;->mAudioCodec:Ljava/lang/String;

    :cond_3
    const-string v5, "radiotech"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "radiotech"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iput-object v1, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    :cond_4
    const-string v5, "mtconference"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/incallui/CallDetails;->mParticipated:Z

    if-nez v5, :cond_5

    const-string v5, "true"

    const-string v6, "mtconference"

    const-string v7, "false"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/incallui/CallDetails;->mParticipated:Z

    :cond_5
    const-string v5, "cvoenable"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "true"

    const-string v6, "cvoenable"

    const-string v7, "false"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v5, p0, Lcom/android/incallui/CallDetails;->mCVOEnabled:Z

    if-eq v5, v0, :cond_6

    iput-boolean v0, p0, Lcom/android/incallui/CallDetails;->mCVOEnabled:Z

    :cond_6
    const-string v5, "videoCRBT"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "videoCRBT"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_9

    const-string v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/incallui/CallDetails;->setEarlyMediaState(Z)V

    :goto_0
    const-string v5, "sessionId"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "sessionId"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/incallui/CallDetails;->setSessionId(I)V

    :cond_7
    invoke-static {p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getSecCallExtra(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallDetails;->updateFromSecCallExtras(Ljava/util/HashMap;)V

    :cond_8
    return-void

    :cond_9
    invoke-direct {p0, v8}, Lcom/android/incallui/CallDetails;->setEarlyMediaState(Z)V

    goto :goto_0

    :cond_a
    invoke-direct {p0, v8}, Lcom/android/incallui/CallDetails;->setEarlyMediaState(Z)V

    goto :goto_0
.end method

.method public updateFromSecCallExtras(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "IsHoldedByTheOtherParty"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    const-string v1, "IsHoldedByTheOtherParty"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallDetails;->setTheOtherPartyOnHold(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallDetails;->setTheOtherPartyOnHold(Z)V

    goto :goto_0
.end method
