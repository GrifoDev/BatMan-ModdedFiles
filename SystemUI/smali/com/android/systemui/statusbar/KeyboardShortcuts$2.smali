.class Lcom/android/systemui/statusbar/KeyboardShortcuts$2;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x1

    const/high16 v8, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v5}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-get0(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f040067

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v4, Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v5}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-get0(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v5}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-get1(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const v6, 0x1020002

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-wrap2(Lcom/android/systemui/statusbar/KeyboardShortcuts;F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v5}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-get0(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02029d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setElevation(F)V

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v5, 0x2

    new-array v3, v5, [I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    aget v6, v3, v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-wrap2(Lcom/android/systemui/statusbar/KeyboardShortcuts;F)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit16 v6, v6, -0x140

    const v7, 0x800033

    invoke-virtual {v4, p1, v7, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
