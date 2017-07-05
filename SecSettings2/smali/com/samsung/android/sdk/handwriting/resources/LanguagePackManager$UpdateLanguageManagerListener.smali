.class Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;
.super Ljava/lang/Object;
.source "LanguagePackManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateLanguageManagerListener"
.end annotation


# instance fields
.field private mListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onComplete(I)V
    .locals 11

    const/4 v10, -0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update complete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v6}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    invoke-interface {v2}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->getAvailableLanguage()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$400(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    if-nez v3, :cond_6

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$402(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v3, v10}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$202(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;I)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update failure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v3, v10}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$202(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;I)I

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    goto :goto_3

    :cond_2
    aget-object v0, v5, v4

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->add(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$400(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    move-result-object v9

    invoke-direct {v8, v3, v9}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;-><init>(Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$500()Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePack;->setLanguagePackManager(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)V

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$208(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)I

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_5

    :goto_5
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v4}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$600()Z

    move-result v4

    invoke-interface {v3, p0, v4}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V

    return-void

    :cond_5
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update language list progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;->access$400(Lcom/samsung/android/sdk/handwriting/resources/LanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    goto/16 :goto_2
.end method
