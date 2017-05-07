.class public final enum Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
.super Ljava/lang/Enum;
.source "TrayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/tray/TrayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrayLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

.field public static final enum Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

.field public static final enum Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    const-string v1, "Overground"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    new-instance v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    const-string v1, "Underground"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->$VALUES:[Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .locals 1

    const-class v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .locals 1

    sget-object v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->$VALUES:[Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-virtual {v0}, [Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    return-object v0
.end method
