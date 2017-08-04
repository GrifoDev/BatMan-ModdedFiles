.class final Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$1;
.super Ljava/lang/Thread;
.source "GyroForShadow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->initialize(Landroid/content/Context;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->access$000(Landroid/app/Activity;)V

    return-void
.end method
