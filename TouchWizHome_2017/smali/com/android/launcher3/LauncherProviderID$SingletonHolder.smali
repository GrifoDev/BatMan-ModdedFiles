.class Lcom/android/launcher3/LauncherProviderID$SingletonHolder;
.super Ljava/lang/Object;
.source "LauncherProviderID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherProviderID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/LauncherProviderID;

    invoke-direct {v0}, Lcom/android/launcher3/LauncherProviderID;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherProviderID$SingletonHolder;->sLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/launcher3/LauncherProviderID;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherProviderID$SingletonHolder;->sLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    return-object v0
.end method
