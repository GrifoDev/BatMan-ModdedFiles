.class Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;
.super Ljava/lang/Object;
.source "AppsPickerAlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PositionInfo"
.end annotation


# instance fields
.field public mEnd:I

.field public mStart:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;->mStart:I

    iput p2, p0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList$PositionInfo;->mEnd:I

    return-void
.end method
