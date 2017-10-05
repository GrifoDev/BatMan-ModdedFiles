.class Lcom/android/launcher3/home/HomeBindController$22;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeBindController;->bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeBindController;

.field final synthetic val$ComponentsNames:Ljava/util/HashSet;

.field final synthetic val$packageNames:Ljava/util/ArrayList;

.field final synthetic val$reason:I

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$22;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeBindController$22;->val$packageNames:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeBindController$22;->val$ComponentsNames:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeBindController$22;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput p5, p0, Lcom/android/launcher3/home/HomeBindController$22;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController$22;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController$22;->val$packageNames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController$22;->val$ComponentsNames:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController$22;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget v4, p0, Lcom/android/launcher3/home/HomeBindController$22;->val$reason:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeBindController;->bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    return-void
.end method
