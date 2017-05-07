.class Lcom/android/launcher3/theme/OpenThemeManager$SingletonHolder;
.super Ljava/lang/Object;
.source "OpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/theme/OpenThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sOpenThemeMgr:Lcom/android/launcher3/theme/OpenThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/theme/OpenThemeManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/theme/OpenThemeManager;-><init>(Lcom/android/launcher3/theme/OpenThemeManager$1;)V

    sput-object v0, Lcom/android/launcher3/theme/OpenThemeManager$SingletonHolder;->sOpenThemeMgr:Lcom/android/launcher3/theme/OpenThemeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/launcher3/theme/OpenThemeManager;
    .locals 1

    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$SingletonHolder;->sOpenThemeMgr:Lcom/android/launcher3/theme/OpenThemeManager;

    return-object v0
.end method
