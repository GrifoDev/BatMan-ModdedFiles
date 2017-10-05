.class Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;
.super Ljava/lang/Object;
.source "FavoritesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/FavoritesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderDbInfo"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field id:Ljava/lang/Long;

.field rank:I

.field screen:I

.field final synthetic this$0:Lcom/android/launcher3/common/model/FavoritesProvider;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/FavoritesProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;->this$0:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
