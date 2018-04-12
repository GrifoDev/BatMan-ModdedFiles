.class Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;
.super Ljava/lang/Object;
.source "ZenModeDNDScheduleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

.field final synthetic val$mgr:Landroid/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;Landroid/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->val$mgr:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    new-instance v1, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    invoke-direct {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-set0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    iput-object v1, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->isAdded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->val$mgr:Landroid/app/FragmentManager;

    const-class v2, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
