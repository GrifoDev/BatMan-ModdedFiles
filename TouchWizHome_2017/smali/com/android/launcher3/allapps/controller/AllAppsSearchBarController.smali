.class public abstract Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;
.super Ljava/lang/Object;
.source "AllAppsSearchBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;
    }
.end annotation


# instance fields
.field protected mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field protected mCb:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract focusSearchField()V
.end method

.method public abstract getSearchBarEditView()Landroid/widget/SearchView;
.end method

.method public abstract getView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final initialize(Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->mCb:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->onInitialize()V

    return-void
.end method

.method public abstract isSearchFieldFocused()Z
.end method

.method protected abstract onInitialize()V
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract reset()V
.end method

.method public abstract shouldShowPredictionBar()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
