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
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget v8, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v1, p1}, Lcom/android/launcher3/folder/view/FolderView;->access$700(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/View;)Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v1, v0, v12}, Lcom/android/launcher3/folder/view/FolderView;->access$800(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->toggleColorPicker()V

    sget-object v1, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f09003e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v10, 0x7f0900be

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v7, v11, v13

    invoke-virtual {v6, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    if-eq v8, v1, :cond_1

    const-wide/16 v4, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0901a3

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    const v1, 0x7f09012f

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v6}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/folder/FolderInfo;->color:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f09003f

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView$FolderColor;->ordinal()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v1, v6, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_2
    const v1, 0x7f0901af

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
