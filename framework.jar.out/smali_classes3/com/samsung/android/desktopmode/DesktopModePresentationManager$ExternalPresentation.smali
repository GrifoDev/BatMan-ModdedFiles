.class Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;
.super Landroid/app/Presentation;
.source "DesktopModePresentationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/DesktopModePresentationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalPresentation"
.end annotation


# instance fields
.field mPackageManager:Landroid/content/pm/PackageManager;

.field final mType:I

.field final mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput p3, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->mType:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private getDefaultWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "dex_wallpaper_001"

    const-string/jumbo v5, "drawable"

    const-string/jumbo v6, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Failed to get default wallpaper"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 17

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget v11, Lcom/samsung/android/framework/res/R$id;->intro_layout:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v11, v2, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_layout_width:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_layout_height:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v11, Lcom/samsung/android/framework/res/R$id;->intro_title:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_title_size:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    mul-float/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/samsung/android/framework/res/R$string;->dex_intro_welcome_to:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "<b>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/samsung/android/framework/res/R$string;->dex_intro_samsung_dex:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "</b>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v11, Lcom/samsung/android/framework/res/R$id;->intro_msg:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/android/framework/res/R$string;->dex_intro_msg:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/android/framework/res/R$string;->dex_intro_msg_additional:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_positive:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_msg_size:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    mul-float/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {v8, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v11, Lcom/samsung/android/framework/res/R$id;->intro_image:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_img_width:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/android/framework/res/R$fraction;->dex_intro_img_height:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->getDefaultWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    sget v11, Lcom/samsung/android/framework/res/R$id;->wallpaper_background:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    const/high16 v11, 0x41200000    # 10.0f

    invoke-virtual {v1, v11}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setRadius(F)V

    invoke-virtual {v10, v1}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExternalPresentation dismissed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/app/Presentation;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->mWindow:Landroid/view/Window;

    const/16 v1, 0x8b6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_intro:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->updateLayout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->mWindow:Landroid/view/Window;

    sget v1, Lcom/samsung/android/framework/res/R$style;->loading_screen_animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_black_screen:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ExternalPresentation shown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/app/Presentation;->show()V

    iget v1, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget v1, Lcom/samsung/android/framework/res/R$id;->splash_image:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_loading_animation_list:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModeUiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation$1;-><init>(Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Presentation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->mType:I

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
