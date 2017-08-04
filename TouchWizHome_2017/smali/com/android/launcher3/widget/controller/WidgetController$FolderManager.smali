.class public Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;
.super Ljava/lang/Object;
.source "WidgetController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/controller/WidgetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderManager"
.end annotation


# instance fields
.field private mInfo:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

.field final synthetic this$0:Lcom/android/launcher3/widget/controller/WidgetController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/controller/WidgetController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;->mInfo:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    return-void
.end method


# virtual methods
.method public getAnchorView()Lcom/android/launcher3/widget/view/WidgetItemView;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;->mInfo:Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->findItemView(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Lcom/android/launcher3/widget/view/WidgetItemView;

    move-result-object v0

    return-object v0
.end method
