.class Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;
.super Landroid/content/pm/IKnoxModeChangeObserver$Stub;
.source "SystemUIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->registerKnoxModeChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-direct {p0}, Landroid/content/pm/IKnoxModeChangeObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxModeChange(I)V
    .locals 1

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->-wrap1(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V

    :cond_0
    return-void
.end method
