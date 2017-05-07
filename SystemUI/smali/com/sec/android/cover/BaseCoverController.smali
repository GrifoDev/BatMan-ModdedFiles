.class public Lcom/sec/android/cover/BaseCoverController;
.super Ljava/lang/Object;
.source "BaseCoverController.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/cover/BaseCoverController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method public onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 0

    return-void
.end method

.method public setCoverUiAlpha(F)V
    .locals 0

    return-void
.end method

.method public showCoverOpenPopup()V
    .locals 0

    return-void
.end method

.method public showCoverOpenPopup(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
