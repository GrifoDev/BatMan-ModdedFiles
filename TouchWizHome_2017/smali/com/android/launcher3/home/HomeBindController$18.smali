.class Lcom/android/launcher3/home/HomeBindController$18;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeBindController;->bindRemoveScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeBindController;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$18;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iput p2, p0, Lcom/android/launcher3/home/HomeBindController$18;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController$18;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iget v1, p0, Lcom/android/launcher3/home/HomeBindController$18;->val$index:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeBindController;->bindRemoveScreen(I)V

    return-void
.end method
