.class final Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$RawItemInfo;
.super Ljava/lang/Object;
.source "AppsAlphabetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RawItemInfo"
.end annotation


# instance fields
.field rank:I

.field screenId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$RawItemInfo;->screenId:I

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$RawItemInfo;->rank:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter$RawItemInfo;-><init>()V

    return-void
.end method
