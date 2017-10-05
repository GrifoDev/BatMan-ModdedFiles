.class Lcom/android/launcher3/home/ZeroPageController$10;
.super Ljava/lang/Object;
.source "ZeroPageController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ZeroPageController;->showZeroPageDownloadDialog(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ZeroPageController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ZeroPageController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$10;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$10;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->access$2202(Lcom/android/launcher3/home/ZeroPageController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
