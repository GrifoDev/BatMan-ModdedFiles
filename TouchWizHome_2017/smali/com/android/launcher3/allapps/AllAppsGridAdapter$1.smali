.class Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;
.super Ljava/lang/Object;
.source "AllAppsGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->access$900(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->access$800(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/Launcher;->startSearchFromAllApps(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method
