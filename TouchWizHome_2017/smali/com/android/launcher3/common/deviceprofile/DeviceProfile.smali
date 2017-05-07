.class public Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
.super Ljava/lang/Object;
.source "DeviceProfile.java"


# static fields
.field private static final GRID_INFO_SPLIT:Ljava/lang/String; = "\\|"

.field private static final TAG:Ljava/lang/String; = "Launcher.DeviceProfile"


# instance fields
.field public appsExtraPaddingTop:I

.field public appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

.field private appsGridInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/deviceprofile/GridInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final availableHeightPx:I

.field public final availableWidthPx:I

.field public final defaultCellHeight:I

.field public final defaultCellWidth:I

.field private defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

.field public final defaultIconSize:I

.field public folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

.field private folderGridInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/deviceprofile/GridInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final gedHomeCellCountX:I

.field public final gedHomeCellCountY:I

.field public final gedHomeCellHeight:I

.field public final gedHomeCellWidth:I

.field public final heightPx:I

.field public homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

.field private homeGridInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/deviceprofile/GridInfo;",
            ">;"
        }
    .end annotation
.end field

.field public hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

.field private hotseatGridIconInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/deviceprofile/GridIconInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final hotseatRightLayoutWithOrientation:Z

.field public final isLandscape:Z

.field public navigationBarHeight:I

.field public final widthPx:I

.field private final workspacePagePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIZ)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGridInfo:Ljava/util/ArrayList;

    iput-boolean p6, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isLandscape:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput p4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->widthPx:I

    iput p5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->heightPx:I

    iput p2, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    if-eqz p6, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->widthPx:I

    sub-int/2addr v4, p2

    :goto_0
    iput v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    iget v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    const/16 v6, 0xfa

    if-le v4, v6, :cond_3

    move v4, v5

    :goto_1
    iput v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    iput p3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableHeightPx:I

    const v4, 0x7f08009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    const v4, 0x7f080002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->gedHomeCellWidth:I

    const v4, 0x7f080001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->gedHomeCellHeight:I

    const v4, 0x7f0a0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->gedHomeCellCountX:I

    const v4, 0x7f0a003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->gedHomeCellCountY:I

    const v4, 0x7f080023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultCellWidth:I

    const v4, 0x7f080022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultCellHeight:I

    const v4, 0x7f0800e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatRightLayoutWithOrientation:Z

    const v4, 0x7f0800a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsExtraPaddingTop:I

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    const/high16 v6, 0x7f090000

    invoke-direct {p0, p1, v4, v6}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->loadGridInfo(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGridInfo:Ljava/util/ArrayList;

    const v6, 0x7f090001

    invoke-direct {p0, p1, v4, v6}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->loadGridInfo(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    const v6, 0x7f090002

    invoke-direct {p0, p1, v4, v6}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->loadGridInfo(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    const v6, 0x7f090003

    invoke-direct {p0, p1, v4, v6}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->loadHotseatGridInfo(Landroid/content/Context;Ljava/util/ArrayList;I)V

    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v4, 0x7f0a000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    const/4 v4, 0x2

    new-array v0, v4, [I

    invoke-static {p1, v0}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    aget v4, v0, v5

    if-lez v4, :cond_0

    aget v4, v0, v7

    if-gtz v4, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a0001

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v0, v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a0002

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v0, v7

    :cond_1
    aget v4, v0, v5

    aget v5, v0, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setAppsCurrentGrid(II)V

    return-void

    :cond_2
    iget v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->heightPx:I

    sub-int/2addr v4, p3

    goto/16 :goto_0

    :cond_3
    iget v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    goto/16 :goto_1
.end method

.method private calculateCellSize(IILandroid/graphics/Rect;Lcom/android/launcher3/common/deviceprofile/GridInfo;)V
    .locals 6

    iget v4, p3, Landroid/graphics/Rect;->left:I

    sub-int v4, p1, v4

    iget v5, p3, Landroid/graphics/Rect;->right:I

    sub-int v3, v4, v5

    iget v4, p3, Landroid/graphics/Rect;->top:I

    sub-int v4, p2, v4

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v4, v5

    invoke-virtual {p4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v4

    invoke-virtual {p4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellWidthOrHeight(III)I

    move-result v1

    invoke-virtual {p4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v4

    invoke-virtual {p4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellWidthOrHeight(III)I

    move-result v0

    invoke-virtual {p4, v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->setCellWidth(I)V

    invoke-virtual {p4, v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->setCellHeight(I)V

    return-void
.end method

.method public static calculateCellWidthOrHeight(III)I
    .locals 1

    if-gtz p2, :cond_0

    :goto_0
    return p0

    :cond_0
    add-int v0, p0, p1

    div-int/2addr v0, p2

    sub-int p0, v0, p1

    goto :goto_0
.end method

.method private calculateContentTop(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateIconContentHeight(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;)I

    move-result v0

    sub-int v2, p2, v0

    div-int/lit8 v1, v2, 0x2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->setContentTop(I)V

    return-void
.end method

.method private calculateIconContentHeight(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;)I
    .locals 6

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getTextSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v5, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float v2, v4, v5

    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getDrawablePadding()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getLineCount()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v0, v4, v5

    float-to-int v4, v0

    return v4
.end method

.method private getAppsPadding()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    return-object v0
.end method

.method private getFolderPadding()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    return-object v0
.end method

.method public static getPaddingForWidget()Landroid/graphics/Rect;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getWorkspacePadding()Landroid/graphics/Rect;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageTop()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageBottom()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v0

    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private layoutAppsGrid(Lcom/android/launcher3/Launcher;)V
    .locals 8

    const v4, 0x7f0e000e

    invoke-virtual {p1, v4}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/PagedView;

    invoke-direct {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getAppsPadding()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsExtraPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/launcher3/common/base/view/PagedView;->setPadding(IIII)V

    :cond_0
    const v4, 0x7f0e000f

    invoke-virtual {p1, v4}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_1
    return-void
.end method

.method private layoutHomeGrid(Lcom/android/launcher3/Launcher;)V
    .locals 11

    const v7, 0x7f0e0004

    invoke-virtual {p1, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/view/PagedView;

    invoke-direct {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getWorkspacePadding()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/PagedView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, v1}, Lcom/android/launcher3/common/base/view/PagedView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/launcher3/common/base/view/PagedView;->setPadding(IIII)V

    :cond_0
    const v7, 0x7f0e0003

    invoke-virtual {p1, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getWorkspacePageTotalPadding()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x800005

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v7, -0x1

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const v7, 0x7f0e007a

    invoke-virtual {p1, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    const v7, 0x7f0e007d

    invoke-virtual {p1, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/16 v7, 0x50

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v7, -0x1

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    iget v9, v2, Landroid/graphics/Rect;->right:I

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v8, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    add-int/2addr v7, v8

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800e5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080028

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int v5, v7, v8

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v7

    sub-int/2addr v7, v5

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2
.end method

.method private loadGridInfo(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/deviceprofile/GridInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v1, v5

    const-string v7, "\\|"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-direct {v0, p1, v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadHotseatGridInfo(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/deviceprofile/GridIconInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v1, v5

    const-string v7, "\\|"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-direct {v0, p1, v3}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getAppsGridInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/deviceprofile/GridInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAvailableWidthPx()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    return v0
.end method

.method public getWorkspacePageTotalPadding()Landroid/graphics/Rect;
    .locals 6

    invoke-direct {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getWorkspacePadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->workspacePagePadding:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public isVerticalBarLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatRightLayoutWithOrientation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layoutGrid(Lcom/android/launcher3/Launcher;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutHomeGrid(Lcom/android/launcher3/Launcher;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutAppsGrid(Lcom/android/launcher3/Launcher;)V

    :cond_1
    return-void
.end method

.method public setAppsCurrentGrid(II)V
    .locals 7

    const/4 v6, 0x0

    const-string v3, "Launcher.DeviceProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAppsCurrentGrid cellX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cellY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    if-ne v3, p1, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    if-ne v3, p2, :cond_3

    iput-object v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    :cond_0
    if-lt v1, v2, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    iput-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    iget v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableHeightPx:I

    invoke-direct {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getAppsPadding()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellSize(IILandroid/graphics/Rect;Lcom/android/launcher3/common/deviceprofile/GridInfo;)V

    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateContentTop(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;I)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    :goto_2
    iput-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    goto :goto_2
.end method

.method public setCurrentGrid(II)V
    .locals 9

    const/4 v8, 0x0

    const-string v4, "Launcher.DeviceProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCurrentGrid cellX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cellY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-ne v4, p1, :cond_8

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-ne v4, p2, :cond_8

    iput-object v1, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    :cond_0
    if-lt v2, v3, :cond_9

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    const-string v4, "Launcher.DeviceProfile"

    const-string v5, "There is no grid info to match"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    iget v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getWorkspacePageTotalPadding()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellSize(IILandroid/graphics/Rect;Lcom/android/launcher3/common/deviceprofile/GridInfo;)V

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateContentTop(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;I)V

    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v4

    if-nez v4, :cond_6

    :cond_4
    iget v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    iget v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableHeightPx:I

    invoke-direct {p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getFolderPadding()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellSize(IILandroid/graphics/Rect;Lcom/android/launcher3/common/deviceprofile/GridInfo;)V

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateIconContentHeight(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;)I

    move-result v0

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v4

    if-le v0, v4, :cond_5

    const-string v4, "Launcher.DeviceProfile"

    const-string v5, "folderCellHeight(%d) is less than contentHeight(%d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->setCellHeight(I)V

    :cond_5
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateContentTop(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;I)V

    :cond_6
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatContentTop()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->setContentTop(I)V

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v4

    if-gez v4, :cond_7

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateContentTop(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;I)V

    :cond_7
    return-void

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    :goto_2
    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    :goto_3
    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    goto/16 :goto_1

    :cond_a
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGridInfo:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGridInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    goto :goto_2

    :cond_b
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    goto :goto_3
.end method

.method public setCurrentHotseatGridIcon(I)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getMaxCount()I

    move-result v4

    if-lt v4, p1, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v5

    if-eq v4, v5, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultHotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iput-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_6

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getMaxCount()I

    move-result v4

    if-lt v4, p1, :cond_7

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v5

    if-eq v4, v5, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    iput-object v0, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    :cond_6
    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatContentTop()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->setContentTop(I)V

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iget-object v5, p0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateContentTop(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;I)V

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
