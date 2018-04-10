.class Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;
.super Ljava/lang/Object;
.source "ElementSchemePointer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/xpointer/ElementSchemePointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# static fields
.field private static final CHARTYPE_DIGIT:B = 0x5t

.field private static final CHARTYPE_INVALID:B = 0x0t

.field private static final CHARTYPE_LETTER:B = 0x6t

.field private static final CHARTYPE_MINUS:B = 0x2t

.field private static final CHARTYPE_NONASCII:B = 0x8t

.field private static final CHARTYPE_OTHER:B = 0x1t

.field private static final CHARTYPE_PERIOD:B = 0x3t

.field private static final CHARTYPE_SLASH:B = 0x4t

.field private static final CHARTYPE_UNDERSCORE:B = 0x7t


# instance fields
.field private final fASCIICharMap:[B

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x6

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xd

    aput-byte v4, v0, v1

    const/16 v1, 0x20

    aput-byte v4, v0, v1

    const/16 v1, 0x21

    aput-byte v4, v0, v1

    const/16 v1, 0x22

    aput-byte v4, v0, v1

    const/16 v1, 0x23

    aput-byte v4, v0, v1

    const/16 v1, 0x24

    aput-byte v4, v0, v1

    const/16 v1, 0x25

    aput-byte v4, v0, v1

    const/16 v1, 0x26

    aput-byte v4, v0, v1

    const/16 v1, 0x27

    aput-byte v4, v0, v1

    const/16 v1, 0x28

    aput-byte v4, v0, v1

    const/16 v1, 0x29

    aput-byte v4, v0, v1

    const/16 v1, 0x2a

    aput-byte v4, v0, v1

    const/16 v1, 0x2b

    aput-byte v4, v0, v1

    const/16 v1, 0x2c

    aput-byte v4, v0, v1

    const/16 v1, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x2f

    aput-byte v1, v0, v2

    const/16 v1, 0x30

    aput-byte v5, v0, v1

    const/16 v1, 0x31

    aput-byte v5, v0, v1

    const/16 v1, 0x32

    aput-byte v5, v0, v1

    const/16 v1, 0x33

    aput-byte v5, v0, v1

    const/16 v1, 0x34

    aput-byte v5, v0, v1

    const/16 v1, 0x35

    aput-byte v5, v0, v1

    const/16 v1, 0x36

    aput-byte v5, v0, v1

    const/16 v1, 0x37

    aput-byte v5, v0, v1

    const/16 v1, 0x38

    aput-byte v5, v0, v1

    const/16 v1, 0x39

    aput-byte v5, v0, v1

    const/16 v1, 0x3a

    aput-byte v4, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    aput-byte v4, v0, v1

    const/16 v1, 0x3d

    aput-byte v4, v0, v1

    const/16 v1, 0x3e

    aput-byte v4, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    aput-byte v4, v0, v1

    const/16 v1, 0x41

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v3, v0, v1

    const/16 v1, 0x43

    aput-byte v3, v0, v1

    const/16 v1, 0x44

    aput-byte v3, v0, v1

    const/16 v1, 0x45

    aput-byte v3, v0, v1

    const/16 v1, 0x46

    aput-byte v3, v0, v1

    const/16 v1, 0x47

    aput-byte v3, v0, v1

    const/16 v1, 0x48

    aput-byte v3, v0, v1

    const/16 v1, 0x49

    aput-byte v3, v0, v1

    const/16 v1, 0x4a

    aput-byte v3, v0, v1

    const/16 v1, 0x4b

    aput-byte v3, v0, v1

    const/16 v1, 0x4c

    aput-byte v3, v0, v1

    const/16 v1, 0x4d

    aput-byte v3, v0, v1

    const/16 v1, 0x4e

    aput-byte v3, v0, v1

    const/16 v1, 0x4f

    aput-byte v3, v0, v1

    const/16 v1, 0x50

    aput-byte v3, v0, v1

    const/16 v1, 0x51

    aput-byte v3, v0, v1

    const/16 v1, 0x52

    aput-byte v3, v0, v1

    const/16 v1, 0x53

    aput-byte v3, v0, v1

    const/16 v1, 0x54

    aput-byte v3, v0, v1

    const/16 v1, 0x55

    aput-byte v3, v0, v1

    const/16 v1, 0x56

    aput-byte v3, v0, v1

    const/16 v1, 0x57

    aput-byte v3, v0, v1

    const/16 v1, 0x58

    aput-byte v3, v0, v1

    const/16 v1, 0x59

    aput-byte v3, v0, v1

    const/16 v1, 0x5a

    aput-byte v3, v0, v1

    const/16 v1, 0x5b

    aput-byte v4, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    aput-byte v4, v0, v1

    const/16 v1, 0x5e

    aput-byte v4, v0, v1

    const/16 v1, 0x5f

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    aput-byte v4, v0, v1

    const/16 v1, 0x61

    aput-byte v3, v0, v1

    const/16 v1, 0x62

    aput-byte v3, v0, v1

    const/16 v1, 0x63

    aput-byte v3, v0, v1

    const/16 v1, 0x64

    aput-byte v3, v0, v1

    const/16 v1, 0x65

    aput-byte v3, v0, v1

    const/16 v1, 0x66

    aput-byte v3, v0, v1

    const/16 v1, 0x67

    aput-byte v3, v0, v1

    const/16 v1, 0x68

    aput-byte v3, v0, v1

    const/16 v1, 0x69

    aput-byte v3, v0, v1

    const/16 v1, 0x6a

    aput-byte v3, v0, v1

    const/16 v1, 0x6b

    aput-byte v3, v0, v1

    const/16 v1, 0x6c

    aput-byte v3, v0, v1

    const/16 v1, 0x6d

    aput-byte v3, v0, v1

    const/16 v1, 0x6e

    aput-byte v3, v0, v1

    const/16 v1, 0x6f

    aput-byte v3, v0, v1

    const/16 v1, 0x70

    aput-byte v3, v0, v1

    const/16 v1, 0x71

    aput-byte v3, v0, v1

    const/16 v1, 0x72

    aput-byte v3, v0, v1

    const/16 v1, 0x73

    aput-byte v3, v0, v1

    const/16 v1, 0x74

    aput-byte v3, v0, v1

    const/16 v1, 0x75

    aput-byte v3, v0, v1

    const/16 v1, 0x76

    aput-byte v3, v0, v1

    const/16 v1, 0x77

    aput-byte v3, v0, v1

    const/16 v1, 0x78

    aput-byte v3, v0, v1

    const/16 v1, 0x79

    aput-byte v3, v0, v1

    const/16 v1, 0x7a

    aput-byte v3, v0, v1

    const/16 v1, 0x7b

    aput-byte v4, v0, v1

    const/16 v1, 0x7c

    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->fASCIICharMap:[B

    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;-><init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v3, 0x0

    :goto_0
    if-eq p4, p5, :cond_7

    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x80

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->fASCIICharMap:[B

    aget-byte v1, v5, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v4, p4

    invoke-direct {p0, p3, p5, p4}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result p4

    if-eq p4, v4, :cond_5

    if-lt p4, p5, :cond_6

    const/4 v0, -0x1

    :goto_2
    invoke-virtual {p3, v4, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, p2, v5}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V

    invoke-static {p2, v3}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$1(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_1
    add-int/lit8 p4, p4, 0x1

    if-eq p4, p5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {p0, p2, v5}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V

    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    :goto_3
    const/16 v5, 0x30

    if-ge v0, v5, :cond_3

    :cond_1
    if-eqz v2, :cond_4

    invoke-static {p2, v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    return v5

    :cond_3
    const/16 v5, 0x39

    if-gt v0, v5, :cond_1

    mul-int/lit8 v5, v2, 0xa

    add-int/lit8 v6, v0, -0x30

    add-int v2, v5, v6

    add-int/lit8 p4, p4, 0x1

    if-eq p4, p5, :cond_1

    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    const-string/jumbo v6, "InvalidChildSequenceCharacter"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Character;

    int-to-char v9, v0

    invoke-direct {v8, v9}, Ljava/lang/Character;-><init>(C)V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    return v5

    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    const-string/jumbo v6, "InvalidNCNameInElementSchemeData"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    return v5

    :cond_6
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    :cond_7
    const/4 v5, 0x1

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private scanNCName(Ljava/lang/String;II)I
    .locals 6

    const/16 v5, 0x80

    const/4 v4, 0x7

    const/4 v3, 0x6

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v5, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->fASCIICharMap:[B

    aget-byte v1, v2, v0

    if-ne v1, v3, :cond_3

    :cond_0
    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p2, :cond_1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v5, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->fASCIICharMap:[B

    aget-byte v1, v2, v0

    if-eq v1, v3, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-eq v1, v4, :cond_0

    :cond_1
    return p3

    :cond_2
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v2

    if-nez v2, :cond_0

    return p3

    :cond_3
    if-eq v1, v4, :cond_0

    return p3

    :cond_4
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-static {p1, p2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V

    return-void
.end method
