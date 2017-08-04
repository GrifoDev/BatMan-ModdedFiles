.class Lcom/android/launcher3/common/multiselect/MultiSelectPanel$2;
.super Ljava/lang/Object;
.source "MultiSelectPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/multiselect/MultiSelectPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$2;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$2;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$2;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-static {v2, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->access$000(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getButtonEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
