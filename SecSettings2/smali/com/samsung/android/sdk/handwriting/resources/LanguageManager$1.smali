.class Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$1;
.super Ljava/lang/Object;
.source "LanguageManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;->update(Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;

.field final synthetic val$listener:Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguageManager;

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/LanguageManager$OnUpdateListener;->onComplete(I)V

    goto :goto_0
.end method
