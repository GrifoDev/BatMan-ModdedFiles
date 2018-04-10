.class public Lcom/sec/ims/ss/data/SSConfigEvent;
.super Ljava/lang/Object;
.source "SSConfigEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;
    }
.end annotation


# instance fields
.field private mCBType:[I

.field private mCFType:[I

.field private mCFURI:[Ljava/lang/String;

.field private mCFURILength:[I

.field private mCFURIType:[I

.field private mData:[B

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorMessages:[Ljava/lang/String;

.field private mErrorType:I

.field private mEventType:I

.field private mNoReplyTime:[I

.field private mNumberNDate:[Ljava/lang/String;

.field private mNumberOfClasses:I

.field private mResult:Z

.field private mSSClass:[I

.field private mSSStatus:[I

.field private mSessionID:I

.field private mState:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

.field private mSubEventType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->NOT_INITIALIZED:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    iput-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mState:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/sec/ims/ss/data/SSConfigEvent;-><init>(III[B)V

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->NOT_INITIALIZED:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    iput-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mState:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    iput p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mEventType:I

    iput p2, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSessionID:I

    iput p3, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSubEventType:I

    iput-object p4, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mData:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->NOT_INITIALIZED:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    iput-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mState:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mEventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSessionID:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSubEventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mData:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCBType()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mCBType:[I

    return-object v0
.end method

.method public getCFType()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mCFType:[I

    return-object v0
.end method

.method public getCFURI()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mCFURI:[Ljava/lang/String;

    return-object v0
.end method

.method public getCFURILength()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mCFURILength:[I

    return-object v0
.end method

.method public getCFURIType()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mCFURIType:[I

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mData:[B

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessages()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mErrorMessages:[Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mErrorType:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mEventType:I

    return v0
.end method

.method public getNoReplyTime()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mNoReplyTime:[I

    return-object v0
.end method

.method public getNumberNDate()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mNumberNDate:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfClasses()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mNumberOfClasses:I

    return v0
.end method

.method public getResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mResult:Z

    return v0
.end method

.method public getSSClass()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSSClass:[I

    return-object v0
.end method

.method public getSSStatus()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSSStatus:[I

    return-object v0
.end method

.method public getSessionID()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSessionID:I

    return v0
.end method

.method public getState()Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mState:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    return-object v0
.end method

.method public getSubEventType()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSubEventType:I

    return v0
.end method

.method public setCBType([I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mCBType:[I

    return-void
.end method

.method public setCFType([I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mCFType:[I

    return-void
.end method

.method public setCFURI([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mCFURI:[Ljava/lang/String;

    return-void
.end method

.method public setCFURILength([I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mCFURILength:[I

    return-void
.end method

.method public setCFURIType([I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mCFURIType:[I

    return-void
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mData:[B

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessages([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mErrorMessages:[Ljava/lang/String;

    return-void
.end method

.method public setErrorType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mErrorType:I

    return-void
.end method

.method public setEventType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mEventType:I

    return-void
.end method

.method public setNoReplyTime([I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mNoReplyTime:[I

    return-void
.end method

.method public setNumberNDate([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mNumberNDate:[Ljava/lang/String;

    return-void
.end method

.method public setNumberOfClasses(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mNumberOfClasses:I

    return-void
.end method

.method public setResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mResult:Z

    return-void
.end method

.method public setSSClass([I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSSClass:[I

    return-void
.end method

.method public setSSStatus([I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSSStatus:[I

    return-void
.end method

.method public setSessionID(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSessionID:I

    return-void
.end method

.method public setState(Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mState:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    return-void
.end method

.method public setSubEventType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSubEventType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSessionID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSubEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
