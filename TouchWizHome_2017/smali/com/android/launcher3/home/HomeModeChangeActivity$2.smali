.class Lcom/android/launcher3/home/HomeModeChangeActivity$2;
.super Ljava/lang/Object;
.source "HomeModeChangeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeModeChangeActivity;->showModeChangeDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeModeChangeActivity;

.field final synthetic val$needNeutralButton:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeModeChangeActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity$2;->this$0:Lcom/android/launcher3/home/HomeModeChangeActivity;

    iput-boolean p2, p0, Lcom/android/launcher3/home/HomeModeChangeActivity$2;->val$needNeutralButton:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity$2;->val$needNeutralButton:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->copyFavoritesForHomeOnly()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity$2;->this$0:Lcom/android/launcher3/home/HomeModeChangeActivity;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->access$300(Lcom/android/launcher3/home/HomeModeChangeActivity;)V

    return-void
.end method
