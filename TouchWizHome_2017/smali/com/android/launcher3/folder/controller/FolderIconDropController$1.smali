.class Lcom/android/launcher3/folder/controller/FolderIconDropController$1;
.super Ljava/lang/Object;
.source "FolderIconDropController.java"

# interfaces
.implements Lcom/android/launcher3/util/alarm/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragOver([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

.field final synthetic val$targetFolder:Lcom/android/launcher3/folder/view/FolderIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/controller/FolderIconDropController;Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$1;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iput-object p2, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$1;->val$targetFolder:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$1;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$1;->val$targetFolder:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->access$000(Lcom/android/launcher3/folder/controller/FolderIconDropController;Lcom/android/launcher3/folder/view/FolderIconView;)V

    return-void
.end method
