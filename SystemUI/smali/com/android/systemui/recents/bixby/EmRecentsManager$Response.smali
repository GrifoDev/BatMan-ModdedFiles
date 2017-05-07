.class final enum Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
.super Ljava/lang/Enum;
.source "EmRecentsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/bixby/EmRecentsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

.field public static final enum FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

.field public static final enum NO_RESPONSE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

.field public static final enum SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    new-instance v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    const-string/jumbo v1, "FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    new-instance v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    const-string/jumbo v1, "NO_RESPONSE"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->NO_RESPONSE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->NO_RESPONSE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->$VALUES:[Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 1

    const-class v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->$VALUES:[Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v0
.end method
