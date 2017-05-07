.class Lcom/android/launcher3/home/HomeBindController$2;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeBindController;->bindItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeBindController;

.field final synthetic val$forceAnimateIcons:Z

.field final synthetic val$item:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController;Lcom/android/launcher3/common/base/item/ItemInfo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$2;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeBindController$2;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-boolean p3, p0, Lcom/android/launcher3/home/HomeBindController$2;->val$forceAnimateIcons:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController$2;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController$2;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-boolean v2, p0, Lcom/android/launcher3/home/HomeBindController$2;->val$forceAnimateIcons:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeBindController;->bindItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    return-void
.end method
