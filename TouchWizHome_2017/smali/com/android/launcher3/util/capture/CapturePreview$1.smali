.class Lcom/android/launcher3/util/capture/CapturePreview$1;
.super Landroid/os/Handler;
.source "CapturePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/capture/CapturePreview;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/capture/CapturePreview;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/capture/CapturePreview;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/capture/CapturePreview$1;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/util/capture/CapturePreview$1;->this$0:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-static {v0}, Lcom/android/launcher3/util/capture/CapturePreview;->access$000(Lcom/android/launcher3/util/capture/CapturePreview;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
