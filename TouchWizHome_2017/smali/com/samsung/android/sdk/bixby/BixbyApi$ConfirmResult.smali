.class public final enum Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;
.super Ljava/lang/Enum;
.source "BixbyApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfirmResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

.field public static final enum CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

.field public static final enum NO:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

.field public static final enum OTHER:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

.field public static final enum YES:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    const-string v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->YES:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->NO:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->OTHER:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->YES:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->NO:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->OTHER:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

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

.method public static toEnum(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "yes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "no"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "cancel"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "other"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->YES:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->NO:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->OTHER:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x5185d186 -> :sswitch_2
        0xdc1 -> :sswitch_1
        0x1d2e7 -> :sswitch_0
        0x6527f10 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    return-object v0
.end method
