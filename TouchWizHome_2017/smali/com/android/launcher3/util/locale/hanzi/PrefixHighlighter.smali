.class public Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;
.super Ljava/lang/Object;
.source "PrefixHighlighter.java"


# instance fields
.field private mImpl:Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;

.field private final mPrefixHighlightColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;->mPrefixHighlightColor:I

    new-instance v0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;

    invoke-direct {v0}, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;->mImpl:Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;->mImpl:Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;

    iget v1, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;->mPrefixHighlightColor:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;->doApply(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
