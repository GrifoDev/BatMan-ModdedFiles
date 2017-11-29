.class public Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
.super Ljava/lang/Object;
.source "FavoritesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/FavoritesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppOrderModify"
.end annotation


# static fields
.field public static final CREATE_APP:I = 0x3

.field public static final CREATE_FOLDER:I = 0x0

.field public static final DELETE_ITEM:I = 0x5

.field public static final RESET_RESTORED:I = 0x7

.field public static final UPDATE_APP:I = 0x4

.field public static final UPDATE_COLOR:I = 0x6

.field public static final UPDATE_FOLDER:I = 0x1

.field public static final UPDATE_TITLE:I = 0x2


# instance fields
.field public action:I

.field public final color:I

.field public component:Landroid/content/ComponentName;

.field public container:J

.field public final hidden:Z

.field public id:J

.field public itemtype:I

.field public modified:J

.field public rank:I

.field public screen:J

.field public status:I

.field public title:Ljava/lang/CharSequence;

.field public user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->hidden:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->color:I

    return-void
.end method
