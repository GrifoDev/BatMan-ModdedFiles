.class final synthetic Lcom/android/systemui/stackdivider/DividerView$-void_onBusEvent_com_android_systemui_recents_events_ui_RecentsDrawnEvent_drawnEvent_LambdaImpl0;
.super Ljava/lang/Object;
.source "DividerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onBusEvent_com_android_systemui_recents_events_ui_RecentsDrawnEvent_drawnEvent_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$-void_onBusEvent_com_android_systemui_recents_events_ui_RecentsDrawnEvent_drawnEvent_LambdaImpl0;->val$this:Lcom/android/systemui/stackdivider/DividerView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$-void_onBusEvent_com_android_systemui_recents_events_ui_RecentsDrawnEvent_drawnEvent_LambdaImpl0;->val$this:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->-com_android_systemui_stackdivider_DividerView_lambda$2()V

    return-void
.end method
