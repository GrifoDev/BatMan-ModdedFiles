.class Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;
.super Landroid/os/AsyncTask;
.source "ZeroPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/ZeroPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZeroPagePreviewTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ZeroPageController;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/home/ZeroPageController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/home/ZeroPageController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;-><init>(Lcom/android/launcher3/home/ZeroPageController;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # invokes: Lcom/android/launcher3/home/ZeroPageController;->getPreviewFromPackageManager(Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;
    invoke-static {v3, v1}, Lcom/android/launcher3/home/ZeroPageController;->access$200(Lcom/android/launcher3/home/ZeroPageController;Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # invokes: Lcom/android/launcher3/home/ZeroPageController;->scaleBitmapIfNecessary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v3, v0}, Lcom/android/launcher3/home/ZeroPageController;->access$300(Lcom/android/launcher3/home/ZeroPageController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    new-instance v4, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-direct {v4, v0}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    # setter for: Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    invoke-static {v3, v4}, Lcom/android/launcher3/home/ZeroPageController;->access$402(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/common/drawable/FastBitmapDrawable;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    :cond_0
    :goto_0
    const/4 v3, 0x0

    return-object v3

    :cond_1
    # getter for: Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZeroPreviewTask: doInBackground() : bitmap not found for app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z
    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$500(Lcom/android/launcher3/home/ZeroPageController;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020027

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # invokes: Lcom/android/launcher3/home/ZeroPageController;->scaleBitmapIfNecessary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v3, v2}, Lcom/android/launcher3/home/ZeroPageController;->access$300(Lcom/android/launcher3/home/ZeroPageController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    new-instance v4, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-direct {v4, v2}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    # setter for: Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    invoke-static {v3, v4}, Lcom/android/launcher3/home/ZeroPageController;->access$402(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/common/drawable/FastBitmapDrawable;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    goto :goto_0
.end method

.method public onCancelled()V
    .locals 2

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelled ZeroPreviewTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZeroPreviewTask onPostExecute()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageController;->access$600(Lcom/android/launcher3/home/ZeroPageController;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageController;->access$600(Lcom/android/launcher3/home/ZeroPageController;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    invoke-static {v1}, Lcom/android/launcher3/home/ZeroPageController;->access$400(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
