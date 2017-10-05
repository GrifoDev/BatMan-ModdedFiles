.class Lcom/android/launcher3/common/tray/TrayManager$2;
.super Ljava/lang/Object;
.source "TrayManager.java"

# interfaces
.implements Lcom/android/launcher3/common/tray/FakeView$TranslationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/tray/TrayManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/tray/TrayManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/tray/TrayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranslateX(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;F)V
    .locals 0

    return-void
.end method

.method public onTranslateY(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;F)V
    .locals 5

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v1}, Lcom/android/launcher3/common/tray/TrayManager;->access$500(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v1}, Lcom/android/launcher3/common/tray/TrayManager;->access$500(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/tray/FakeView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v3}, Lcom/android/launcher3/common/tray/TrayManager;->access$600(Lcom/android/launcher3/common/tray/TrayManager;)F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v4}, Lcom/android/launcher3/common/tray/TrayManager;->access$700(Lcom/android/launcher3/common/tray/TrayManager;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/common/tray/TrayManager;->onChangeTrayTranslationY(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;FI)V

    goto :goto_0
.end method
