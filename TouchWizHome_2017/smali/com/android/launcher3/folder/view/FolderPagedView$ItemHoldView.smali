.class Lcom/android/launcher3/folder/view/FolderPagedView$ItemHoldView;
.super Landroid/view/View;
.source "FolderPagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/view/FolderPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemHoldView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x44444444

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView$ItemHoldView;->setBackgroundColor(I)V

    return-void
.end method
