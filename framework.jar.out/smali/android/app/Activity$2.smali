.class Landroid/app/Activity$2;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->setRequestedOrientation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;

.field final synthetic val$requestedOr:I

.field final synthetic val$targetWindow:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/android/internal/policy/PhoneWindow;I)V
    .locals 0

    iput-object p1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    iput-object p2, p0, Landroid/app/Activity$2;->val$targetWindow:Lcom/android/internal/policy/PhoneWindow;

    iput p3, p0, Landroid/app/Activity$2;->val$requestedOr:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/app/Activity$2;->val$targetWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v1, p0, Landroid/app/Activity$2;->val$requestedOr:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->dispatchRequestedOrientation(I)V

    return-void
.end method
