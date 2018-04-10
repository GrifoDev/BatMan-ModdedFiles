.class public Lcom/samsung/android/friends/cmd/ShellCommandImpl;
.super Landroid/os/ShellCommand;
.source "ShellCommandImpl.java"

# interfaces
.implements Lcom/samsung/android/friends/action/ActionExecutable;


# static fields
.field private static final sHelpStr:[Ljava/lang/String;


# instance fields
.field private final mCmdAccessory:Lcom/samsung/android/friends/cmd/AccessoryCmd;

.field private final mCommands:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOut:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Friends v%d commands:"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "  help"

    aput-object v1, v0, v5

    const-string/jumbo v1, "    Print this help text\n"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "  add <SERVICE_TYPE> <SERVICE_ID> <SERIAL_NUMBER>"

    aput-object v1, v0, v6

    const-string/jumbo v1, "  add-raw <DATA_BYTES_STRING> <EXTRA_DATA_BYTES_STRING>"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "    add a fake accessory info.\n"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "  remove <ACCESSORY_ID>"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "    remove a fake accessory info.\n"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "  clear"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "    clear all fake accessory info.\n"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "  attach <ACCESSORY_ID>"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "    send the event of attached fake accessory\n"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "  detach <ACCESSORY_ID>"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "    send the event of detached fake accessory\n"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "  discover <ACCESSORY_ID>,"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "    send the event of discovered fake accessory\n"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "  status"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "    show the status of fake accessory\n"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->sHelpStr:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/friends/action/ActionDispatcher;Lcom/samsung/android/friends/executable/ExecAccessoryMgr;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    new-instance v0, Lcom/samsung/android/friends/cmd/AccessoryCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/friends/cmd/AccessoryCmd;-><init>(Landroid/content/Context;Lcom/samsung/android/friends/action/ActionDispatcher;Lcom/samsung/android/friends/executable/ExecAccessoryMgr;)V

    iput-object v0, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCmdAccessory:Lcom/samsung/android/friends/cmd/AccessoryCmd;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCommands:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCommands:Landroid/util/ArrayMap;

    const-string/jumbo v1, "add"

    new-instance v2, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo;

    invoke-direct {v2, p0}, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCommands:Landroid/util/ArrayMap;

    const-string/jumbo v1, "add-raw"

    new-instance v2, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCommands:Landroid/util/ArrayMap;

    const-string/jumbo v1, "remove"

    new-instance v2, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCommands:Landroid/util/ArrayMap;

    const-string/jumbo v1, "clear"

    new-instance v2, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCommands:Landroid/util/ArrayMap;

    const-string/jumbo v1, "attach"

    new-instance v2, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCommands:Landroid/util/ArrayMap;

    const-string/jumbo v1, "detach"

    new-instance v2, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo$5;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCommands:Landroid/util/ArrayMap;

    const-string/jumbo v1, "discover"

    new-instance v2, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo$6;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCommands:Landroid/util/ArrayMap;

    const-string/jumbo v1, "status"

    new-instance v2, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/friends/cmd/-$Lambda$xe43dcjJ-LB_HUCTsHsJ9ud-Rgo$7;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private commandAdd()Z
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->convertStrToInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->convertStrToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eq v2, v4, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v4, "Error! Wrong argument"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3

    :cond_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCmdAccessory:Lcom/samsung/android/friends/cmd/AccessoryCmd;

    iget-object v4, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->add(Ljava/io/PrintWriter;IILjava/lang/String;)Z

    move-result v3

    return v3
.end method

.method private commandAddRaw()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->convertHexStrToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->convertHexStrToBytes(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v3, "Error! Wrong argument"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCmdAccessory:Lcom/samsung/android/friends/cmd/AccessoryCmd;

    iget-object v3, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->add(Ljava/io/PrintWriter;[B[B)Z

    move-result v2

    return v2
.end method

.method private commandAttach(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->getAccessoryNum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCmdAccessory:Lcom/samsung/android/friends/cmd/AccessoryCmd;

    iget-object v2, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->accessoryStateChanged(Ljava/io/PrintWriter;IZ)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private commandClear()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCmdAccessory:Lcom/samsung/android/friends/cmd/AccessoryCmd;

    iget-object v1, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->clearAll(Ljava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method

.method private commandDiscover()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->getAccessoryNum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCmdAccessory:Lcom/samsung/android/friends/cmd/AccessoryCmd;

    iget-object v2, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->accessoryDiscovered(Ljava/io/PrintWriter;I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private commandRemove()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->getAccessoryNum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCmdAccessory:Lcom/samsung/android/friends/cmd/AccessoryCmd;

    iget-object v2, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->remove(Ljava/io/PrintWriter;I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private commandStatus()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCmdAccessory:Lcom/samsung/android/friends/cmd/AccessoryCmd;

    iget-object v1, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->showStatus(Ljava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method

.method private static convertHexStrToBytes(Ljava/lang/String;)[B
    .locals 7

    const/4 v4, 0x0

    const/16 v6, 0x10

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-object v4

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static convertReturnType(Z)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static convertStrToInt(Ljava/lang/String;)I
    .locals 5

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v4

    :cond_1
    :try_start_0
    const-string/jumbo v2, "0x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    return v4
.end method

.method private getAccessoryNum()I
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->convertStrToInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v2, "Error! No accessory id"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_0
    return v0
.end method


# virtual methods
.method synthetic -com_samsung_android_friends_cmd_ShellCommandImpl-mthref-0()Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->commandAdd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic -com_samsung_android_friends_cmd_ShellCommandImpl-mthref-1()Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->commandAddRaw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic -com_samsung_android_friends_cmd_ShellCommandImpl-mthref-2()Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->commandRemove()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic -com_samsung_android_friends_cmd_ShellCommandImpl-mthref-3()Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->commandClear()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic -com_samsung_android_friends_cmd_ShellCommandImpl-mthref-4()Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->commandDiscover()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic -com_samsung_android_friends_cmd_ShellCommandImpl-mthref-5()Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->commandStatus()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCmdAccessory:Lcom/samsung/android/friends/cmd/AccessoryCmd;

    invoke-virtual {v1}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->getLastVerificationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "paramStr0"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_samsung_android_friends_cmd_ShellCommandImpl_2293()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->commandAttach(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_samsung_android_friends_cmd_ShellCommandImpl_2353()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->commandAttach(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mOut:Ljava/io/PrintWriter;

    const/4 v1, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mCommands:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Supplier;

    :goto_0
    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->convertReturnType(Z)I

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mOut:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onHelp()V
    .locals 5

    sget-object v2, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->sHelpStr:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/samsung/android/friends/cmd/ShellCommandImpl;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
