.class final Lcom/android/launcher3/allapps/view/SimpleSectionMergeAlgorithm;
.super Ljava/lang/Object;
.source "AppsSearchContainerView.java"

# interfaces
.implements Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;


# instance fields
.field private mAsciiEncoder:Ljava/nio/charset/CharsetEncoder;

.field private mMaxAllowableMerges:I

.field private mMinAppsPerRow:I

.field private mMinRowsInMergedSection:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/allapps/view/SimpleSectionMergeAlgorithm;->mMinAppsPerRow:I

    iput p2, p0, Lcom/android/launcher3/allapps/view/SimpleSectionMergeAlgorithm;->mMinRowsInMergedSection:I

    iput p3, p0, Lcom/android/launcher3/allapps/view/SimpleSectionMergeAlgorithm;->mMaxAllowableMerges:I

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/SimpleSectionMergeAlgorithm;->mAsciiEncoder:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method


# virtual methods
.method public continueMerging(Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;III)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v5, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-eq v5, v3, :cond_0

    :goto_0
    return v4

    :cond_0
    div-int v2, p3, p4

    rem-int v0, p3, p4

    const/4 v1, 0x0

    iget-object v5, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v5, :cond_1

    iget-object v5, p2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/SimpleSectionMergeAlgorithm;->mAsciiEncoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v6, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/SimpleSectionMergeAlgorithm;->mAsciiEncoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v7, p2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v7, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eq v5, v6, :cond_2

    move v1, v3

    :cond_1
    :goto_1
    if-lez v0, :cond_3

    iget v5, p0, Lcom/android/launcher3/allapps/view/SimpleSectionMergeAlgorithm;->mMinAppsPerRow:I

    if-ge v0, v5, :cond_3

    iget v5, p0, Lcom/android/launcher3/allapps/view/SimpleSectionMergeAlgorithm;->mMinRowsInMergedSection:I

    if-ge v2, v5, :cond_3

    iget v5, p0, Lcom/android/launcher3/allapps/view/SimpleSectionMergeAlgorithm;->mMaxAllowableMerges:I

    if-ge p5, v5, :cond_3

    if-nez v1, :cond_3

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method
