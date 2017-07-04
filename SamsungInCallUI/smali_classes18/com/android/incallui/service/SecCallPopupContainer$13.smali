.class Lcom/android/incallui/service/SecCallPopupContainer$13;
.super Ljava/lang/Object;
.source "SecCallPopupContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupContainer;->updateGradientView(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$13;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer$13;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer$13;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->access$1900(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/RelativeLayout;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer$13;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2800(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/widget/GradientAnimationView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer$13;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->access$1900(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    const-string v3, "SecCallPopupContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "orientation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$13;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer$13;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2800(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/widget/GradientAnimationView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer$13;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2800(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/widget/GradientAnimationView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer$13;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2800(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/widget/GradientAnimationView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->endHideAnimationImmediately()V

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer$13;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2800(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/widget/GradientAnimationView;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setAlpha(F)V

    :cond_1
    return-void
.end method
