.class Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;
.super Ljava/lang/Object;
.source "AppsScreenGridPanel.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AppsScreenGridPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    const/16 v8, 0x16

    const/16 v7, 0x15

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eq p2, v7, :cond_0

    if-ne p2, v8, :cond_2

    :cond_0
    move v1, v5

    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_1

    if-nez v1, :cond_3

    :cond_1
    :goto_1
    return v1

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsScreenGridPanel()Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsScreenGridPanel()Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getGridBtnLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_1

    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_5

    if-ne p2, v7, :cond_6

    const/16 p2, 0x16

    :cond_5
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v0, v4}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    :cond_6
    if-ne p2, v8, :cond_5

    const/16 p2, 0x15

    goto :goto_2

    :pswitch_1
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v0, v4}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
