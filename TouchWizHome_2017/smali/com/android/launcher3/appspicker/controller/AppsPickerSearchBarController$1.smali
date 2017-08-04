.class Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$1;
.super Ljava/lang/Object;
.source "AppsPickerSearchBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x259

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/Utilities;->startVoiceRecognitionActivity(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
