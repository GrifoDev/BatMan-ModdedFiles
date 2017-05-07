.class public Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;
.super Lcom/android/launcher3/common/compat/BaseAlphabeticIndex;
.source "AlphabeticIndexCompat.java"


# static fields
.field private static final MID_DOT:Ljava/lang/String; = "\u2219"


# instance fields
.field private mAddLabelsMethod:Ljava/lang/reflect/Method;

.field private mAlphabeticIndex:Ljava/lang/Object;

.field private mDefaultMiscLabel:Ljava/lang/String;

.field private mGetBucketIndexMethod:Ljava/lang/reflect/Method;

.field private mGetBucketLabelMethod:Ljava/lang/reflect/Method;

.field private mHasValidAlphabeticIndex:Z

.field private mSetMaxLabelCountMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/common/compat/BaseAlphabeticIndex;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    const-string v4, "libcore.icu.AlphabeticIndex"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/Locale;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const-string v4, "addLabels"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/util/Locale;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mAddLabelsMethod:Ljava/lang/reflect/Method;

    const-string v4, "setMaxLabelCount"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mSetMaxLabelCountMethod:Ljava/lang/reflect/Method;

    const-string v4, "getBucketIndex"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mGetBucketIndexMethod:Ljava/lang/reflect/Method;

    const-string v4, "getBucketLabel"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mGetBucketLabelMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mAddLabelsMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "\u4ed6"

    iput-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    :goto_2
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_3
    iput-boolean v9, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    goto :goto_2

    :cond_1
    :try_start_3
    const-string v4, "\u2219"

    iput-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_3

    :catch_4
    move-exception v3

    goto :goto_3

    :catch_5
    move-exception v3

    goto :goto_3
.end method


# virtual methods
.method public computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->getBucketIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "#"

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "\u2219"

    goto :goto_0
.end method

.method protected getBucketIndex(Ljava/lang/String;)I
    .locals 5

    iget-boolean v1, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mGetBucketIndexMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/compat/BaseAlphabeticIndex;->getBucketIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method protected getBucketLabel(I)Ljava/lang/String;
    .locals 6

    iget-boolean v1, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mGetBucketLabelMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/compat/BaseAlphabeticIndex;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setMaxLabelCount(I)V
    .locals 6

    iget-boolean v1, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mSetMaxLabelCountMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/compat/BaseAlphabeticIndex;->setMaxLabelCount(I)V

    goto :goto_0
.end method
