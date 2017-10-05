.class Lcom/android/launcher3/home/HomeBindController$9;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeBindController;->bindUpdateContainer(ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeBindController;

.field final synthetic val$addToFolder:Z

.field final synthetic val$folder:Lcom/android/launcher3/folder/FolderInfo;

.field final synthetic val$item:Lcom/android/launcher3/common/base/item/IconInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController;ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$9;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iput-boolean p2, p0, Lcom/android/launcher3/home/HomeBindController$9;->val$addToFolder:Z

    iput-object p3, p0, Lcom/android/launcher3/home/HomeBindController$9;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeBindController$9;->val$item:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController$9;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeBindController$9;->val$addToFolder:Z

    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController$9;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController$9;->val$item:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeBindController;->bindUpdateContainer(ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V

    return-void
.end method
