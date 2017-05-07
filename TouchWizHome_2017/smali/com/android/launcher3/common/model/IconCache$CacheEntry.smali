.class Lcom/android/launcher3/common/model/IconCache$CacheEntry;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheEntry"
.end annotation


# instance fields
.field public contentDescription:Ljava/lang/CharSequence;

.field public icon:Landroid/graphics/Bitmap;

.field public isLowResIcon:Z

.field public title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/common/model/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method
