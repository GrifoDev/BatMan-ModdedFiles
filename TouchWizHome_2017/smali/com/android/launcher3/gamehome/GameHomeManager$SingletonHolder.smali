.class Lcom/android/launcher3/gamehome/GameHomeManager$SingletonHolder;
.super Ljava/lang/Object;
.source "GameHomeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/gamehome/GameHomeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sGameHomeManager:Lcom/android/launcher3/gamehome/GameHomeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/gamehome/GameHomeManager;

    invoke-direct {v0}, Lcom/android/launcher3/gamehome/GameHomeManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/gamehome/GameHomeManager$SingletonHolder;->sGameHomeManager:Lcom/android/launcher3/gamehome/GameHomeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/launcher3/gamehome/GameHomeManager;
    .locals 1

    sget-object v0, Lcom/android/launcher3/gamehome/GameHomeManager$SingletonHolder;->sGameHomeManager:Lcom/android/launcher3/gamehome/GameHomeManager;

    return-object v0
.end method
