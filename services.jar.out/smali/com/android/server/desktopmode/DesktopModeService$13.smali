.class Lcom/android/server/desktopmode/DesktopModeService$13;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;

.field final synthetic val$dialogType:I


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$13;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iput p2, p0, Lcom/android/server/desktopmode/DesktopModeService$13;->val$dialogType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$13;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$13;->val$dialogType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "1st_mouse"

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap30(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "1st_dock"

    goto :goto_0
.end method
