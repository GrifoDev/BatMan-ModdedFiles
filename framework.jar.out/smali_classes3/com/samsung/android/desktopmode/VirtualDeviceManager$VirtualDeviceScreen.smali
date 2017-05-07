.class Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
.super Landroid/app/InternalPresentation;
.source "VirtualDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualDeviceScreen"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mLayoutId:I

.field final mScreenMode:I

.field private mTouchpadLayout:Landroid/widget/FrameLayout;

.field final mWindow:Landroid/view/Window;

.field final mWindowType:I

.field final synthetic this$0:Lcom/samsung/android/desktopmode/VirtualDeviceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/desktopmode/VirtualDeviceManager;Landroid/content/Context;III)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->this$0:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    iget-object v0, p1, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-direct {p0, p2, v0}, Landroid/app/InternalPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object p2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    iput p3, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindowType:I

    iput p4, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mLayoutId:I

    iput p5, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mScreenMode:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    iget v3, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindowType:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    const/16 v3, 0x2518

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    iget v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mLayoutId:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    iget v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mScreenMode:I

    if-nez v2, :cond_1

    sget v2, Lcom/samsung/android/framework/res/R$id;->touchpad_landscape:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mTouchpadLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mTouchpadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mScreenMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    sget v2, Lcom/samsung/android/framework/res/R$id;->touchpad_portrait:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mTouchpadLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mTouchpadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const/high16 v2, -0x80000000

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mScreenMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget v2, Lcom/samsung/android/framework/res/R$id;->touchpad_portrait:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mTouchpadLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mTouchpadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const/high16 v2, -0x40000000    # -2.0f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->this$0:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    iget-object v2, v2, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    const/16 v3, 0x35

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/InternalPresentation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mWindowType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mLayoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mLayoutId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mScreenMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mScreenMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
