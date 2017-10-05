.class Lcom/android/launcher3/util/logging/SALogUtils$GSW;
.super Ljava/lang/Object;
.source "SALogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/logging/SALogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GSW"
.end annotation


# static fields
.field private static final PREFERECES_ENTER_GSW_COUNT:Ljava/lang/String; = "enter_gsw_count"

.field static final prefName:Ljava/lang/String;


# instance fields
.field location:Ljava/lang/String;

.field page:I

.field size:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->prefName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->size:Ljava/lang/String;

    iput p2, p0, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->page:I

    iput-object p3, p0, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->location:Ljava/lang/String;

    return-void
.end method

.method static getEnterCountPref(Landroid/content/Context;)I
    .locals 4

    const/4 v3, 0x0

    sget-object v2, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->prefName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "enter_gsw_count"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static insertEnterSearchCount(Landroid/content/Context;Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->setEnterCountPref(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->getEnterCountPref(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    return-void
.end method

.method static setEnterCountPref(Landroid/content/Context;)V
    .locals 4

    sget-object v2, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->prefName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "enter_gsw_count"

    invoke-static {p0}, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->getEnterCountPref(Landroid/content/Context;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
