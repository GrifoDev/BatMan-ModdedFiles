.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;
.super Ljava/lang/Object;
.source "SecNavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SecNavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_CUSTOM_NAVIBAR_BGCOLOR:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "navigationbar_color"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-wrap1(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Z)V

    :cond_1
    :goto_0
    const-string/jumbo v0, "navigationbar_hide_bar"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setForceImmersiveMode()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateImmersivePinIcon()V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v2, "navigationbar_use_theme_default"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get10(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarUseThemeDefault()I

    move-result v3

    if-ne v3, v1, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, v2, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-wrap1(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(IZ)V

    goto :goto_0
.end method
