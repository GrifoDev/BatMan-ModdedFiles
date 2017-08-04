.class Lcom/android/launcher3/common/multiselect/MultiSelectPanel$1;
.super Ljava/lang/Object;
.source "MultiSelectPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$1;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$1;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectPanel$1;->this$0:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-static {v1, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->access$000(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->access$100(Lcom/android/launcher3/common/multiselect/MultiSelectPanel;I)V

    return-void
.end method
