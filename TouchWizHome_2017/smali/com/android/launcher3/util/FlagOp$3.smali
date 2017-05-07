.class final Lcom/android/launcher3/util/FlagOp$3;
.super Lcom/android/launcher3/util/FlagOp;
.source "FlagOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$flag:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/android/launcher3/util/FlagOp$3;->val$flag:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/FlagOp;-><init>(Lcom/android/launcher3/util/FlagOp$1;)V

    return-void
.end method


# virtual methods
.method public apply(I)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/util/FlagOp$3;->val$flag:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    return v0
.end method
