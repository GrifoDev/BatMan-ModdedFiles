.class Lcom/android/launcher3/home/HomeLoader$1;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->clearPreservedPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$1;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$1;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->access$000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeItemPositionHelper;->clearPreservedPosition()V

    return-void
.end method
