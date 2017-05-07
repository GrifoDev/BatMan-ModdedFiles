.class public Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
.super Ljava/lang/Object;
.source "GridIconInfo.java"


# instance fields
.field private mContentTop:I

.field private final mDrawablePadding:I

.field private final mIconSize:I

.field private final mLineCount:I

.field private final mMaxCount:I

.field private final mTextSize:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mMaxCount:I

    iput p2, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mIconSize:I

    iput p3, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mTextSize:I

    iput p4, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mDrawablePadding:I

    iput p5, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mLineCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mContentTop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mMaxCount:I

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mIconSize:I

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mTextSize:I

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mDrawablePadding:I

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mLineCount:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mContentTop:I

    return-void
.end method


# virtual methods
.method public getContentTop()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mContentTop:I

    return v0
.end method

.method public getDrawablePadding()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mDrawablePadding:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mIconSize:I

    return v0
.end method

.method public getLineCount()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mLineCount:I

    return v0
.end method

.method public getMaxCount()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mMaxCount:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mTextSize:I

    return v0
.end method

.method public setContentTop(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mContentTop:I

    return-void
.end method
