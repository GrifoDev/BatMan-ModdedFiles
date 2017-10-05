.class Lcom/android/launcher3/home/ZeroPageController$4;
.super Ljava/lang/Object;
.source "ZeroPageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ZeroPageController;->resetOffset()V
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

    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$4;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$4;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    const/4 v1, 0x1

    invoke-static {v0, v2, v2, v1}, Lcom/android/launcher3/home/ZeroPageController;->access$1600(Lcom/android/launcher3/home/ZeroPageController;IIZ)Z

    return-void
.end method
