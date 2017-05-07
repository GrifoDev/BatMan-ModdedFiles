.class Lcom/android/launcher3/folder/view/FolderView$10;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;
    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget v7, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/view/FolderView;->getFolderColorByView(Landroid/view/View;)Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/4 v6, 0x1

    # invokes: Lcom/android/launcher3/folder/view/FolderView;->setFolderColor(Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V
    invoke-static {v1, v0, v6}, Lcom/android/launcher3/folder/view/FolderView;->access$700(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->toggleColorPicker()V

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;
    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    if-eq v7, v1, :cond_0

    const-wide/16 v4, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;
    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f070179

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const v1, 0x7f070105

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;
    invoke-static {v6}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/folder/FolderInfo;->color:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x7f070185

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
