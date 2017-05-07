.class public final Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
.super Ljava/lang/Object;
.source "SemMediaResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaResourceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaResourceInfo"
.end annotation


# instance fields
.field private final mIsSecured:Z

.field private final mPid:I

.field private final mResourceType:I

.field final synthetic this$0:Lcom/samsung/android/media/SemMediaResourceHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/SemMediaResourceHelper;IZI)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mResourceType:I

    iput-boolean p3, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mIsSecured:Z

    iput p4, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mPid:I

    return-void
.end method


# virtual methods
.method public getPid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mPid:I

    return v0
.end method

.method public getResourceType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mResourceType:I

    return v0
.end method

.method public isSecured()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mIsSecured:Z

    return v0
.end method
