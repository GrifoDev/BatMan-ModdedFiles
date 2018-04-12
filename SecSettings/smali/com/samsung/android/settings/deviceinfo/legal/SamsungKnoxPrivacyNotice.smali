.class public Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;
.super Landroid/app/Activity;
.source "SamsungKnoxPrivacyNotice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f120f13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v3, "SamsungKnoxPrivacyNotice"

    const-string/jumbo v4, "onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0d0278

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->setContentView(I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->setTitle(I)V

    const v3, 0x7f0a0462

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0460

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0a0461

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v3, "KOREA"

    const-string/jumbo v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SamsungKnoxPrivacyNotice"

    const-string/jumbo v4, "setupTextView() - Korea"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f120f14

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f120f12

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    :cond_0
    const-string/jumbo v3, "SamsungKnoxPrivacyNotice"

    const-string/jumbo v4, "setupTextView() - Global"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f120f10

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f120f11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
