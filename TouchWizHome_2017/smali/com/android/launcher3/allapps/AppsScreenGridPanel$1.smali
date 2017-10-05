.class Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;
.super Ljava/lang/Object;
.source "AppsScreenGridPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v3}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->isSwitchingState()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v3, v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$100(Lcom/android/launcher3/allapps/AppsScreenGridPanel;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$1;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-static {v3}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeScreenGrid(ZII)Z

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertClickGridButtonLog(IIZ)V

    goto :goto_0
.end method
