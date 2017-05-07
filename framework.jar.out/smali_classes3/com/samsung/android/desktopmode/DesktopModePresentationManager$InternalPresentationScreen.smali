.class Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;
.super Landroid/app/InternalPresentation;
.source "DesktopModePresentationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/DesktopModePresentationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalPresentationScreen"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field mType:I

.field final mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->dismissByDesktopMode()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->setType(I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/InternalPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object p1, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->mWindow:Landroid/view/Window;

    iput p3, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->mType:I

    return-void
.end method

.method private dismissByDesktopMode()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "InternalPresentation dismissed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/app/InternalPresentation;->dismiss()V

    return-void
.end method

.method private setType(I)V
    .locals 4

    const v3, 0x200080

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "InternalPresentation type changed to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->mType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen_internal:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_black_screen:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/InternalPresentation;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->mWindow:Landroid/view/Window;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x975

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x82518

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget v1, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->mType:I

    invoke-direct {p0, v1}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->setType(I)V

    return-void
.end method

.method public show()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "InternalPresentation shown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/app/InternalPresentation;->show()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/InternalPresentation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$InternalPresentationScreen;->mType:I

    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
