.class Lcom/android/launcher3/util/MinLimit;
.super Ljava/lang/Object;
.source "DvfsUtil.java"


# instance fields
.field private mDvfsMin:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/util/MinLimit;->mDvfsMin:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v1, p0, Lcom/android/launcher3/util/MinLimit;->mDvfsMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/MinLimit;->mDvfsMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p4, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/MinLimit;->mDvfsMin:Lcom/samsung/android/os/SemDvfsManager;

    aget v2, v0, p4

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method boostUp(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/MinLimit;->mDvfsMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/MinLimit;->mDvfsMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
