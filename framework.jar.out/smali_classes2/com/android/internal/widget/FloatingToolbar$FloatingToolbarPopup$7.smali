.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v10, 0x0

    return v10

    :pswitch_1
    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    invoke-static {v10, v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    invoke-static {v10, v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get12(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v11

    invoke-static {v10, v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get13(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v11

    invoke-static {v10, v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar;->-set2(Z)Z

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar;->-set4(Z)Z

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v7, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v7

    :cond_1
    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    sub-int v11, v6, v7

    invoke-static {v10, v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set7(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    new-instance v5, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v5}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    invoke-virtual {v5}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v10, v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set7(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get35(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get34(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    invoke-static {v10, v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set7(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get4()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get27(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v11

    sub-float v11, v8, v11

    float-to-int v11, v11

    invoke-static {v10, v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get28(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v11

    sub-float v11, v9, v11

    float-to-int v11, v11

    invoke-static {v10, v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get12(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v10

    sub-float v10, v8, v10

    float-to-int v1, v10

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get13(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v10

    sub-float v10, v9, v10

    float-to-int v2, v10

    mul-int v10, v1, v1

    mul-int v11, v2, v2

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get32(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get32(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v12

    mul-int/2addr v11, v12

    if-lt v10, v11, :cond_2

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar;->-set2(Z)Z

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar;->-set3(Z)Z

    :cond_2
    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get3()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v10, v8, v9}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;FF)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v12, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    iget-object v13, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v13}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v10, v11, v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;II)V

    :cond_3
    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get26(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v12, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    iget-object v13, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v13}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get26(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v13

    iget-object v14, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v14}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get26(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v10, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v10, v9}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
