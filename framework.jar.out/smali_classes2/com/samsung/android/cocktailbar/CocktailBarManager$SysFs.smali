.class public Lcom/samsung/android/cocktailbar/CocktailBarManager$SysFs;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SysFs"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final SYSFS_DEADZONE_ALL:I = 0x3

.field public static final SYSFS_DEADZONE_CLEAR:I = 0x6

.field public static final SYSFS_DEADZONE_LEFT:I = 0x1

.field public static final SYSFS_DEADZONE_OFF:I = 0x0

.field public static final SYSFS_DEADZONE_RIGHT:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
