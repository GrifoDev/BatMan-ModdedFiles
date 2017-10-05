.class public Lcom/android/launcher3/OpenSourceLicenseActivity;
.super Landroid/app/Activity;
.source "OpenSourceLicenseActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenSourceLicenseInfoActivity"


# instance fields
.field private mWebSettings:Landroid/webkit/WebSettings;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/launcher3/OpenSourceLicenseActivity;->mWebSettings:Landroid/webkit/WebSettings;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v1}, Lcom/android/launcher3/OpenSourceLicenseActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/OpenSourceLicenseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v1, 0x7f11000f

    invoke-virtual {p0, v1}, Lcom/android/launcher3/OpenSourceLicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/android/launcher3/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/launcher3/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/OpenSourceLicenseActivity;->mWebSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lcom/android/launcher3/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/android/launcher3/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setClickable(Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/OpenSourceLicenseActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OpenSourceLicenseActivity;->setTitle(I)V

    iget-object v0, p0, Lcom/android/launcher3/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/NOTICE"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/OpenSourceLicenseActivity;->mWebSettings:Landroid/webkit/WebSettings;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    iget-object v0, p0, Lcom/android/launcher3/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    sparse-switch p1, :sswitch_data_0

    :sswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0xf -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method
