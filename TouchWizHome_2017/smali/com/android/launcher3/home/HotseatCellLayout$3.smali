.class Lcom/android/launcher3/home/HotseatCellLayout$3;
.super Ljava/lang/Object;
.source "HotseatCellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HotseatCellLayout;->gridSizeChanged(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HotseatCellLayout;

.field final synthetic val$animated:Z

.field final synthetic val$prevGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HotseatCellLayout;Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HotseatCellLayout$3;->this$0:Lcom/android/launcher3/home/HotseatCellLayout;

    iput-object p2, p0, Lcom/android/launcher3/home/HotseatCellLayout$3;->val$prevGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iput-boolean p3, p0, Lcom/android/launcher3/home/HotseatCellLayout$3;->val$animated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout$3;->this$0:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout$3;->val$prevGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    iget-boolean v2, p0, Lcom/android/launcher3/home/HotseatCellLayout$3;->val$animated:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->gridSizeChanged(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Z)V

    return-void
.end method
