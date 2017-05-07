.class public Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconLoadRequest"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;->mRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
