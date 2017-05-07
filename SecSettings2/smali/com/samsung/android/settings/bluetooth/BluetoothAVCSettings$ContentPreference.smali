.class Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;
.super Landroid/preference/Preference;
.source "BluetoothAVCSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040053

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->setLayoutResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6

    const v5, 0x7f1100e1

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap0(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    const-string/jumbo v4, "BluetoothAVCSettings"

    const-string/jumbo v5, "onBindView :: start absolute volume control animation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const v5, 0x7f0b0406

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const v5, 0x7f0b0408

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const v5, 0x7f0b0407

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const v5, 0x7f0b0409

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_1
    const v4, 0x7f110190

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string/jumbo v4, "BluetoothAVCSettings"

    const-string/jumbo v5, "onBindView :: anim is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const v5, 0x7f0b040c

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
