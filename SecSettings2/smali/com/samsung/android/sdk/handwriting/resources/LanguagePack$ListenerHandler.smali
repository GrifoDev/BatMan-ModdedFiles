.class Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;
.super Landroid/os/Handler;
.source "LanguagePack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;-><init>(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$ListenerHandler;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->access$000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$LanguagePackDownloadListener;->onComplete(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
