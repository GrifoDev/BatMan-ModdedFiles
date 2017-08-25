.class Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;
.super Ljava/lang/Object;
.source "SelectAudioApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/SelectAudioApplications;->addAddItem()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-virtual {v0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0b94

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-set0(Lcom/samsung/android/settings/multisound/SelectAudioApplications;Z)Z

    return-void
.end method
