.class Lcom/android/launcher3/home/ZeroPageController$7;
.super Ljava/lang/Object;
.source "ZeroPageController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ZeroPageController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$7;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iput-object p2, p0, Lcom/android/launcher3/home/ZeroPageController$7;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$7;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController$7;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->startDownloadZeroPage(Ljava/lang/String;)V

    return-void
.end method
