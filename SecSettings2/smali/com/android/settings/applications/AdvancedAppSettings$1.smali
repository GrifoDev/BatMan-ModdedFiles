.class Lcom/android/settings/applications/AdvancedAppSettings$1;
.super Ljava/lang/Object;
.source "AdvancedAppSettings.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AdvancedAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AdvancedAppSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AdvancedAppSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AdvancedAppSettings$1;->this$0:Lcom/android/settings/applications/AdvancedAppSettings;

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

    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings$1;->this$0:Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AdvancedAppSettings$1;->this$0:Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-static {v1}, Lcom/android/settings/applications/AdvancedAppSettings;->-get2(Lcom/android/settings/applications/AdvancedAppSettings;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AdvancedAppSettings$1;->this$0:Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-static {v2}, Lcom/android/settings/applications/AdvancedAppSettings;->-get1(Lcom/android/settings/applications/AdvancedAppSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultHomePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/preference/Preference;)V

    return-void
.end method
