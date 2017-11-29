.class Lcom/android/launcher3/common/quickoption/QuickOptionView$4;
.super Ljava/lang/Object;
.source "QuickOptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionView;->animateShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$300(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
