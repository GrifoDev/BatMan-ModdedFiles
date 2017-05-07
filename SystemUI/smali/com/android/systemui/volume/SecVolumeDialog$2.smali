.class Lcom/android/systemui/volume/SecVolumeDialog$2;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 15

    const v14, 0x7f0d03af

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v9, 0x0

    const v11, 0x7f0d03b3

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->-set25(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->-set23(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->-set22(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap19(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get19(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get30(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v8

    if-eq v5, v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->-set18(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap18(Lcom/android/systemui/volume/SecVolumeDialog;)V

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get39(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SpTexts;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/volume/SpTexts;->update()V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get11(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-result-object v8

    if-nez v8, :cond_1

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v10, "desktopmode"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {v9, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-set10(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get11(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v8

    sput-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mIsDexMode:Z

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get23()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get25(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v8

    if-eq v8, v1, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get12(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    invoke-static {v12}, Lcom/android/systemui/volume/SecVolumeDialog;->-set14(Z)Z

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set15(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    sget-boolean v8, Lcom/android/systemui/volume/SecVolumeDialog;->mIsDexMode:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v8

    if-ne v8, v13, :cond_6

    const/16 v8, 0x53

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    const v8, 0x7f0d03b8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const v8, 0x7f0d03b9

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v8, -0x2

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v7, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_1
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->themeChanged()V

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get10(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v8

    if-eq v0, v8, :cond_4

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DENSITY CHANGED from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialog;->-get10(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-set9(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get33(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap6(Lcom/android/systemui/volume/SecVolumeDialog;)V

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const-string/jumbo v8, "ro.build.characteristics"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tablet"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/16 v8, 0x55

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_0

    :cond_7
    const/16 v8, 0x31

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v8, 0x7f0d0339

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v7, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1

    :cond_8
    iget v8, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_9
    iget v8, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v13, :cond_5

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public onDismissRequested(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method public onPlaySound()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->playSoundH()V

    return-void
.end method

.method public onShowRequested(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap12(Lcom/android/systemui/volume/SecVolumeDialog;I)V

    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap13(Lcom/android/systemui/volume/SecVolumeDialog;I)V

    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get37(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onShowSmartViewMuteToast()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap14(Lcom/android/systemui/volume/SecVolumeDialog;)V

    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get37(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onShowVolumeLimiterToast()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap16(Lcom/android/systemui/volume/SecVolumeDialog;)V

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap8(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method

.method public onStopSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->stopSoundH()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->themeChanged()V

    return-void
.end method

.method public onZenModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->ZenModeChanged()V

    return-void
.end method
