.class public Lcom/android/launcher3/common/deviceprofile/GridInfo;
.super Ljava/lang/Object;
.source "GridInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.GridInfo"


# instance fields
.field private final mCellGap:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mCountX:I

.field private final mCountY:I

.field private mHotseatBarSize:I

.field private mHotseatBottom:I

.field private mHotseatContentTop:I

.field private final mIconInfo:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

.field private mIndicatorBottom:I

.field private final mPageBottom:I

.field private final mPagePadding:I

.field private final mPageTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 12

    const/16 v11, 0xd

    const/16 v10, 0xc

    const/16 v9, 0xb

    const/16 v1, 0xa

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mHotseatBottom:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    array-length v6, p2

    aget-object v0, p2, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCountX:I

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCountY:I

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v7}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCellGap:I

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v7}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v7}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v7}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v4

    const/4 v0, 0x6

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x7

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v7}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mPagePadding:I

    const/16 v0, 0x8

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v7}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mPageTop:I

    const/16 v0, 0x9

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v7}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mPageBottom:I

    if-le v6, v1, :cond_0

    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v7}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mIndicatorBottom:I

    :cond_0
    if-le v6, v9, :cond_1

    aget-object v0, p2, v9

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v7}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mHotseatBarSize:I

    :cond_1
    if-le v6, v10, :cond_3

    aget-object v0, p2, v10

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v7}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mHotseatContentTop:I

    :goto_0
    if-le v6, v11, :cond_2

    aget-object v0, p2, v11

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v7}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mHotseatBottom:I

    :cond_2
    new-instance v0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iget v1, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCountX:I

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mIconInfo:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCellHeight:I

    iput v8, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCellWidth:I

    const-string v0, "Launcher.GridInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "countX : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCountX:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", countY : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCountY:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mHotseatContentTop:I

    goto :goto_0
.end method


# virtual methods
.method public getCellCountX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCountX:I

    return v0
.end method

.method public getCellCountY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCountY:I

    return v0
.end method

.method public getCellGap()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCellGap:I

    return v0
.end method

.method public getCellHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCellWidth:I

    return v0
.end method

.method public getContentTop()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mIconInfo:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v0

    return v0
.end method

.method public getDrawablePadding()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mIconInfo:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getDrawablePadding()I

    move-result v0

    return v0
.end method

.method public getHotseatBarSize()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mHotseatBarSize:I

    return v0
.end method

.method public getHotseatBottom()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mHotseatBottom:I

    return v0
.end method

.method public getHotseatContentTop()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mHotseatContentTop:I

    return v0
.end method

.method public getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mIconInfo:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    return-object v0
.end method

.method public getIconSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mIconInfo:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getIndicatorBottom()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mIndicatorBottom:I

    return v0
.end method

.method public getPageBottom()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mPageBottom:I

    return v0
.end method

.method public getPagePadding()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mPagePadding:I

    return v0
.end method

.method public getPageTop()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mPageTop:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mIconInfo:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getTextSize()I

    move-result v0

    return v0
.end method

.method public setCellHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCellHeight:I

    return-void
.end method

.method public setCellWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/deviceprofile/GridInfo;->mCellWidth:I

    return-void
.end method
