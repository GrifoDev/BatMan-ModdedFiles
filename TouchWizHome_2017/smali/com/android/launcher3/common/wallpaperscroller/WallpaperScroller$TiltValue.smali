.class Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;
.super Ljava/lang/Object;
.source "WallpaperScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TiltValue"
.end annotation


# instance fields
.field mTiltRangeX:F

.field mTiltRangeY:F

.field mWallpaperRangeX:F

.field mWallpaperRangeY:F

.field mX:F

.field mY:F


# direct methods
.method constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mX:F

    iput p2, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mY:F

    iput p3, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mTiltRangeX:F

    iput p4, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mTiltRangeY:F

    iput p5, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mWallpaperRangeX:F

    iput p6, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mWallpaperRangeY:F

    return-void
.end method
