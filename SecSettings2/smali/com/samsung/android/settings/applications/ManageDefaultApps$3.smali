.class Lcom/samsung/android/settings/applications/ManageDefaultApps$3;
.super Ljava/lang/Object;
.source "ManageDefaultApps.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/applications/ManageDefaultApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$3;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$3;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$3;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-static {v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->-get5(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$3;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-static {v2}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->-get4(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultHomePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/preference/Preference;)V

    return-void
.end method
