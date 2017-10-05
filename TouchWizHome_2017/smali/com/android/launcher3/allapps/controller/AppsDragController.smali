.class public Lcom/android/launcher3/allapps/controller/AppsDragController;
.super Ljava/lang/Object;
.source "AppsDragController.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Lcom/android/launcher3/common/drag/DragScroller;
.implements Lcom/android/launcher3/common/drag/DragState;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;,
        Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;
    }
.end annotation


# static fields
.field public static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final DRAG_OBJECT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final REORDER_DELAY:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "AppsDragController"

.field private static final sTempPosArray:[I


# instance fields
.field private mAlphabetOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

.field private mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mCustomOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

.field private mDragComplete:Z

.field private mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMode:I

.field private mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

.field private mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

.field private mInScrollArea:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

.field private mPrevTarget:Lcom/android/launcher3/allapps/DragAppIcon;

.field private final mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

.field private mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

.field private mTargetCell:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsDragController$5;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController$5;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->DRAG_OBJECT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/view/AppsPagedView;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    new-instance v0, Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/DragAppIcon;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    new-instance v0, Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/DragAppIcon;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    new-instance v0, Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/DragAppIcon;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iput-boolean v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAlphabetOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mCustomOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsDragController$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$4;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mCustomOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/allapps/DragAppIcon;)Lcom/android/launcher3/allapps/DragAppIcon;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher3/allapps/controller/AppsDragController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->restoreOverLastItems()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher3/allapps/controller/AppsDragController;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/util/alarm/Alarm;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/DragOperator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/common/base/view/CellLayout;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/view/DragLayer;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/allapps/controller/AppsDragController;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/allapps/controller/AppsDragController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->createEmptyScreen()V

    return-void
.end method

.method private createEmptyScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    goto :goto_0
.end method

.method private getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method private getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->findNearestArea(II)I

    move-result v0

    return v0
.end method

.method private onDropCompletedWithExtraItems(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 12

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    :cond_0
    instance-of v8, p1, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v8, :cond_1

    move-object v8, p1

    check-cast v8, Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    const/4 v7, 0x1

    :goto_0
    instance-of v6, p1, Lcom/android/launcher3/allapps/view/AppsPagedView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v8, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v8, :cond_2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v8, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v9, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v9, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/allapps/controller/DragOperator;->removeEmptyCellIfNecessary(Lcom/android/launcher3/allapps/DragAppIcon;)V

    if-nez v7, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    if-eqz v6, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_8

    :cond_6
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->placeObjectsToOriginalPosition(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/util/ArrayList;)V

    :cond_7
    :goto_3
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/controller/DragOperator;->updateDirtyItemsToDb()V

    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->updateBadgeItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    return-void

    :cond_8
    if-nez v7, :cond_9

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    :cond_9
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v8

    long-to-int v4, v8

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-gez v8, :cond_a

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_4
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v8, p2, v4, v3, v0}, Lcom/android/launcher3/allapps/controller/DragOperator;->refreshObjectsToPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;)V

    goto :goto_3

    :cond_a
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v10

    mul-int/2addr v9, v10

    add-int v3, v8, v9

    goto :goto_4
.end method

.method private onDropCompletedWithOutExtraItems(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 16

    if-nez p3, :cond_1

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v2, :cond_2

    if-nez p3, :cond_0

    const-string v2, "AppsDragController"

    const-string v3, "draginfo is null and drop is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v2, v12}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropCompletedWithOutExtra(Z)V

    return-void

    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-wide v2, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    const/4 v9, 0x1

    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v2, :cond_4

    if-eqz v9, :cond_9

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v2, :cond_9

    const/4 v12, 0x1

    :goto_3
    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v4, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->restoreOverLastItems()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v3, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v3, v2, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-wide v6, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v6, v2, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-interface {v2, v3, v5}, Lcom/android/launcher3/allapps/AppsReorderListener;->realTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;Lcom/android/launcher3/allapps/DragAppIcon;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v2, v2, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iput v2, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-wide v2, v2, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iput-wide v2, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v4, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-wide v14, v2, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v14

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    long-to-int v3, v14

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v9, :cond_b

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    :goto_4
    invoke-virtual {v11, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->updateBadgeItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto/16 :goto_1

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    const/4 v3, 0x0

    invoke-interface {v2, v4, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateCountBadge(Landroid/view/View;Z)V

    goto :goto_4

    :cond_b
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsDragController$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v11, v4, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController$3;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v6, 0x2d0

    invoke-virtual {v4, v2, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-interface {v2, v3}, Lcom/android/launcher3/allapps/AppsReorderListener;->removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V

    goto/16 :goto_1
.end method

.method private onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    new-instance v6, Lcom/android/launcher3/allapps/controller/AppsDragController$2;

    invoke-direct {v6, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$2;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    iput-object v6, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const-string v0, "AppsDragController"

    const-string v1, "onDropExternal drop through fakeview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    aget v1, v1, v10

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v2, v2

    iget v3, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v4, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-interface {v0, v9, v1, v11}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    iget-wide v4, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-interface {v0, v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    move-object v4, v11

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0, v7, v10}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropCreateFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropAddToExistingFolder()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0, p1, v9, v3, v6}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, v10}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/DragOperator;->updateDirtyItemsToDb()V

    goto :goto_0
.end method

.method private onDropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    iget-wide v2, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v2, v2

    iget v3, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method private onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 12

    const/4 v3, 0x1

    new-instance v10, Lcom/android/launcher3/allapps/controller/AppsDragController$1;

    invoke-direct {v10, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v7, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget-object v11, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v4, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v1, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-wide v4, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v4, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    :cond_0
    if-eqz v11, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_1

    const-string v0, "AppsDragController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not find dropLayout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v0, :cond_2

    iput-object v10, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v8, 0x0

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0, v11, v3}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropCreateFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropAddToExistingFolder()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0, p1, v11, v7}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)V

    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    goto :goto_0
.end method

.method private onResetScrollArea()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    return-void
.end method

.method private restoreOverLastItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/AppsReorderListener;->getExistOverLastItemMoved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/AppsReorderListener;->undoOverLastItems()V

    :cond_0
    return-void
.end method

.method private setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-void
.end method

.method private setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->restoreOverLastItems()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragExit()V

    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragEnter()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/AppsReorderListener;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setDragMode(I)V

    return-void
.end method

.method private updateBadgeItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v2, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateBadgeItems(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 7

    const/4 v1, 0x0

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid item drop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/allapps/controller/DragOperator;->acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acceptDrop mRestorePositionOnDrop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/DragOperator;->getRestorePosition()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iget v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JIII)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method public canOpenFolder()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public commit(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0

    return-void
.end method

.method public createUserFolderIfNecessary(Lcom/android/launcher3/common/base/view/CellLayout;[ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)Z
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public findNearestArea(II)I
    .locals 7

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v6

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v5, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    :cond_0
    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    mul-int/2addr v1, v2

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    return v1
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    return-void
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOutlineColor()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 6

    if-eqz p1, :cond_1

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v2, v4

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v3, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-interface {v3, v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    goto :goto_0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x0

    or-int/lit8 v2, v2, 0x1

    or-int/lit8 v2, v2, 0x20

    or-int/lit16 v2, v2, 0x1000

    or-int/lit16 v2, v2, 0x2000

    or-int/lit8 v2, v2, 0x4

    if-eqz v0, :cond_3

    or-int/lit8 v2, v2, 0x8

    or-int/lit16 v2, v2, 0x800

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    or-int/lit8 v2, v2, 0x40

    or-int/lit16 v2, v2, 0x80

    or-int/lit16 v2, v2, 0x100

    or-int/lit16 v2, v2, 0x200

    or-int/lit16 v2, v2, 0x400

    or-int/lit16 v2, v2, 0x4000

    const v3, 0x8000

    or-int/lit16 v2, v3, 0x77e5

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSetToZeroPage()Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public getScrollZone()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getTop()I

    move-result v0

    return v0
.end method

.method public isDropEnabled(Z)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public needDefferToBind(Lcom/android/launcher3/common/drag/DragManager;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v3}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v3

    if-eq v3, v1, :cond_0

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v3}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    iget-boolean v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    :goto_0
    if-eqz v1, :cond_2

    const-string v3, "AppsDragController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needDeferToBind : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/controller/DragOperator;->onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V

    return-void
.end method

.method public onDragEnd()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hideHintPages()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->changeState(IZ)Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    iput-boolean v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    return v2
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 6

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    const/4 v4, -0x1

    iput v4, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragEnter()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setMaxDistance(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iput-wide v2, v1, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v4

    iput v4, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/controller/DragOperator;->setRestorePosition(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->isPageMoving()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragExit(I)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onResetScrollArea()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMoveToHomeAppsByDragging()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "AppsDragController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragExit with cancel or incompleted from external : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-interface {v1, v2}, Lcom/android/launcher3/allapps/AppsReorderListener;->removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->restoreOverLastItems()V

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/DragAppIcon;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/DragAppIcon;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppsDragController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragExit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v3, 0x1

    iget-object v7, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v7, :cond_0

    const-string v0, "AppsDragController"

    const-string v1, "DragObject has null info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ltz v0, :cond_1

    iget v0, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-gez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iget-object v6, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getTranslationX()F

    move-result v0

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getOffsetX()F

    move-result v1

    sub-float v10, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->dragPullingPages(F)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v8

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v8, v0, :cond_3

    invoke-direct {p0, v8}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-direct {p0, v8}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v9

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    int-to-long v4, v9

    iput-wide v4, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isAlphabeticalMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v0, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v1

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v1, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    rem-int/2addr v1, v2

    aput v1, v0, v12

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v1, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, v0, v3

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragOver([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/DragOperator;->dragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :cond_4
    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getTranslationY()F

    move-result v0

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getOffsetY()F

    move-result v1

    sub-float v11, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0, v11}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->approachBorderOnDrag(F)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    aget v1, v1, v12

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    goto :goto_1
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->showHintPages()V

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v2, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v2, v1, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v2, v1, Lcom/android/launcher3/allapps/DragAppIcon;->cellX:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v2, v1, Lcom/android/launcher3/allapps/DragAppIcon;->cellY:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/DragOperator;->dragStart()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_0
    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    const v2, 0x7f0900c5

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/Talk;->say(I)V

    const/4 v1, 0x1

    return v1
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/AppsReorderListener;->setExistOverLastItemMoved(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->forcelyAnimateReturnPages()V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 3

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->startBounceAnimation()V

    :cond_0
    const-string v0, "AppsDragController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDropCompleted mRestorePositionOnDrop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/DragOperator;->getRestorePosition()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropCompletedWithOutExtraItems(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropCompleted()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropCompletedWithExtraItems(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    goto :goto_0
.end method

.method public onEnterScrollArea(III)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v3

    if-nez p3, :cond_0

    const/4 v2, -0x1

    :goto_0
    add-int v0, v3, v2

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->invalidate()V

    :goto_1
    return v1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->invalidate()V

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v7, :cond_0

    move-object v1, v3

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    new-instance v4, Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-direct {v4}, Lcom/android/launcher3/allapps/DragAppIcon;-><init>()V

    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v7, v4, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v8, v4, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v7, v4, Lcom/android/launcher3/allapps/DragAppIcon;->cellX:I

    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v7, v4, Lcom/android/launcher3/allapps/DragAppIcon;->cellY:I

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v7, v7, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iput v7, v6, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-wide v8, v7, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iput-wide v8, v6, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v7, v7, Lcom/android/launcher3/allapps/DragAppIcon;->cellX:I

    iput v7, v6, Lcom/android/launcher3/allapps/DragAppIcon;->cellX:I

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v7, v7, Lcom/android/launcher3/allapps/DragAppIcon;->cellY:I

    iput v7, v6, Lcom/android/launcher3/allapps/DragAppIcon;->cellY:I

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    const/4 v8, 0x0

    invoke-interface {v6, v5, v7, v8}, Lcom/android/launcher3/allapps/AppsReorderListener;->removeEmptyCellsAndViews(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/DragAppIcon;Z)V

    :cond_2
    return-void
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public placeObjectsToOriginalPosition(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v2, :cond_3

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v5, 0x0

    invoke-interface {v2, v9, v3, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    :goto_0
    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsDragController;->DRAG_OBJECT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v4, v8

    :cond_1
    iget v11, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-wide v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v12, v2

    const-wide/16 v2, -0x66

    iput-wide v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v2, v12, v11}, Lcom/android/launcher3/allapps/controller/DragOperator;->makeEmptyCellAndReorderIfNecessary(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v4, v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v14, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    :cond_2
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v3, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v8, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    const/4 v3, 0x0

    invoke-interface {v2, v8, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateCountBadge(Landroid/view/View;Z)V

    :cond_5
    return-void
.end method

.method public scrollLeft()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->scrollLeft()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->scrollRight()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    :cond_0
    return-void
.end method

.method public setDragMode(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0, v2, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->changeState(IZ)Z

    goto :goto_0
.end method

.method public setListener(Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->updateDragMode()V

    return-void
.end method

.method public setReorderListener(Lcom/android/launcher3/allapps/AppsReorderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    return-void
.end method

.method public setup(Lcom/android/launcher3/common/view/DragLayer;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    new-instance v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    return-void
.end method

.method public startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    return-void
.end method

.method public updateDragMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isAlphabeticalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAlphabetOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mCustomOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    goto :goto_0
.end method
