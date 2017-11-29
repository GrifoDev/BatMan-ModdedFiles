.class public Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;
.super Landroid/app/DialogFragment;
.source "BillingCycleChnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleChnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesEditorFragment"
.end annotation


# instance fields
.field private mSpinner:Landroid/widget/Spinner;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/BillingCycleChnSettings;

    return-void
.end method

.method public static show(Lcom/android/settings/datausage/BillingCycleChnSettings;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "template"

    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get1(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "DataLimitDialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dismissSpinnerPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v6, -0x1

    if-eq p2, v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "template"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    iget-object v6, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v7, 0x7f11025a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v2, "0"

    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v6, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/high16 v6, 0x44800000    # 1024.0f

    mul-float/2addr v0, v6

    :cond_2
    const/high16 v6, 0x51c80000

    cmpl-float v6, v0, v6

    if-lez v6, :cond_3

    const/high16 v0, 0x51c80000

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_data_limit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set_data_limit"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-wrap0(Lcom/android/settings/datausage/BillingCycleChnSettings;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string/jumbo v0, "BillingCycleChnSettings"

    const-string/jumbo v1, "DataLimitEditorFragment::onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->dismissSpinnerPopup()V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const v5, 0x7f11025b

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400ab

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v3, 0x7f11025a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b19e1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$BytesEditorFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b19df

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
