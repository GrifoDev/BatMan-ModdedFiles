.class Lcom/android/launcher3/LauncherAppState$SingletonHolder;
.super Ljava/lang/Object;
.source "LauncherAppState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sLauncherAppStateInstance:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/LauncherAppState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherAppState;-><init>(Lcom/android/launcher3/LauncherAppState$1;)V

    sput-object v0, Lcom/android/launcher3/LauncherAppState$SingletonHolder;->sLauncherAppStateInstance:Lcom/android/launcher3/LauncherAppState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/launcher3/LauncherAppState;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherAppState$SingletonHolder;->sLauncherAppStateInstance:Lcom/android/launcher3/LauncherAppState;

    return-object v0
.end method
