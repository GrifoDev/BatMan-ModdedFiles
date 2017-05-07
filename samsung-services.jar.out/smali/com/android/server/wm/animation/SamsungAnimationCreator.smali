.class public abstract Lcom/android/server/wm/animation/SamsungAnimationCreator;
.super Ljava/lang/Object;
.source "SamsungAnimationCreator.java"


# static fields
.field protected static final ANIMATION_TRIGGER_ACTIVITY_LAUNCHER:I = 0x1

.field protected static final ANIMATION_TRIGGER_ACTIVITY_RECENTS:I = 0x2

.field protected static final ANIMATION_TRIGGER_LAUNCHER_SCREEN_APPS:I = 0x14

.field protected static final ANIMATION_TRIGGER_LAUNCHER_SCREEN_HOME:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SamsungAnimationCreator"

.field public static final TYPE_SCALE_DOWN:I = 0x3ea

.field public static final TYPE_SCALE_UP:I = 0x3e9

.field public static final TYPE_TASK_CLOSE:I = 0x9

.field public static final TYPE_TASK_OPEN:I = 0x8

.field public static final TYPE_TASK_TO_BACK:I = 0xb

.field public static final TYPE_TASK_TO_FRONT:I = 0xa

.field public static final TYPE_WALLPAPER_CLOSE:I = 0xc

.field public static final TYPE_WALLPAPER_OPEN:I = 0xd


# instance fields
.field protected APP_ENTER_APP_ALPHA_ANIMATION_DURATION:J

.field protected APP_ENTER_APP_ALPHA_ANIMATION_FROM_ALPHA:F

.field protected APP_ENTER_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected APP_ENTER_APP_ALPHA_ANIMATION_START_OFFSET:J

.field protected APP_ENTER_APP_ALPHA_ANIMATION_TO_ALPHA:F

.field protected APP_ENTER_APP_CLIP_RECT_ENTER_LOWER:J

.field protected APP_ENTER_APP_CLIP_RECT_ENTER_MIDDLE:J

.field protected APP_ENTER_APP_CLIP_RECT_ENTER_UPPER:J

.field protected APP_ENTER_APP_SCALE_ANIMATION_DURATION:J

.field protected APP_ENTER_APP_SCALE_ANIMATION_FROM_X:F

.field protected APP_ENTER_APP_SCALE_ANIMATION_FROM_X_IS_SPLIT:F

.field protected APP_ENTER_APP_SCALE_ANIMATION_FROM_Y:F

.field protected APP_ENTER_APP_SCALE_ANIMATION_FROM_Y_IS_SPLIT:F

.field protected APP_ENTER_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected APP_ENTER_APP_SCALE_ANIMATION_TO_X:F

.field protected APP_ENTER_APP_SCALE_ANIMATION_TO_X_IS_SPLIT:F

.field protected APP_ENTER_APP_SCALE_ANIMATION_TO_Y:F

.field protected APP_ENTER_APP_SCALE_ANIMATION_TO_Y_IS_SPLIT:F

.field protected APP_ENTER_EXIT_CLIP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected APP_ENTER_HOME_ALPHA_ANIMATION_DURATION:J

.field protected APP_ENTER_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

.field protected APP_ENTER_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected APP_ENTER_HOME_ALPHA_ANIMATION_TO_ALPHA:F

.field protected APP_ENTER_HOME_SCALE_ANIMATION_DURATION:J

.field protected APP_ENTER_HOME_SCALE_ANIMATION_FROM_X:F

.field protected APP_ENTER_HOME_SCALE_ANIMATION_FROM_Y:F

.field protected APP_ENTER_HOME_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected APP_ENTER_HOME_SCALE_ANIMATION_TO_X:F

.field protected APP_ENTER_HOME_SCALE_ANIMATION_TO_Y:F

.field protected APP_ENTER_WALLPAPER_SCALE_ANIMATION_DURATION:J

.field protected APP_ENTER_WALLPAPER_SCALE_ANIMATION_FROM_X:F

.field protected APP_ENTER_WALLPAPER_SCALE_ANIMATION_FROM_Y:F

.field protected APP_ENTER_WALLPAPER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected APP_ENTER_WALLPAPER_SCALE_ANIMATION_TO_X:F

.field protected APP_ENTER_WALLPAPER_SCALE_ANIMATION_TO_Y:F

.field protected APP_EXIT_APP_ALPHA_ANIMATION_DURATION:J

.field protected APP_EXIT_APP_ALPHA_ANIMATION_FROM_ALPHA:F

.field protected APP_EXIT_APP_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected APP_EXIT_APP_ALPHA_ANIMATION_START_OFFSET:J

.field protected APP_EXIT_APP_ALPHA_ANIMATION_TO_ALPHA:F

.field protected APP_EXIT_APP_SCALE_ANIMATION_DURATION:J

.field protected APP_EXIT_APP_SCALE_ANIMATION_FROM_X:F

.field protected APP_EXIT_APP_SCALE_ANIMATION_FROM_Y:F

.field protected APP_EXIT_APP_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected APP_EXIT_APP_SCALE_ANIMATION_TO_X:F

.field protected APP_EXIT_APP_SCALE_ANIMATION_TO_Y:F

.field protected APP_EXIT_HOME_ALPHA_ANIMATION_DURATION:J

.field protected APP_EXIT_HOME_ALPHA_ANIMATION_FROM_ALPHA:F

.field protected APP_EXIT_HOME_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected APP_EXIT_HOME_ALPHA_ANIMATION_START_OFFSET:J

.field protected APP_EXIT_HOME_ALPHA_ANIMATION_TO_ALPHA:F

.field protected APP_EXIT_HOME_SCALE_ANIMATION_DURATION:J

.field protected APP_EXIT_HOME_SCALE_ANIMATION_FROM_X:F

.field protected APP_EXIT_HOME_SCALE_ANIMATION_FROM_Y:F

.field protected APP_EXIT_HOME_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected APP_EXIT_HOME_SCALE_ANIMATION_TO_X:F

.field protected APP_EXIT_HOME_SCALE_ANIMATION_TO_Y:F

.field protected APP_EXIT_WALLPAPER_SCALE_ANIMATION_DURATION:J

.field protected APP_EXIT_WALLPAPER_SCALE_ANIMATION_FROM_X:F

.field protected APP_EXIT_WALLPAPER_SCALE_ANIMATION_FROM_Y:F

.field protected APP_EXIT_WALLPAPER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected APP_EXIT_WALLPAPER_SCALE_ANIMATION_TO_X:F

.field protected APP_EXIT_WALLPAPER_SCALE_ANIMATION_TO_Y:F

.field protected TASK_CLOSE_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

.field protected TASK_CLOSE_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected TASK_CLOSE_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

.field protected TASK_CLOSE_EXIT_ALPHA_ANIMATION_DURATION:J

.field protected TASK_CLOSE_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

.field protected TASK_CLOSE_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected TASK_CLOSE_EXIT_ALPHA_ANIMATION_START_OFFSET:J

.field protected TASK_CLOSE_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

.field protected TASK_CLOSE_EXIT_SCALE_ANIMATION_DURATION:J

.field protected TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_X:F

.field protected TASK_CLOSE_EXIT_SCALE_ANIMATION_FROM_Y:F

.field protected TASK_CLOSE_EXIT_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_X:F

.field protected TASK_CLOSE_EXIT_SCALE_ANIMATION_TO_Y:F

.field protected TASK_OPEN_ENTER_ALPHA_ANIMATION_DURATION:J

.field protected TASK_OPEN_ENTER_ALPHA_ANIMATION_FROM_ALPHA:F

.field protected TASK_OPEN_ENTER_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected TASK_OPEN_ENTER_ALPHA_ANIMATION_START_OFFSET:J

.field protected TASK_OPEN_ENTER_ALPHA_ANIMATION_TO_ALPHA:F

.field protected TASK_OPEN_ENTER_SCALE_ANIMATION_DURATION:J

.field protected TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_X:F

.field protected TASK_OPEN_ENTER_SCALE_ANIMATION_FROM_Y:F

.field protected TASK_OPEN_ENTER_SCALE_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected TASK_OPEN_ENTER_SCALE_ANIMATION_TO_X:F

.field protected TASK_OPEN_ENTER_SCALE_ANIMATION_TO_Y:F

.field protected TASK_OPEN_EXIT_ALPHA_ANIMATION_FROM_ALPHA:F

.field protected TASK_OPEN_EXIT_ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected TASK_OPEN_EXIT_ALPHA_ANIMATION_TO_ALPHA:F

.field protected WINDOW_HEIGHT:I

.field protected WINDOW_WIDTH:I

.field protected mAnimationTriggerActivity:I

.field protected mAnimationTriggerLauncherScreen:I

.field protected mAppInOutAnimationPivotX:F

.field protected mAppInOutAnimationPivotY:F

.field protected mNextAppTransitionStartHeight:I

.field protected mNextAppTransitionStartWidth:I

.field protected mNextAppTransitionStartX:I

.field protected mNextAppTransitionStartY:I

.field protected mWallpaperEnterAnimationAllowed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mWallpaperEnterAnimationAllowed:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAnimationTriggerActivity:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAnimationTriggerLauncherScreen:I

    return-void
.end method


# virtual methods
.method public abstract createSamsungAnimation(Landroid/graphics/Rect;IZZLandroid/graphics/Rect;Landroid/graphics/Rect;IZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createSamsungAppEnterAnimation(ZZLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createSamsungAppExitAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
.end method

.method public abstract createSamsungTaskCloseAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
.end method

.method public abstract createSamsungTaskOpenAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
.end method

.method public abstract createSamsungWallpaperEnterAnimation(I)Landroid/view/animation/Animation;
.end method

.method public abstract createSamsungWallpaperExitAnimation(IZ)Landroid/view/animation/Animation;
.end method

.method protected abstract initSamsungAnimationFactor()V
.end method

.method public isValidAppTransitionStartValues()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartX:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAnimationTriggerActivity(I)V
    .locals 3

    const-string/jumbo v0, "SamsungAnimationCreator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimationTriggerActivity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAnimationTriggerActivity:I

    return-void
.end method

.method public setAnimationTriggerLauncherScreen(I)V
    .locals 3

    const-string/jumbo v0, "SamsungAnimationCreator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimationTriggerLauncherScreen type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAnimationTriggerLauncherScreen:I

    return-void
.end method

.method protected setAppWindowSize(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->WINDOW_WIDTH:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->WINDOW_HEIGHT:I

    const-string/jumbo v0, "SamsungAnimationCreator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAppWindowSize WINDOW_WIDTH/WINDOW_HEIGHT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->WINDOW_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->WINDOW_HEIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateAppTransitionStartValues(Landroid/graphics/Rect;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "SamsungAnimationCreator"

    const-string/jumbo v1, "updateAppTransitionStartValues reset"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    iput v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    iput v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    iput v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartX:I

    return-void

    :cond_0
    const-string/jumbo v0, "SamsungAnimationCreator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppTransitionStartValues frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartX:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    return-void
.end method
