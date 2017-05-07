.class Lcom/android/launcher3/folder/view/FolderView$DropItem;
.super Ljava/lang/Object;
.source "FolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/view/FolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropItem"
.end annotation


# instance fields
.field dragView:Lcom/android/launcher3/common/drag/DragView;

.field fromApps:Z

.field iconView:Landroid/view/View;

.field targetPageIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/folder/view/FolderView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderView$DropItem;-><init>()V

    return-void
.end method
