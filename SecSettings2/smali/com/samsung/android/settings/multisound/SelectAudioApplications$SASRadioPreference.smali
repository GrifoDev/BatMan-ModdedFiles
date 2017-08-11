.class public Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;
.super Lcom/samsung/android/settings/multisound/SASButtonPreference;
.source "SelectAudioApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/multisound/SelectAudioApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SASRadioPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/multisound/SASButtonPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11064e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    new-instance v2, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference$1;-><init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v1
.end method
