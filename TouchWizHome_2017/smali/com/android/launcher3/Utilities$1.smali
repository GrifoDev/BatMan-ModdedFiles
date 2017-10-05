.class final Lcom/android/launcher3/Utilities$1;
.super Ljava/lang/Object;
.source "Utilities.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mToast:Landroid/widget/Toast;

.field final synthetic val$maxSize:I


# direct methods
.method constructor <init>(ILandroid/widget/Toast;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/Utilities$1;->val$maxSize:I

    iput-object p2, p0, Lcom/android/launcher3/Utilities$1;->val$mToast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    iget v5, p0, Lcom/android/launcher3/Utilities$1;->val$maxSize:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v6

    sub-int v7, p6, p5

    sub-int/2addr v6, v7

    sub-int v4, v5, v6

    if-gtz v4, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/Utilities$1;->val$mToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const-string v5, ""

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    sub-int v5, p3, p2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/Utilities$1;->val$mToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    add-int v1, p2, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/android/launcher3/Utilities$1;->val$maxSize:I

    add-int/lit8 v5, v5, -0x1

    if-ne p5, v5, :cond_2

    iget v5, p0, Lcom/android/launcher3/Utilities$1;->val$maxSize:I

    if-ne p6, v5, :cond_2

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0

    :cond_2
    const-string v5, ""

    goto :goto_0

    :cond_3
    sub-int v5, p3, p2

    if-lt v4, v5, :cond_4

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    sub-int v5, p3, p2

    if-ge v4, v5, :cond_8

    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/Utilities$1;->val$mToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    add-int v2, p2, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->isEmoji(I)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v2, v2, -0x1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->isEnclosedAlphanumSuppplement(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, ""

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, ""

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_0
.end method
