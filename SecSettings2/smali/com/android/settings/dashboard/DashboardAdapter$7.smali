.class Lcom/android/settings/dashboard/DashboardAdapter$7;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardAdapter;->onBindSuggestionHeader(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$7;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$7;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-set2(Lcom/android/settings/dashboard/DashboardAdapter;Z)Z

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$7;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-get1(Lcom/android/settings/dashboard/DashboardAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-set0(Lcom/android/settings/dashboard/DashboardAdapter;I)I

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$7;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-wrap1(Lcom/android/settings/dashboard/DashboardAdapter;)V

    return-void
.end method
