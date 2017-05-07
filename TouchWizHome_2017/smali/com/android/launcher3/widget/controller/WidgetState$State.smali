.class public final enum Lcom/android/launcher3/widget/controller/WidgetState$State;
.super Ljava/lang/Enum;
.source "WidgetState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/controller/WidgetState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher3/widget/controller/WidgetState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/widget/controller/WidgetState$State;

.field public static final enum FOLDER:Lcom/android/launcher3/widget/controller/WidgetState$State;

.field public static final enum NONE:Lcom/android/launcher3/widget/controller/WidgetState$State;

.field public static final enum NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

.field public static final enum SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

.field public static final enum UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetState$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/widget/controller/WidgetState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NONE:Lcom/android/launcher3/widget/controller/WidgetState$State;

    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetState$State;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/widget/controller/WidgetState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetState$State;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/widget/controller/WidgetState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetState$State;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/widget/controller/WidgetState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetState$State;

    const-string v1, "FOLDER"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/widget/controller/WidgetState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->FOLDER:Lcom/android/launcher3/widget/controller/WidgetState$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/launcher3/widget/controller/WidgetState$State;

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->NONE:Lcom/android/launcher3/widget/controller/WidgetState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->FOLDER:Lcom/android/launcher3/widget/controller/WidgetState$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->$VALUES:[Lcom/android/launcher3/widget/controller/WidgetState$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/widget/controller/WidgetState$State;
    .locals 1

    const-class v0, Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/controller/WidgetState$State;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/widget/controller/WidgetState$State;
    .locals 1

    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->$VALUES:[Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-virtual {v0}, [Lcom/android/launcher3/widget/controller/WidgetState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/widget/controller/WidgetState$State;

    return-object v0
.end method
