.class public final enum Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;
.super Ljava/lang/Enum;
.source "SSConfigEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ss/data/SSConfigEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SSCONFIG_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

.field public static final enum GET_CALL_BARRING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

.field public static final enum GET_CALL_FORWARDING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

.field public static final enum GET_CALL_WAITING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

.field public static final enum GET_SIMSERVS_DOC:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

.field public static final enum NOT_INITIALIZED:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

.field public static final enum SET_CALL_BARRING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

.field public static final enum SET_CALL_FORWARDING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

.field public static final enum SET_CALL_WAITING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

.field public static final enum XCAP_PDN_STATE:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    const-string/jumbo v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->NOT_INITIALIZED:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    new-instance v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    const-string/jumbo v1, "SET_CALL_WAITING"

    invoke-direct {v0, v1, v4}, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->SET_CALL_WAITING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    new-instance v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    const-string/jumbo v1, "GET_CALL_WAITING"

    invoke-direct {v0, v1, v5}, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->GET_CALL_WAITING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    new-instance v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    const-string/jumbo v1, "SET_CALL_FORWARDING"

    invoke-direct {v0, v1, v6}, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->SET_CALL_FORWARDING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    new-instance v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    const-string/jumbo v1, "GET_CALL_FORWARDING"

    invoke-direct {v0, v1, v7}, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->GET_CALL_FORWARDING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    new-instance v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    const-string/jumbo v1, "SET_CALL_BARRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->SET_CALL_BARRING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    new-instance v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    const-string/jumbo v1, "GET_CALL_BARRING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->GET_CALL_BARRING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    new-instance v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    const-string/jumbo v1, "XCAP_PDN_STATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->XCAP_PDN_STATE:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    new-instance v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    const-string/jumbo v1, "GET_SIMSERVS_DOC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->GET_SIMSERVS_DOC:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    sget-object v1, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->NOT_INITIALIZED:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->SET_CALL_WAITING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->GET_CALL_WAITING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->SET_CALL_FORWARDING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->GET_CALL_FORWARDING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->SET_CALL_BARRING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->GET_CALL_BARRING:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->XCAP_PDN_STATE:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->GET_SIMSERVS_DOC:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->$VALUES:[Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;
    .locals 1

    const-class v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;
    .locals 1

    sget-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->$VALUES:[Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    return-object v0
.end method
