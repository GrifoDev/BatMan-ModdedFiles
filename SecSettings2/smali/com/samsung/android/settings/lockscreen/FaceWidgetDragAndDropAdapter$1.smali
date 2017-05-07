.class Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;
.super Ljava/lang/Object;
.source "FaceWidgetDragAndDropAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

.field final synthetic val$dragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;->val$dragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;->this$0:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->-get2(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;->val$dragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->getSwitch()Landroid/widget/Switch;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;->val$dragCell:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->getSwitch()Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
