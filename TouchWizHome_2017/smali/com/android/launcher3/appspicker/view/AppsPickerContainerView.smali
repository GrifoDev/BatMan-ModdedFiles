.class public Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;
.super Lcom/android/launcher3/common/base/view/BaseContainerView;
.source "AppsPickerContainerView.java"

# interfaces
.implements Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;
.implements Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddButtonContainer:Landroid/view/View;

.field private mAddButtonText:Landroid/widget/TextView;

.field private mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

.field private mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

.field private mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

.field private mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

.field private mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

.field private mPickerMode:I

.field private mQueryKey:Ljava/lang/String;

.field private mSearchBarContainerView:Landroid/view/ViewGroup;

.field private mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

.field private mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

.field private mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

.field private mSelectedCount:I

.field private mSelectedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iput v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-direct {v0}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-static {p1}, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->getQueryKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mQueryKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)Lcom/android/launcher3/appspicker/view/AppsPickerContentView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)Lcom/android/launcher3/appspicker/controller/AppsPickerController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    return-object v0
.end method

.method private checkHiddenItem()V
    .locals 6

    const/4 v1, 0x1

    iget v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mPickerMode:I

    if-ne v3, v1, :cond_2

    :goto_0
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v4, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    if-ltz v4, :cond_1

    iget-object v4, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->isHiddenByUser()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private debugAppsList()V
    .locals 9

    const/4 v3, 0x0

    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Apps.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getNumFilteredApps()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumFilteredApps()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getNumAppRows()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumAppRows()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getSections()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSections()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getSections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getSections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    sget-object v4, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - numApps="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sectionBreakItem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->sectionBreakItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", firstAppItem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    const-string v4, "getSections() = null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFastScrollerSections()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    sget-object v4, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fastScrollToItem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", touchFraction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    const-string v4, "getFastScrollerSections() = null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v4, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdapterItems()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumFilteredApps()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    sget-object v4, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    const-string v5, " - [%s] viewType=%d, appIndex=%d, position=%d, sectionName=%s, sectionAppIndex=%d, rowIndex=%d, rowAppIndex=%d"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v7, v7, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    aput-object v7, v6, v3

    const/4 v7, 0x1

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto/16 :goto_2

    :cond_5
    return-void
.end method

.method private getBackgroundColorValue(Z)I
    .locals 4

    if-eqz p1, :cond_0

    const v1, 0x7f0c0003

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0

    :cond_0
    const v1, 0x7f0c0004

    goto :goto_0
.end method

.method private setSelectionCount()V
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumAppsToShow()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    const-string v2, "%d/%d"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mPickerMode:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    const-string v2, "%d/%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public bindAdapter()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->initAppPositionInfoMap()V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->isWhiteBg()Z

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-direct {v3, v4, v5, v1}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V

    iput-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getListViewForAllApps()Landroid/widget/ListView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->setToSelectedListener(Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;)V

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-direct {v3, v4, v5, v1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V

    iput-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getListViewForSearchApps()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->setToSelectedListener(Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;)V

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->checkHiddenItem()V

    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSelectionCount()V

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setScrollIndexer()V

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->changeColorAndBackground()V

    return-void
.end method

.method public bindController(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    if-eq v0, p2, :cond_1

    iput-object p2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    :cond_1
    return-void
.end method

.method public changeColorAndBackground()V
    .locals 14

    const v13, 0x7f08014c

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-virtual {v10}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->isWhiteBg()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getBackgroundColorValue(Z)I

    move-result v0

    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v10, v0, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setContentBgColor(IZ)V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "android:id/search_button"

    invoke-virtual {v10, v11, v12, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "android:id/search_voice_btn"

    invoke-virtual {v10, v11, v12, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "android:id/search_close_btn"

    invoke-virtual {v10, v11, v12, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    const v11, 0x7f0e0032

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SearchView;

    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/4 v10, 0x0

    invoke-direct {v1, v0, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v7}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    invoke-virtual {v7}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setMaxWidth(I)V

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setMaxHeight(I)V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_5
    return-void
.end method

.method public clearSearchResult()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->showAllListView()V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->isSearchFieldFocused()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v3, p0, v4, v5, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->focusSearchField()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/BaseContainerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    return v3

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemsForHideApps(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    if-nez v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getPickerMode()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mPickerMode:I

    return v0
.end method

.method public getSelectedItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCheckedItem(Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newAllAppsSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;
    .locals 2

    new-instance v0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public notifyAppsListChanged()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    const-string v1, "notifyAppsListChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->initAppPositionInfoMap()V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->notifyDataSetChanged()V

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->checkHiddenItem()V

    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSelectionCount()V

    return-void
.end method

.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSearchBarBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->onFinishInflate()V

    new-instance v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$1;-><init>(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)V

    const v1, 0x7f0e0025

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v1, 0x7f0e0022

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    const v1, 0x7f0e0023

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    const v2, 0x7f020092

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    const v1, 0x7f0e0024

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    new-instance v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$2;-><init>(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0e0026

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    return-void
.end method

.method public onGalaxyAppsSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->setSearchText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mQueryKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setSearchResultText(I)V

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->showSearchListView()V

    :cond_2
    return-void
.end method

.method public onToggleItem(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSelectionCount()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->onVoiceSearch(Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getListViewForAllApps()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iput-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    iput-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->resetMap()V

    iput v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setAppsPickerViewTop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setAppsPickerViewTop(Z)V

    :cond_0
    return-void
.end method

.method public setParentMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setParentMode(Z)V

    :cond_0
    return-void
.end method

.method public setPickerMode(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iput p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mPickerMode:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setScrollIndexer()V
    .locals 13

    const/4 v12, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "&"

    iget-object v9, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v9}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAppsMapSize()I

    move-result v1

    if-lez v1, :cond_1

    const-string v7, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v9, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v9, v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getRowItems(I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v3, v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->getInstance()Lcom/android/launcher3/util/locale/LocaleUtils;

    move-result-object v9

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/util/locale/LocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v4, v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v4, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v9, v0, v5}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setScrollIndexer(Ljava/util/List;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSearchBarController(Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expected search bar controller to only be set once"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1, v2, p0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->initialize(Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setHasSearchBar()V

    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getSearchBarEditView()Landroid/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method
