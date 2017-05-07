.class final enum Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;
.super Ljava/lang/Enum;
.source "ClearCoverNotificationWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

.field public static final enum EXPAND:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

.field public static final enum NOTIFICATION:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    const-string/jumbo v1, "NOTIFICATION"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->NOTIFICATION:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    new-instance v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    const-string/jumbo v1, "EXPAND"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->EXPAND:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    sget-object v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->NOTIFICATION:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->EXPAND:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->$VALUES:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;
    .locals 1

    const-class v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->$VALUES:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    return-object v0
.end method
