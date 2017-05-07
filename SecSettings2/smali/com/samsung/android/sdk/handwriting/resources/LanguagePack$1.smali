.class Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$1;
.super Ljava/lang/Object;
.source "LanguagePack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$OnDownloadListener;


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$OnDownloadListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack$OnDownloadListener;->onComplete(I)V

    return-void
.end method
