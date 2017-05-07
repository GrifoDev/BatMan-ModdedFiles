.class Lcom/android/launcher3/common/view/PageIndicator$2;
.super Ljava/lang/Object;
.source "PageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/view/PageIndicator;->showPageNumber(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/view/PageIndicator;

.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/view/PageIndicator;Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/view/PageIndicator$2;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    iput-object p2, p0, Lcom/android/launcher3/common/view/PageIndicator$2;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator$2;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    return-void
.end method
