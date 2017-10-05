.class Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;
.super Ljava/lang/Object;
.source "AppsAlphabetAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->updateIconAndTitle(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

.field final synthetic val$updated:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;->val$updated:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v2, v2, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v2, v2, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mDestroyed:Z

    if-eqz v2, :cond_0

    const-string v2, "AppsAlphabetAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignore updateIconAndTitle because of destroyed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v4, v4, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v2, v2, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;->val$updated:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->updateApps(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v2, v2, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v2}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getMaxItemsPerScreen()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v2, v2, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v2}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getCellCountX()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v3, v3, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v2, v2, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->rearrangeAllViews(Z)V

    goto :goto_0
.end method
