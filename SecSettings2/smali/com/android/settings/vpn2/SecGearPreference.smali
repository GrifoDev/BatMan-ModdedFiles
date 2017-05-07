.class public Lcom/android/settings/vpn2/SecGearPreference;
.super Lcom/samsung/android/settingslib/RestrictedPreference;
.source "SecGearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/SecGearPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mOnGearClickListener:Lcom/android/settings/vpn2/SecGearPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f040239

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/SecGearPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settingslib/RestrictedPreference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f110676

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f110676

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/SecGearPreference;->mOnGearClickListener:Lcom/android/settings/vpn2/SecGearPreference$OnGearClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/SecGearPreference;->mOnGearClickListener:Lcom/android/settings/vpn2/SecGearPreference$OnGearClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/vpn2/SecGearPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/vpn2/SecGearPreference;)V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/vpn2/SecGearPreference$OnGearClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/vpn2/SecGearPreference;->mOnGearClickListener:Lcom/android/settings/vpn2/SecGearPreference$OnGearClickListener;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/SecGearPreference;->notifyChanged()V

    return-void
.end method
