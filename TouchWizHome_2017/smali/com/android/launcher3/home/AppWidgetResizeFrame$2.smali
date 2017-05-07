.class Lcom/android/launcher3/home/AppWidgetResizeFrame$2;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/AppWidgetResizeFrame;->snapToWidget(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/AppWidgetResizeFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame$2;->this$0:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/AppWidgetResizeFrame$2;->this$0:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->requestLayout()V

    return-void
.end method
