.class Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "GuestResumeSessionReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/GuestResumeSessionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetSessionDialog"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0539

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f053a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setCanceledOnTouchOutside(Z)V

    const v0, 0x7f0f053b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f0f053c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iput p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$1;-><init>(Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->cancel()V

    goto :goto_0
.end method
