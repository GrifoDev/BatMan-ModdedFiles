.class Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$1;
.super Ljava/lang/Object;
.source "GuestResumeSessionReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$1;->this$1:Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$1;->this$1:Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;

    invoke-virtual {v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$1;->this$1:Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;

    invoke-static {v1}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->-get0(Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/GuestResumeSessionReceiver;->-wrap0(Landroid/content/Context;I)V

    return-void
.end method
