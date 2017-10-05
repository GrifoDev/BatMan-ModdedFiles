.class Lcom/android/launcher3/appspicker/AppsPickerListAdapter$2;
.super Ljava/lang/Object;
.source "AppsPickerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/AppsPickerListAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$2;->this$0:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$2;->this$0:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->access$100(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$2;->this$0:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->access$100(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;->onToggleItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_0
    return-void
.end method
