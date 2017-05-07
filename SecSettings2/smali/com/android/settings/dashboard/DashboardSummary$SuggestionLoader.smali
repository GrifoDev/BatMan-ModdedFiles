.class Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;
.super Landroid/os/AsyncTask;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settingslib/drawer/Tile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v6}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v6}, Lcom/android/settings/dashboard/DashboardSummary;->-get1(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settingslib/SuggestionParser;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settingslib/SuggestionParser;->getSuggestions()Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v6}, Lcom/android/settings/dashboard/DashboardSummary;->-get2(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/SuggestionsChecks;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/settings/dashboard/SuggestionsChecks;->isSuggestionComplete(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v6}, Lcom/android/settings/dashboard/DashboardSummary;->-get0(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardAdapter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/settings/dashboard/DashboardAdapter;->disableSuggestion(Lcom/android/settingslib/drawer/Tile;)V

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v1, v2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    invoke-static {v0, v4}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v6}, Lcom/android/settings/dashboard/DashboardSummary;->-get3(Lcom/android/settings/dashboard/DashboardSummary;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v6}, Lcom/android/settings/dashboard/DashboardSummary;->-get3(Lcom/android/settings/dashboard/DashboardSummary;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x180

    invoke-static {v0, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardSummary;->-get0(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategoriesAndSuggestions(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
