.class Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$1;
.super Ljava/lang/Object;
.source "AppsPickerSearchListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$1;->this$0:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const v2, 0x7f0e0030

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    iget-object v2, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$1;->this$0:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    # getter for: Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;
    invoke-static {v2}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->access$000(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$1;->this$0:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    # getter for: Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;
    invoke-static {v2}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->access$000(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;->onToggleItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_0
    return-void
.end method
